//
//  ViewController.swift
//  考试题02
//
//  Created by MJ Lee on 14/8/3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var itcastButton: UIButton!
    @IBOutlet weak var underline: UIView!
    private var selectedButton: UIButton?
    
    @IBAction func buttonClick(sender: UIButton) {
        if selectedButton {
            selectedButton!.selected = false
        }
        sender.selected = true
        self.selectedButton = sender
        
        UIView.animateWithDuration(0.25, animations: {
            var underlineX = CGRectGetMinX(sender.frame)
            var underlineY = CGRectGetMaxY(sender.frame)
            var underlineW = CGRectGetWidth(sender.frame)
            var underlineH = CGRectGetHeight(self.underline.frame)
            self.underline.frame = CGRectMake(underlineX, underlineY, underlineW, underlineH)
        })
    }
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool)  {
        UIView.setAnimationsEnabled(false)
        buttonClick(self.itcastButton)
        UIView.setAnimationsEnabled(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

