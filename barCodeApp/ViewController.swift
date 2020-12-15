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
    let decoder = JSONDecoder()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func startURLSession(_ sender: UIButton) {
        
        if let code = barCodeTextField.text{
            let reqURL = URL(string: Configuration.shared.apiUrl + code)!
            print(reqURL)
            let request = URLRequest(url: reqURL)
            let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
                if let error = error {
                    print(error)
                }else{
                    do{
                        let result: Result = try self.decoder.decode(Result.self, from: data!)
                        print(result.Items[0].Item.itemName)
                    }catch let e{
                        print(e.localizedDescription)
                    }
                }
            
            })
            task.resume()
        }
    }
    
}

