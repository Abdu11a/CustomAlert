//
//  AlertService.swift
//  CustomAlert
//
//  Created by Abdulla Aseed on 12/08/1441 AH.
//  Copyright © 1441 Abdulla Alsahli. All rights reserved.
//

import Foundation

import UIKit

class AlertService {
    func showAlert(title : String , body : String , imageName: String , buttunTitle : String,buttonColor : UIColor , complation : @escaping()->Void )-> AlertViewController{

        let storyboard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        let alertVC = storyboard.instantiateViewController(identifier: "AlertVC") as! AlertViewController
        alertVC.alertTitle = title
        alertVC.alertBody = body
        alertVC.actionButtonTitle = buttunTitle
        alertVC.imageview.image = UIImage(named: imageName)
        alertVC.buttonAction = complation
        alertVC.buttonColor = buttonColor
        
        return alertVC
    }
    
    
 }
