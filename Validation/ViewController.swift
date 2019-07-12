//
//  ViewController.swift
//  Validation
//
//  Created by Gohar on 12/07/2019.
//  Copyright © 2019 FTL Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func validate() {
        do {
            let phone = try
                self.inputTextfield
                    .validatedText(validationType: .phone)
            let data = Model(phone: phone)
            save(data)
        } catch(let error) {
            showAlert(for: (error as! ValidationError).message)
        }
    }
    
    func save(_ data: Model) {
        showAlert(for: "Correct data")
    }
    
    func showAlert(for alert: String) {
        let alertController = UIAlertController(title: nil, message: alert, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func validateAction(_ sender: Any) {
        validate()
    }
    
}

