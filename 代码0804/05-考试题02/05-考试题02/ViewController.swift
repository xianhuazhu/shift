//
//  ViewController.swift
//  05-考试题02
//
//  Created by apple on 14-8-4.
//  Copyright (c) 2014年 heima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstButton: UIButton!
    var selectedButton: UIButton!
    /** 底部的指示线 */
    @IBOutlet weak var underline: UIView!
    
    @IBAction func buttonClick(sender: UIButton) {
        // 设置按钮状态
        if self.selectedButton {
            self.selectedButton.selected = false
        }
        sender.selected = true
        self.selectedButton = sender
        
        UIView.animateWithDuration(0.25, animations: {
                // 设置underline跟被点击的按钮 的 宽度一样
                self.underline.frame.size.width = sender.frame.size.width
                
                // 设置underline的y
                self.underline.frame.origin.y = CGRectGetMaxY(sender.frame) + 5
                
                // 设置underline跟被点击的按钮 的 中点x一样
                self.underline.center.x = sender.center.x
            })
    }
                            
    override func viewDidAppear(animated: Bool)  {
        UIView.setAnimationsEnabled(false)
        self.buttonClick(self.firstButton)
        UIView.setAnimationsEnabled(true)
    }
}