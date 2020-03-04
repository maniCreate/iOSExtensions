//
//  MakeGradientLayer.swift
//  グラデーションをセットしたい時に使用するExtension
//
//  Created by Shunsuke Nakao on 2019/09/15.
//

import Foundation
import UIKit

extension UIView {
    
    func setupGradientLayer(setColors: [UIColor.cgColor], size: CGSize) -> CAGradientLayer {
        let colors = setColors
        let layer = CAGradientLayer()
        layer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        layer.colors = colors
        layer.startPoint = CGPoint(x: 0, y: 1)
        layer.endPoint = CGPoint(x: 1, y: 0)
        return layer
    }
    
}
