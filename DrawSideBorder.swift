//
//  IBInspectableUIView.swift
//  BorderやDropShadowをInterfaceBuilderで簡単に指定するExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

enum BorderSide {
    case top
    case bottom
    case left
    case right
    
    func getFrame(view:UIView, borderWidth: CGFloat) -> CGRect {
        switch self {
        case .top:
            return CGRect(x: 0, y: 0, width: view.bounds.size.width, height: borderWidth)
        case .bottom:
            return CGRect(x: 0, y: view.bounds.maxY-borderWidth, width: view.bounds.size.width, height: borderWidth)
        case .left:
            return CGRect(x: 0, y: 0, width: borderWidth, height: view.bounds.size.height)
        case .right:
            return CGRect(x: view.bounds.maxX-borderWidth, y: 0, width: borderWidth, height: view.bounds.size.height)
        }
    }
    
}

extension UIView {
    
    public func drawSideBorder(borderWidth: CGFloat, borderColor: UIColor, view: UIView, side: BorderSide) -> CALayer {
        let border = CALayer()
        
        border.frame = side.getFrame(view: view, borderWidth: borderWidth)
        border.backgroundColor = borderColor.cgColor
        return border
    }
    
}
