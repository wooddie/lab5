//
//  ViewController.swift
//  lab5
//
//  Created by Канапия Базарбаев on 16.03.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttonNext: UIView!
    
    @IBAction func goToTheSecondScreen (_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondScreenSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

