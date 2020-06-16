//
//  ocFile.m
//  proUseSnappy
//
//  Created by Shuo Xiao on 2020/6/14.
//  Copyright © 2020 exportKeynote. All rights reserved.
//


#include "ocFile.h"
#import "snappy.h"

@implementation NSData (IWSnappy)

- (NSData *)snappyDecompressedData
{
    const char *bytes = (const char *)self.bytes;
    size_t compressedLength = self.length;
    size_t uncompressedLength = 0;
    
//    if (!snappy::IsValidCompressedBuffer(bytes, compressedLength) ||
//        !snappy::GetUncompressedLength(bytes, compressedLength, &uncompressedLength)) {
//        return nil;
//    }
    
    if (!snappy::IsValidCompressedBuffer(bytes, compressedLength)) {
        return nil;
    }
        
    if (!snappy::GetUncompressedLength(bytes, compressedLength, &uncompressedLength)) {
        return nil;
    }
    
    
    NSMutableData *uncompressedData = [NSMutableData dataWithLength:uncompressedLength];
    if (!snappy::RawUncompress(bytes, compressedLength, (char *)uncompressedData.mutableBytes)) {
        return nil;
    }
    
    return uncompressedData;
}


- (NSData *)snappyCompressedData
{
    const char *bytes = (const char *)self.bytes;
    size_t uncompressedLength = self.length;
    size_t compressedLength = snappy::MaxCompressedLength(uncompressedLength);

    NSMutableData *compressedData = [NSMutableData dataWithLength: compressedLength];
    
    snappy::RawCompress(bytes, uncompressedLength, (char *)compressedData.mutableBytes, &compressedLength);
    
    [compressedData setLength:compressedLength];
    
    return compressedData;
    
}

 


- (NSData *)snappyIWADecompressedData
{
    NSMutableArray *decompressedChunks = [NSMutableArray array];
    NSUInteger totalDecompressedLength = 0;
    
    NSUInteger offset = 0;
    NSUInteger length = self.length;
    
    while (offset + 4 < length) {
        // Snappy chunks begin with a zero byte, followed by a 24-bit length in little endian
        uint32_t chunkLength = 0;
        [self getBytes:&chunkLength range:NSMakeRange(offset, 4)];
        offset += 4;
        chunkLength = NSSwapLittleIntToHost(chunkLength);
        
        if ((chunkLength & 0xFF) != 0) {
            // First byte should be 0
            return nil;
        }
        
        chunkLength >>= 8;
        
        if (offset + chunkLength > length) {
            printf("%s: Bad chunk length in snappy stream\n", __PRETTY_FUNCTION__);
            return nil;
        }
        
        NSData *decompressed = [[self subdataWithRange:NSMakeRange(offset, chunkLength)] snappyDecompressedData];
        if (decompressed == nil) {
            printf("%s: Error while decompressing snappy chunk\n", __PRETTY_FUNCTION__);
            return nil;
        }
        
        [decompressedChunks addObject:decompressed];
        totalDecompressedLength += decompressed.length;
        offset += chunkLength;
    }
    
    NSMutableData *combinedData = [NSMutableData dataWithCapacity:totalDecompressedLength];
    
    for (NSData *chunk in decompressedChunks) {
        [combinedData appendData:chunk];
    }
    
    return combinedData;
}

- (NSData *)snappyIWACompressedData {

    size_t uncompressedLength = self.length;
    
    uint32_t chunkLength = 0;
    chunkLength = NSSwapLittleIntToHost(chunkLength);
    chunkLength += uncompressedLength;
    
    chunkLength <<= 8;
    
    NSData *compressed = [self snappyCompressedData];
    size_t compressedLength = snappy::MaxCompressedLength(uncompressedLength);
    NSMutableData *combinedData = [NSMutableData dataWithCapacity:compressed.length + 4];
    
    NSData *headerData = [NSData dataWithBytes:&chunkLength length: sizeof(chunkLength)];
    
    [combinedData appendData:headerData];
    
    [combinedData appendData:compressed];
    
    return combinedData;
}

@end

