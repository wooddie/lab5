//
//  UITabBarControllerExtensions.swift
//  lab5
//
//  Created by Канапия Базарбаев on 24.03.2024.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
}

extension UITabBarController: UITabBarControllerDelegate {
    public func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
            return false
        }

        // Определяем направление перехода
        let isMovingLeft = tabBarController.selectedIndex < tabBarController.viewControllers!.firstIndex(of: viewController)!
        
        // Устанавливаем начальную позицию для нового экрана
        if isMovingLeft {
            toView.frame = CGRect(x: self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        } else {
            toView.frame = CGRect(x: -self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        }

        // Добавляем новый экран поверх текущего экрана
        self.view.addSubview(toView)
        
        // Анимированный переход между экранами
        UIView.animate(withDuration: 0.3, animations: {
            if isMovingLeft {
                fromView.frame = CGRect(x: -self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            } else {
                fromView.frame = CGRect(x: self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            }
            toView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        }) { (finished) in
            // Удаляем предыдущий экран после завершения анимации
            fromView.removeFromSuperview()
        }
        
        return true
    }
}
