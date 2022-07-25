//
//  ViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    let pages = ["simpleWidget","multipleNumber","imageView","datePicker","tableView","alert"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initNavigationView()
    }
    
    func initNavigationView() {
        let screenWidth = UIScreen.main.bounds.width
        let buttonWidth = CGFloat.init(200)
        let buttonHeight = CGFloat.init(30)
        let buttonX = (screenWidth / 2) - (buttonWidth / 2)
        let buttonY = CGFloat.init(50)
        
        for index in 0...pages.count-1 {
            let item = pages[index]
            
            let button:UIButton = UIButton(frame: CGRect(x: buttonX,y:buttonY * CGFloat.init(index + 1),width: buttonWidth,height: buttonHeight))
            button.setTitle(item, for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .black
            button.addTarget(self, action: #selector(clickNavigation), for: .touchUpInside)
            view.addSubview(button)
        }
    }
    
    @objc func clickNavigation(sender:UIButton) {
        switch sender.currentTitle {
        case "simpleWidget" :
            self.navigationController?.show(SimpleWidgetViewController.init(), sender: sender)
        case "multipleNumber":
            self.navigationController?.show(MultipleNumberViewController.init(), sender: sender)
        case "imageView":
            self.navigationController?.show(ImageViewController.init(), sender: sender)
        case "datePicker":
            self.navigationController?.show(DatePickerViewController.init(), sender: sender)
        case "tableView":
            self.navigationController?.show(TableViewController.init(), sender: sender)
        case "alert":
            self.navigationController?.show(AlertViewController.init(), sender: sender)
        default:
            print("default")
        }
    }
}
