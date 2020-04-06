//
//  AlertViewStyle.swift
//  CustomAlert
//
//  Created by Abdulla Aseed on 13/08/1441 AH.
//  Copyright © 1441 Abdulla Alsahli. All rights reserved.
//

import Foundation
import Foundation
import UIKit
class AlertViewStyle: UIView {
    override init(frame: CGRect) {
            super.init(frame: frame)
            setView()
        }
        
     
    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         setView()
     }
     
     private func setView() {
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOpacity = 1
       layer.shadowOffset = .zero
       layer.shadowRadius = 15
       layer.shadowPath = UIBezierPath(rect: layer.bounds).cgPath
       layer.shouldRasterize = true
       layer.rasterizationScale = UIScreen.main.scale
         
        layer.borderColor = .init(srgbRed:0.20, green:0.10, blue:0.24, alpha:1.0)
        layer.cornerRadius  = 25.0
        clipsToBounds         = false
        backgroundColor = .white
}
}
