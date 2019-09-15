//
//  InvalidTouchLocation.swift
//  指定した領域以外の部分をタップした時に、何か処理を行いたい時に使用するコード
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let tapEvent = touches.first else { return }
        
        let tapLocation = tapEvent.location(in: self.view)
        
        if view.frame.contains(tapLocation) {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
}
