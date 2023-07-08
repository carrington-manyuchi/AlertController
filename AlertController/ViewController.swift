//
//  ViewController.swift
//  AlertController
//
//  Created by DA MAC M1 157 on 2023/07/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var click: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnTapped(_ sender: UIButton) {
        
        //declaring alert controller
        let alertController = UIAlertController(title: "Hello Alert", message: "It is my first Alert", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: .default) { action in
            
            
            // retrieving text of Title of action
            print(action.title)
            
            // retrieving text of first textField
            let textFieldText = alertController.textFields?[0].text
            let textFieldText_2 = alertController.textFields?[1].text
            print(textFieldText! + " " + textFieldText_2!)
            
        })
        
        alertController.addAction(UIAlertAction(title: "Delete", style: .destructive){ _ in
             print("delete button tapped")
        })
        
        var textFieldText = ""

        // Adding UITextField to AlertController
        alertController.addTextField { textfield in
            textfield.placeholder = "Login"
        }
        alertController.addTextField()
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        // presenting alert controller
        self.present(alertController, animated: true) {
            self.view.backgroundColor = .red
        }
        
    }
    
}

