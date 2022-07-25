//
//  UIAlertController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/25.
//

import Foundation
import UIKit

extension UiAlertController {
    
    static func showAlert(message:String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "确定", style: .cancel))
        
    }
}
