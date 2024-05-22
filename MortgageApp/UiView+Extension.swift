//
//  UiView+Extension.swift
//  MortgageApp
//
//  Created by Tiparpron Sukanya on 5/21/24.
//

import Foundation
import UIKit
@IBDesignable
extension UIView{
    //    below line do corner radius - border color
    @IBInspectable
    var cornerRadius: CGFloat {
        get { return layer.cornerRadius}
        set { layer.cornerRadius = newValue}
    }
    @IBInspectable
    var borderWidth: CGFloat {
        get {return layer.borderWidth}
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            } else {
                return UIColor.black
            }
        }
        set { layer.borderColor = newValue?.cgColor }
    }
}
