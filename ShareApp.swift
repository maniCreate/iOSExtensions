//
//  ShareApp.swift
//  SNSでのアプリシェア機能を搭載したい時に使用するExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

extension UIViewController {
    
    public func shareApp() {
        let url = URL(string: "https://example.com")
        let sharedText = "アプリをシェア！-\(url!)"
        let items:[Any] = [sharedText]
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        self.present(activityVC, animated: true, completion: nil)
    }
    
}
