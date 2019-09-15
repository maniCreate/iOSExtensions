//
//  GenerateAlertController.swift
//  AlertControllerを生成するExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

extension UIViewController {
    
    public func generateAlertController(title: String, message: String, actions: [UIAlertAction]) -> UIAlertController {
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        for action in actions {
            alert.addAction(action)
        }
        
        return alert
    }
    
}
