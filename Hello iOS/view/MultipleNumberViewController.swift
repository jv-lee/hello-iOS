//
//  MultipleNumberViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/20.
//

import Foundation
import UIKit

class MultipleNumberViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        multipleNumberInput()
    }
    
    func multipleNumberInput() {
        for index in 0...11
        {
            let x:Int = 47 + (index % 4) * 60 // 按钮水平坐标
            let y:Int = 95 + (index / 4) * 50 // 按钮垂直坐标
            let buttonNumber:UIButton = UIButton.init(type: .system)
            buttonNumber.frame = CGRect(x: x, y: y, width: 41, height: 35) // 按钮位置及大小
            buttonNumber.setTitleColor(.white, for: .normal)
            buttonNumber.backgroundColor = .black
            buttonNumber.titleLabel?.font = UIFont(name: "System", size: 22.0) // 字号
            if index == 10 { // 第11个是”清除“按钮
                buttonNumber.setTitle("清除", for: .normal)
                buttonNumber.addTarget(self, action: #selector(clear), for: .touchUpInside)
            } else if index == 11 { // 第12个是”确定“按钮
                buttonNumber.setTitle("确定", for: .normal)
                buttonNumber.addTarget(self, action: #selector(confrim), for: .touchUpInside)
            } else {
                buttonNumber.setTitle("\(index)", for: .normal)
                buttonNumber.addTarget(self, action: #selector(numberClick), for: .touchUpInside)
            }
            view.addSubview(buttonNumber)
        }
    }
    
    @objc func clear(sender:UIButton) {
        print("clear")
    }
    
    @objc func confrim(sender:UIButton){
        print("confirm")
    }
    
    @objc func numberClick(sender:UIButton){
        print(sender.currentTitle ?? "")
    }
    
}
