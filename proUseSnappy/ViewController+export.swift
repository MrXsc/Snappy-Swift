//
//  ViewController+export.swift
//  proUseSnappy
//
//  Created by Shuo Xiao on 2020/6/11.
//  Copyright © 2020 exportKeynote. All rights reserved.
//

import UIKit

extension ViewController {

   
  func exportKeynoteData(didReceivePdfData data: NSMutableData) {
       dismiss(animated: true, completion: {
           let activity = UIActivityViewController(activityItems: [data],applicationActivities: nil)
           activity.modalPresentationStyle = .popover
           activity.view.tintColor = .white
           let popover = activity.popoverPresentationController
           self.present(activity, animated: true, completion: nil)
       })
   }

}
