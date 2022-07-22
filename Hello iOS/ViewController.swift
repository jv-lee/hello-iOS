//
//  ViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initNavigationView()
    }
    
    func initNavigationView() {
        let buttonSimpleWidget:UIButton = UIButton(frame: CGRect(x:50,y:100,width: 200,height: 30))
        buttonSimpleWidget.setTitle("simple widget", for: .normal)
        buttonSimpleWidget.setTitleColor(.white, for: .normal)
        buttonSimpleWidget.backgroundColor = .black
        buttonSimpleWidget.addTarget(self, action: #selector(navigationSimpleWidget), for: .touchUpInside)
        view.addSubview(buttonSimpleWidget)

        let buttonMultipleNumber:UIButton = UIButton(frame: CGRect(x:50,y:140,width: 200,height: 30))
        buttonMultipleNumber.setTitle("multiple number", for: .normal)
        buttonMultipleNumber.setTitleColor(.white, for: .normal)
        buttonMultipleNumber.backgroundColor = .black
        buttonMultipleNumber.addTarget(self, action: #selector(navigationMultipleNumber), for: .touchUpInside)
        view.addSubview(buttonMultipleNumber)

        let buttonImageView:UIButton = UIButton(frame: CGRect(x:50,y:180,width: 200,height: 30))
        buttonImageView.setTitle("image view", for: .normal)
        buttonImageView.setTitleColor(.white, for: .normal)
        buttonImageView.backgroundColor = .black
        buttonImageView.addTarget(self, action: #selector(navigationImageView), for: .touchUpInside)
        view.addSubview(buttonImageView)
    }
    
    @objc func navigationSimpleWidget(sender:UIButton) {
        self.navigationController?.show(SimpleWidgetViewController.init(), sender: sender)
    }

    @objc func navigationMultipleNumber(sender:UIButton) {
        self.navigationController?.show(MultipleNumberViewController.init(), sender: sender)
    }

    @objc func navigationImageView(sender:UIButton) {
        self.navigationController?.show(ImageViewController.init(), sender: sender)
    }

}

