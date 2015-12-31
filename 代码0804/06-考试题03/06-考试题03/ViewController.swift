//
//  ViewController.swift
//  06-考试题03
//
//  Created by apple on 14-8-4.
//  Copyright (c) 2014年 heima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FontPickerViewDelegate {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var pv = FontPickerView()
        pv.backgroundColor = UIColor.orangeColor()
        pv.delegate = self
        pv.frame = CGRectMake(0, 100, 320, 100)
        self.view.addSubview(pv)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // FontPickerViewDelegate
    func fontPickerView(fontPickerView: FontPickerView!, didSelectFont font: FontPickerViewFont) {
        switch font {
            case .Small:
                self.label.font = UIFont.systemFontOfSize(11)
            case .Middle:
                self.label.font = UIFont.systemFontOfSize(15)
            case .Big:
                self.label.font = UIFont.systemFontOfSize(20)
            case .SuperBig:
                self.label.font = UIFont.systemFontOfSize(25)
        }
    }
}

