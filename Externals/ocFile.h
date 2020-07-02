//
//  ocFile.h
//  proUseSnappy
//
//  Created by Shuo Xiao on 2020/6/14.
//  Copyright © 2020 exportKeynote. All rights reserved.
//

#ifndef ocFile_h
#define ocFile_h

#import <Foundation/Foundation.h>
@interface NSData (IWSnappy)

// Uses raw snappy decompression
- (NSData *)snappyDecompressedData;

// Uses raw snappy Compression
- (NSData *)snappyCompressedData;

// For data in .iwa format, where delimited chunks are snappy compressed with a 4 bytes header.
- (NSData *)snappyIWADecompressedData;

- (NSData *)snappyIWACompressedData;

- (NSString *)decompressedSnappyString;

@end

@interface NSString (Snappy)

- (NSData *)compressedSnappyString;

@end

#endif /* ocFile_h */
