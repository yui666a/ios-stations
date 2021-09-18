//
//  UIColor+Theme.swift
//  ios-stations
//

import UIKit

// internal(default): package内のみ
// private :要確認
// fileprivate : 要確認
extension UIColor {
    struct Theme {
        static var main: UIColor  { return UIColor(named: "Main")! }
    }
    
    static var random: UIColor {
        // 0~255,  0~254: 0..<255
//        let r = CGFloat.random(in: 0...255) / 255.0
        let r = CGFloat.random(in: 0...255) / 255.0
        let g = CGFloat.random(in: 0...255) / 255.0
        let b = CGFloat.random(in: 0...255) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}
