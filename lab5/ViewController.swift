//
//  ViewController.swift
//  lab5
//
//  Created by Канапия Базарбаев on 16.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttonNext: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToTheSecondScreen (_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondScreenSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToSecondScreenSegue" {
               if let destinationVC = segue.destination as? SecondViewController {
                   // Передаем текстовое сообщение на SecondViewController
                   destinationVC.receivedMessage = textField.text
               }
           }
       }
    
    
}
