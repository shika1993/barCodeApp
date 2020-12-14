//
//  ViewController.swift
//  barCodeApp
//
//  Created by 鹿内翔平 on 2020/12/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var barCodeTextField: UITextField!
    let url = URL(string: Configuration.shared.apiUrl)!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(url)
    }

    
    @IBAction func startURLSession(_ sender: UIButton) {
        
        
        if let code = barCodeTextField.text{
            let reqURL = URL(string: Configuration.shared.apiUrl + code)!
            print(reqURL)
        }
    }
    
}

