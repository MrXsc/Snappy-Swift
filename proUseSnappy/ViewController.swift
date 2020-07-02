//
//  ViewController.swift
//  proUseSnappy
//
//  Created by Shuo Xiao on 2020/6/10.
//  Copyright © 2020 exportKeynote. All rights reserved.
//

import UIKit
import ZIPFoundation
import SwiftProtobuf


class ViewController: UIViewController {

    @IBOutlet weak var textRight: UITextView!
    @IBOutlet weak var text: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testIWASnappy()
    }
    
    
    func testIWASnappy() {
        text.text = ""
        textRight.text = ""
        let path = Bundle.main.path(forResource:"Slide-9368", ofType: "iwa")
        let url = URL(fileURLWithPath: path!)
        let data = NSData(contentsOf: url)
               
        // DeCompresse
        
        let textobj = String(decoding: data!, as: UTF8.self)
        text.text = textobj
        let uncomData = (data?.snappyIWADecompressed())! as NSData
        let untext = String(decoding: uncomData, as: UTF8.self)
        // textRight.text = untext
        print(untext)
        
        // Decompression is work.
        
        
        // Here is a using data [uncomData]
        //
        
        
        // uncomData -> protobuf object
        do {
           
            
//            var stream = try Google_Protobuf_SourceCodeInfo(serializedData: uncomData as Data)
//            stream.decodeMessage(decoder: &Decoder)
            
            
//            var iwaInfo = try TSP_ArchiveInfo(serializedData: uncomData as Data)
            //print(iwaInfo.identifier)
            
//            for i in uncomData {
//                print(i)
//            }
           
            
            print(uncomData)
            
            
            var info = try TSP_ArchiveInfo(serializedData: uncomData as Data)
            
            
        } catch {
            print(error)
        }
        
        
        //-----------------------
        
        
        // Compression is confusion.
        let recomData = uncomData.snappyIWACompressed() as NSData
        let recomString = String(decoding: recomData, as: UTF8.self)
        textRight.text = untext
        
        // keep in tmp
        let fileManager = FileManager.default
        let tmpURL = fileManager.temporaryDirectory
        var comURL = tmpURL
        comURL.appendPathComponent("Slide-9368.iwa")

        //Decompresse
        do {
            try recomData.write(to: comURL, atomically: true)
           
            // clear tmp direction
            try? FileManager.default.removeItem(at: comURL)

        } catch {
            print("\(error)")
        }
        
    }
    
    func testSnappy() {
        let path = Bundle.main.path(forResource:"uncomText", ofType: "txt")
        let url = URL(fileURLWithPath: path!)
        let data = NSData(contentsOf: url)
        
        //Compresse
        let comData = (data?.snappyCompressed())! as NSData
        let textobj = String(decoding: comData, as: UTF8.self)
        text.text = textobj
        print(textobj)
         
        let fileManager = FileManager.default
        let tmpURL = fileManager.temporaryDirectory
        var uncomURL = tmpURL
        uncomURL.appendPathComponent("comText.txt")

        //Decompresse
        let uncomData = comData.snappyDecompressed()! as NSData
        
        do {
            try uncomData.write(to: uncomURL, atomically: true)
            let textobj = String(decoding: uncomData, as: UTF8.self)
            textRight.text = textobj
            // clear tmp direction
            try? FileManager.default.removeItem(at: uncomURL)

        } catch {
            print("\(error)")
        }
    }


    func testProto() {
        var obj = Im_helloworld()
        obj.id = 1234
        obj.opt = 12
        obj.str = "i am a obj stuct"
        do {
            let data = try obj.serializedData()
            print("\(data.count)")
            
            let decodedInfo = try Im_helloworld(serializedData: data)
            print("decodedInfo str = \(decodedInfo.str)")
            print("decodedInfo opt = \(decodedInfo.opt)")
            print("decodedInfo id = \(decodedInfo.id)")
        } catch {
            print(error)
        }
    }
    func testUNZIP() {
        let fileManager = FileManager.default
        let currentWorkingPath = fileManager.currentDirectoryPath
        let currentWorkingURL = URL(fileURLWithPath: currentWorkingPath, isDirectory: true)
        
        let unzipFolderURL = fileManager.temporaryDirectory.appendingPathComponent("Directory")
        defer {
            do {
                try fileManager.removeItem(at: unzipFolderURL)
            } catch {
                print ("\(unzipFolderURL.absoluteURL)")
            }
        }
        
        
        if let filePath = Bundle.main.path(forResource: "simple", ofType: "key") {
            let fileURL = URL(fileURLWithPath: filePath)
            do {
                try fileManager.createDirectory(at: unzipFolderURL, withIntermediateDirectories: true, attributes: nil)
                try fileManager.unzipItem(at: fileURL, to: unzipFolderURL)
                
            } catch {
                print("Extraction of UNZIP archive failed with error:\(error)")
            }
        }
    }
    func zipTest() {
        let fileManager = FileManager.default
//        _ = fileManager.currentDirectoryPath
//        _ = URL(fileURLWithPath: currentWorkingPath, isDirectory: true)
//
        var tempFolderURL = fileManager.temporaryDirectory.appendingPathComponent("Directory")
        
        // Don't forget to clear temporary
        defer {
            do {
                try fileManager.removeItem(at: tempFolderURL)
            } catch {
                print ("\(tempFolderURL.absoluteURL)")
            }
        }
        let  subdir = URL(string: "temKeynote", relativeTo: Bundle.main.resourceURL)
       
       
        tempFolderURL.appendPathComponent("temKeynote.key")
        do {
            
            try fileManager.zipItem(at: subdir!, to: tempFolderURL)
                
        } catch {
            print("Extraction of ZIP archive failed with error:\(error)")
        }
      
    }
}


