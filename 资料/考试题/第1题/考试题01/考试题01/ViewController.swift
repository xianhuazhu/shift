//
//  ViewController.swift
//  考试题01
//
//  Created by MJ Lee on 14/8/3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var babyView: UIImageView!
    
    @IBAction func buttonClick() {
        self.babyView.frame.origin.y = self.view.frame.size.height
        self.babyView.alpha = 1.0
        
        UIView.animateWithDuration(0.25, animations: {
                self.babyView.center.y = self.view.frame.size.height * 0.5
            }, completion: {
                (finished: Bool) in
                UIView.animateWithDuration(1.0, animations: {
                    self.babyView.alpha = 0.0
                })
            })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

