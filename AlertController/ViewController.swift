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
            print(action.title)
        })
        
        alertController.addAction(UIAlertAction(title: "Delete", style: .destructive){ _ in
             print("delete button tapped")
        })
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        // presenting alert controller
        self.present(alertController, animated: true) {
            self.view.backgroundColor = .red
        }
        
    }
    
}

