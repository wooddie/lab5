//
//  SecondViewController.swift
//  lab5
//
//  Created by Канапия Базарбаев on 16.03.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var receivedMessage: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // При загрузке экрана устанавливаем текст сообщения
        label.text = receivedMessage
    }
}
