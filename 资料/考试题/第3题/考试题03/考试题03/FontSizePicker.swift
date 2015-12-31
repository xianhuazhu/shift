//
//  FontSizePicker.swift
//  考试题03
//
//  Created by MJ Lee on 14/8/3.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

import UIKit

enum FontSize : Int {
    case FontSizeSmall = 0, FontSizeMiddle, FontSizeBig, FontSizeSuperBig
}

protocol FontSizePickerDelegate : NSObjectProtocol {
    func fontSizePicker(picker: FontSizePicker, didSelectSize size: FontSize)
}

class FontSizePicker: UIView {
    var delegate: FontSizePickerDelegate! {
        didSet {
            self.buttonClick(self.btns[0])
        }
    }
    private var selectedButton: FontSizeButton!
    lazy private var btns = [FontSizeButton]()
    lazy private var topLine = UIImageView(image: UIImage(named: "正文字号-滑条红"))
    lazy private var bottomLine = UIImageView(image: UIImage(named: "正文字号-滑条"))
    lazy private var slider = UIImageView(image: UIImage(named: "正文字号-滑块"))

    init(frame: CGRect) {
        super.init(frame: frame)
        
        // 创建4个button
        self.setupButton("正文字号-小（默认）", highIcon: "正文字号-小", tag: FontSize.FontSizeSmall)
        self.setupButton("正文字号-中（默认）", highIcon: "正文字号-中", tag: FontSize.FontSizeMiddle)
        self.setupButton("正文字号-大（默认）", highIcon: "正文字号-大", tag: FontSize.FontSizeBig)
        self.setupButton("正文字号-大+（默认）", highIcon: "正文字号-大+", tag: FontSize.FontSizeSuperBig)
        
        // 添加其他3个控件
        self.addSubview(self.bottomLine)
        self.addSubview(self.topLine)
        self.addSubview(self.slider)
    }
    
    func setupButton(icon: String, highIcon: String, tag: FontSize) {
        // 创建按钮
        var btn = FontSizeButton(frame: CGRectZero)
        btn.tag = tag.toRaw()
        btn.setImage(UIImage(named: icon), forState: UIControlState.Normal)
        btn.setImage(UIImage(named: highIcon), forState: UIControlState.Selected)
        btn.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchDown)
        self.addSubview(btn)
        
        // 添加到数组中
        self.btns += btn
    }
    
    func buttonClick(button: FontSizeButton) {
        if selectedButton {
            selectedButton.selected = false
        }
        button.selected = true
        self.selectedButton = button
        
        self.setNeedsLayout()
        
        self.delegate?.fontSizePicker(self, didSelectSize: FontSize.fromRaw(button.tag)!)
    }
    
    override func layoutSubviews()  {
        super.layoutSubviews()
        
        // 1.按钮
        var btnCount = self.btns.count
        var btnW: CGFloat = self.frame.size.width / CGFloat(btnCount)
        var btnY: CGFloat = 5
        var btnH: CGFloat = 30
        for i in 0..<btnCount {
            var btn = self.btns[i]
            var btnX: CGFloat =  CGFloat(i) * btnW
            btn.frame = CGRectMake(btnX, btnY, btnW, btnH)
        }
        
        // 2.白条
        var firstBtnCenterX = self.btns[0].center.x
        var lastBtnCenterX = self.btns[self.btns.count - 1].center.x
        var bottomLineX: CGFloat = firstBtnCenterX - self.slider.frame.size.width * 0.5
        var bottomLineMaxX: CGFloat = lastBtnCenterX + self.slider.frame.size.width * 0.5
        var bottomLineW = bottomLineMaxX - bottomLineX
        var bottomLineY = btnY + btnH + 15
        self.bottomLine.frame  = CGRectMake(bottomLineX, bottomLineY, bottomLineW, 3)
        
        // 3.滑块
        if selectedButton {
            self.slider.center.x = self.selectedButton.center.x
            self.slider.center.y = self.bottomLine.center.y
            self.topLine.frame = self.bottomLine.frame
            self.topLine.frame.size.width = self.slider.center.x - self.topLine.frame.origin.x
        }
    }
    
    
    class FontSizeButton : UIButton {
        init(frame: CGRect) {
            super.init(frame: frame)
            
            self.adjustsImageWhenHighlighted = false
            self.imageView.contentMode = UIViewContentMode.ScaleAspectFit
        }
        
        override var highlighted: Bool {
            set {
            
            }
            get {
                return false
            }
        }
    }

}
