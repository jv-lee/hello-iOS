//
//  ImageViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/20.
//

import Foundation
import UIKit

class ImageViewController : UIViewController {
    
    var images:[UIImage] = [UIImage(named: "card")!,UIImage(named: "alert")!,
                            UIImage(named: "card")!,UIImage(named: "alert")!,
                            UIImage(named: "card")!,UIImage(named: "alert")!]
    var index:Int = 0 // 存储当前图片下标
    var count:Int = 6 // 存储图片总数量
    
    var imageShow :UIImageView!
    var imageAnimator :UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        imageViewLayout()
    }
    
    func imageViewLayout() {
        print("screen.bounds:\(UIScreen.main.bounds.width)")
        print("view.frame:\(self.view.frame.width)")
        
        let prevButton = UIButton(frame: CGRect(x:0,y:60,width: 50,height:30))
        prevButton.setTitleColor(.white, for: .normal)
        prevButton.backgroundColor = .black
        prevButton.setTitle("prev", for: .normal)
        prevButton.addTarget(self, action: #selector(prevClick), for: .touchUpInside)
        view.addSubview(prevButton)
        
        let nextButton = UIButton(frame: CGRect(x:UIScreen.main.bounds.width - 50,y:60,width: 50,height:30))
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.backgroundColor = .black
        nextButton.setTitle("next", for: .normal)
        nextButton.addTarget(self, action: #selector(nextClick), for: .touchUpInside)
        view.addSubview(nextButton)
        
        imageShow = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        imageShow.image = UIImage(named: "android")
        imageShow.contentMode = .scaleAspectFill
        imageShow.layer.borderColor = UIColor.blue.cgColor
        imageShow.layer.borderWidth = 1
        imageShow.layer.cornerRadius = 10
        imageShow.layer.masksToBounds = true
        view.addSubview(imageShow)
        
        let startButton = UIButton(frame: CGRect(x:0,y:210,width: 50,height:30))
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = .black
        startButton.setTitle("start", for: .normal)
        startButton.addTarget(self, action: #selector(startClick), for: .touchUpInside)
        view.addSubview(startButton)
        
        let stopButton = UIButton(frame: CGRect(x:UIScreen.main.bounds.width - 50,y:210,width: 50,height:30))
        stopButton.setTitleColor(.white, for: .normal)
        stopButton.backgroundColor = .black
        stopButton.setTitle("stop", for: .normal)
        stopButton.addTarget(self, action: #selector(stopClick), for: .touchUpInside)
        view.addSubview(stopButton)
        
        imageAnimator = UIImageView(frame: CGRect(x: 100, y: 240, width: 100, height: 100))
        imageAnimator.image = UIImage(named: "android")
        imageAnimator.contentMode = .scaleAspectFill
        imageAnimator.animationImages = images
        imageAnimator.animationDuration = 12
        imageAnimator.layer.masksToBounds = true
        view.addSubview(imageAnimator)
    }
    
    @objc func prevClick(sender:UIButton) {
        index -= 1 // 当前图片index减1
        if index < 0 {
            index = count - 1
        }
        imageShow?.image = images[index]
    }
    
    @objc func nextClick(sender:UIButton) {
        index += 1
        if index == count {
            index = 0
        }
        imageShow?.image = images[index]
    }
    
    @objc func startClick(sender:UIButton) {
        imageAnimator?.startAnimating()
    }
    
    @objc func stopClick(sender:UIButton) {
        imageAnimator?.stopAnimating()
    }
    
}
