//
//  ViewController.swift
//  lab5
//
//  Created by Канапия Базарбаев on 16.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonNext: UIButton!
    
    @IBAction func goToTheSecondScreen(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondScreenSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreenSegue" {
            if let destinationVC = segue.destination as? SecondViewController {
                // Передаем сообщение на SecondViewController
                destinationVC.receivedMessage = "Привет, это сообщение из первого экрана!"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

