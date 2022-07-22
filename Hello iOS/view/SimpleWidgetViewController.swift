//
//  SimpleWidgetViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/20.
//

import Foundation
import UIKit

class SimpleWidgetViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        testView()
    }
    
    func testView() {
        // android textView
        let labelText:UILabel = UILabel(frame: CGRect(x: 0, y: 10, width: 200, height: 30))
        labelText.text = "测试组件"
        labelText.textColor = .red
        view.addSubview(labelText)
        
        // andorid editText singleLine
        let textField:UITextField = UITextField(frame: CGRect(x:0,y:40,width: 200,height: 30))
        textField.textColor = .black
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        view.addSubview(textField)
        
        // android editText multipleLine
        let textView:UITextView = UITextView(frame: CGRect(x:0,y:80,width: 300,height: 100))
        textView.backgroundColor = .red
        view.addSubview(textView)
        
        let button:UIButton = UIButton(frame: CGRect(x:0,y:300,width: 100,height: 30))
        button.setTitle("button", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func tapped(sender:UIButton) {
        print(sender.currentTitle ?? "null")
    }
    
}
