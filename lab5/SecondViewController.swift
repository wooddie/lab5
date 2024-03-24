//
//  SecondViewController.swift
//  lab5
//
//  Created by Канапия Базарбаев on 16.03.2024.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func updateReceivedMessage(_ message: String?)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    // Переменная для хранения полученного сообщения
    var receivedMessage: String?

    // Делегат для обновления данных в ViewController
    weak var delegate: SecondViewControllerDelegate?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Обновляем значение в label при каждом появлении экрана
        label.text = receivedMessage ?? "Нет данных"
        
        // Вызываем метод делегата для передачи данных обратно в ViewController
        delegate?.updateReceivedMessage(receivedMessage)
    }
}
