//
//  AlertViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/25.
//

import Foundation
import UIKit

class AlertViewController : UIViewController ,UIAlertViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initAlertButtonLayout()
    }
    
    func initAlertButtonLayout() {
        let screenWidth = view.bounds.width
        let buttonWidth = CGFloat.init(50)
        let buttonHeight = CGFloat.init(30)
        
        let buttonX = screenWidth / 2 - buttonWidth / 2
        
        
        let alertButton = UIButton(frame: CGRect(x: buttonX, y: 100, width: buttonWidth, height: buttonHeight))
        alertButton.backgroundColor = .black
        alertButton.setTitle("alert", for: .normal)
        alertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(alertButton)
        
        let sheetButton = UIButton(frame: CGRect(x: buttonX, y: 140, width: buttonWidth, height: buttonHeight))
        sheetButton.backgroundColor = .black
        sheetButton.setTitle("sheet", for: .normal)
        sheetButton.addTarget(self, action: #selector(showSheet), for: .touchUpInside)
        view.addSubview(sheetButton)
        
        let toastButton = UIButton(frame: CGRect(x: buttonX, y: 180, width: buttonWidth, height: buttonHeight))
        toastButton.backgroundColor = .black
        toastButton.setTitle("toast", for: .normal)
        toastButton.addTarget(self, action: #selector(showToast), for: .touchUpInside)
        view.addSubview(toastButton)
    }
    
    @objc func showAlert() {
        let alertController = UIAlertController(title: "系统提示", message: "您确定要退出应用吗？", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: { action in
            print("click alert cancel")
        })
        let confirmAction = UIAlertAction(title: "确认", style: .default, handler: { action in
            print("click alert confirm")
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        self.present(alertController,animated: true)
    }
    
    @objc func showSheet() {
        let sheetController = UIAlertController(title: "保存或删除数据", message: "删除数据将不可恢复", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel)
        let deleteAction = UIAlertAction(title: "删除", style: .destructive)
        let saveAction = UIAlertAction(title: "保存", style: .default)
        sheetController.addAction(cancelAction)
        sheetController.addAction(deleteAction)
        sheetController.addAction(saveAction)
        self.present(sheetController, animated: true)
    }
    
    @objc func showToast() {
        let toastController = UIAlertController(title: "保存成功！", message: nil, preferredStyle: .alert)
        self.present(toastController,animated: true)
        
        // 2s end auto hide
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.presentedViewController?.dismiss(animated: true)
        }
    }
    
}
