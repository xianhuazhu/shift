//
//  ViewController.swift
//  考试题03
//
//  Created by MJ Lee on 14/8/3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FontSizePickerDelegate {
                            
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var picker = FontSizePicker(frame: CGRectZero)
        picker.frame = CGRectMake(0, 150, 320, 80)
        picker.delegate = self
        picker.backgroundColor = UIColor.blueColor()
        self.view.addSubview(picker)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func fontSizePicker(picker: FontSizePicker, didSelectSize size: FontSize) {
        switch size {
            case .FontSizeSmall:
                self.label.font = UIFont.systemFontOfSize(11)
            case .FontSizeMiddle:
                self.label.font = UIFont.systemFontOfSize(15)
            case .FontSizeBig:
                self.label.font = UIFont.systemFontOfSize(18)
            case .FontSizeSuperBig:
                self.label.font = UIFont.systemFontOfSize(25)
        }
    }
}

