//
//  ViewController.swift
//  04-考试题01
//
//  Created by apple on 14-8-4.
//  Copyright (c) 2014年 heima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var babyView: UIImageView!
    
    @IBAction func buttonClick() {
        self.babyView.frame.origin.y = self.view.frame.size.height
        self.babyView.alpha = 1.0
        // OC中的block --> Swift中的闭包
        // Swift中的闭包对比OC中的block：少了一个^
//        UIView.animateWithDuration(0.25, animations: {
//            self.babyView.center.y = self.view.center.y
//            } compl)
        
        // Damping : 抖动系数（越小，抖动得越厉害）
        // initialSpringVelocity : 初始化速度
        UIView.animateWithDuration(0.25, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 10, options: UIViewAnimationOptions.AllowAnimatedContent, animations: {
            self.babyView.center.y = self.view.center.y
            }, completion: {
                (finished: Bool) in
                UIView.animateWithDuration(1.0, animations: {
                    self.babyView.alpha = 0.0
                    })
            })
        
//        UIView.animateWithDuration(0.25, animations: {
//            self.babyView.center.y = self.view.center.y
//            }, completion: {
//                // 声明闭包的参数和返回值，声明完毕要写个in，代表声明完毕
//                (finished: Bool) in
//                
//                UIView.animateWithDuration(1.0, animations: {
//                    self.babyView.alpha = 0.0
//                    })
//            })
    }
}

