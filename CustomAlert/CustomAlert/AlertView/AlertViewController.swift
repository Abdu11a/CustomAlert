//
//  AlertViewController.swift
//  CustomAlert
//
//  Created by Abdulla Aseed on 12/08/1441 AH.
//  Copyright © 1441 Abdulla Alsahli. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var bodyLable: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    var imageview = UIImageView()
    var alertTitle = String()
    var alertBody = String()
    var actionButtonTitle = String()
    var buttonColor = UIColor()
    
    

    //To Add Any Action
    var buttonAction : (()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        setUpView()
        
    }
   
    func setUpView(){
        imageView.image = imageview.image
        titleLable.text = alertTitle
        bodyLable.text  = alertBody
        actionButton.setTitle(actionButtonTitle, for: .normal) 
        actionButton.backgroundColor = buttonColor
        titleLable.textColor = buttonColor
        actionButton.layer.cornerRadius = 15.0
       

    }
  
    @IBAction func ButtonTapped(_ sender: UIButton) {
        
        buttonAction?()
    }
    
}
