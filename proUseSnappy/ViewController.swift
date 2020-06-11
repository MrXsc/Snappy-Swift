//
//  ViewController.swift
//  proUseSnappy
//
//  Created by Shuo Xiao on 2020/6/10.
//  Copyright © 2020 exportKeynote. All rights reserved.
//

import UIKit
import ZIPFoundation


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //testUNZIP()
        zipTest()
        //let data = NSMutableData()
        //exportKeynoteData(didReceivePdfData: data)
        // Do any additional setup after loading the view.
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
        let currentWorkingPath = fileManager.currentDirectoryPath
        let currentWorkingURL = URL(fileURLWithPath: currentWorkingPath, isDirectory: true)
        
        var unzipFolderURL = fileManager.temporaryDirectory.appendingPathComponent("Directory")
        defer {
            do {
                try fileManager.removeItem(at: unzipFolderURL)
            } catch {
                print ("\(unzipFolderURL.absoluteURL)")
            }
        }
        //let subdir = Bundle.main.resourceURL!.appendingPathComponent("temKeynote", isDirectory: true)
        var  subdir = URL(string: "temKeynote", relativeTo: Bundle.main.resourceURL)
       
       
        unzipFolderURL.appendPathComponent("untemKeynote.key")
        do {
            
            try fileManager.zipItem(at: subdir!, to: unzipFolderURL)
                
        } catch {
            print("Extraction of ZIP archive failed with error:\(error)")
        }
        let keynote = unzipFolderURL
        let dataKeynote = unzipFolderURL
    }
}


