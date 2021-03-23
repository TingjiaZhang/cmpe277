//
//  PostViewController.swift
//  cmpe277
//
//  Created by 张廷嘉 on 3/20/21.
//

import Foundation
import UIKit
import os.log
import PhotosUI

class PostViewController:
    UIViewController{
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var NoteTextField: UITextField!
    @IBOutlet weak var imgview: UIImageView!
    
    
    @IBAction func selectImg(_ sender: UITapGestureRecognizer) {
    }
    @IBAction func AddBtn(_ sender: Any) {
        // Create the action buttons for the alert.
        let defaultAction = UIAlertAction(title: "OK",
                            style: .default) { (action) in
            // Respond to user selection of the action.
            print("User pressed OK")
        }
        // Create and configure the alert controller.
        let alert = UIAlertController(title: "Name is empty",
             message: "The name can not be empty.",
             preferredStyle: .alert)
        alert.addAction(defaultAction)
        
        if NameTextField.text?.isEmpty == true {
            self.present(alert, animated: true) {
                  // The alert was presented
                print("alert was presented")
            }
        }else{
            print("save data")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
