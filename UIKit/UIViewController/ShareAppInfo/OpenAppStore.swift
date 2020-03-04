//
//  OpenAppStore.swift
//  AppStoreでアプリを開くExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

extension UIViewController {
    
    public func openAppStore() {
        let appUrl = "https://example.com"
        guard let url = URL(string: appUrl) else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    
}
