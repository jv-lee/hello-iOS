//
//  DatePickerViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/22.
//

import Foundation
import UIKit

class DatePickerViewController : UIViewController {
    
    var dateFormatter = DateFormatter()
    
    var datePicker: UIDatePicker!
    var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initLabelText()
        initDatePicker()
    }
    
    func initLabelText() {
        labelText = UILabel(frame: CGRect(x:0,y:220,width: 320,height: 30))
        labelText.textAlignment = NSTextAlignment.center
        view.addSubview(labelText)
    }
    
    func initDatePicker() {
        dateFormatter.dateFormat = "y-M-d hh:mm:ss"
        
        datePicker = UIDatePicker(frame: CGRect(x:0,y:100,width: 200,height: 216))
        datePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        datePicker.locale = Locale.init(identifier: "zh_CN")
        datePicker.date = Date()
        datePicker.addTarget(self, action: #selector(dateChange), for: .valueChanged)
        dateChange(sender: datePicker)
        view.addSubview(datePicker)
    }
    
    @objc func dateChange(sender:UIDatePicker) {
        labelText.text = dateFormatter.string(from: datePicker.date)
    }
    
}
