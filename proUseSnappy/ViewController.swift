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

    @IBOutlet weak var text: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //testUNZIP()
        
        //zipTest()
        
        //let data = NSMutableData()
        // let url = URL(string: "Slide-9368", relativeTo: Bundle.main.resourceURL)
        let path = Bundle.main.path(forResource:"Slide-9368", ofType:"iwa")
        let u = URL(fileURLWithPath: path!)
        let d = NSData(contentsOf: u)
        let textvobj = try! String(decoding: (d?.snappyIWADecompressed())!, as: UTF8.self)
        
        let url = URL(fileURLWithPath: "/Users/shuoxiao/snappyRe/proUseSnappy/temKeynote/Index/Slide-9368.iwa")
        let oc = NSData(contentsOf: url)
        let data = oc!.snappyIWADecompressed()!
        var str = String(decoding: data, as: UTF8.self)
        print(str)
        text.text = str
        textvobj.replacingOccurrences(of: "Pancake Title replace", with: "Topic")
        
        //testProto()
        //exportKeynoteData(didReceivePdfData: data)
        // Do any additional setup after loading the view.
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


