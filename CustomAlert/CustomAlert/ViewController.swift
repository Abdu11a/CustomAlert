//
//  ViewController.swift
//  CustomAlert
//
//  Created by Abdulla Aseed on 12/08/1441 AH.
//  Copyright © 1441 Abdulla Alsahli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     
        let greenColor = UIColor(red:0.25, green:0.56, blue:0.34, alpha:1.00)
        let redColor   = UIColor(red:0.94, green:0.32, blue:0.35, alpha:1.0)
    
    let alerServise = AlertService()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func successTapped(_ sender: UIButton) {
        
        let alertVC = alerServise.showAlert(title: "Seccess", body: "Success Button Has Been Tapped", imageName: "seccess-icon", buttunTitle: "OK", buttonColor: greenColor  ) {
            self.dismiss(animated: true, completion: nil )
        }
        self.present(alertVC, animated: true, completion: nil)
        }
    
    @IBAction func failureTapped(_ sender: UIButton) {
        
        let alertVC = alerServise.showAlert(title: "Failure!", body: "Failure Button Has Been Tapped", imageName: "faliur-icon", buttunTitle: "OK", buttonColor: redColor  ) {
                  self.dismiss(animated: true, completion: nil)
              }
               self.present(alertVC, animated: true, completion: nil)
        }
    
}

 
