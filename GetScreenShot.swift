//
//  GetScreenShot.swift
//  画面全体のスクリーンショットをUIImageで取得するExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

extension UIViewController {
    
    public func getScreenShot() -> UIImage {
        let captureSize = self.view.bounds.size
        
        UIGraphicsBeginImageContextWithOptions(captureSize, false, 0.0)
        let context:CGContext = UIGraphicsGetCurrentContext()!
        
        self.view.layer.render(in: context)
        
        let captureImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return captureImage
    }
    
    
}
