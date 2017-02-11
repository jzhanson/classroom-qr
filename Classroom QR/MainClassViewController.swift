//
//  MainClassViewController.swift
//  Classroom QR
//
//  Created by Josh Zhanson on 2/11/17.
//  Copyright © 2017 Josh Zhanson. All rights reserved.
//

import Foundation
import UIKit

class MainClassViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func showEnterStudentAlert(sender: UIButton) {
        let message = "Enter student name."
        let pushPrompt = UIAlertController(title: "New student", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
            // Put actions here
            // text = pushPrompt.textFields![0].text)!
        })
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in })
        pushPrompt.addAction(ok)
        pushPrompt.addAction(cancel)
        pushPrompt.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Student name"
        }
        present(pushPrompt, animated: true, completion: nil)
        
    }
    
}
