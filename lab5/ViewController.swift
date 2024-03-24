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
    
    // Статическая переменная для хранения введенного текста
    static var enteredText: String?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreenSegue" {
            if let destinationVC = segue.destination as? SecondViewController {
                print("Передаваемый текст:", textField.text ?? "No text provided")
                destinationVC.receivedMessage = textField.text
            }
        }
    }
    
    @IBAction func goToTheSecondScreen (_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else {
            print("Введенный текст пуст")
            return
        }

        // Сохраняем текст в статической переменной для передачи на следующий экран
        ViewController.enteredText = text
        print("Entered text: \(text)")

        performSegue(withIdentifier: "goToSecondScreenSegue", sender: self)
    }
}

extension ViewController: SecondViewControllerDelegate {
    // Реализация метода протокола для обновления данных в SecondViewController
    func updateReceivedMessage(_ message: String?) {
        // Обновляем значение enteredText при обновлении данных в SecondViewController
        ViewController.enteredText = message
    }
}
