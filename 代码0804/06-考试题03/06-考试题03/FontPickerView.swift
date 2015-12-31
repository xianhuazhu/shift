//
//  FontPickerView.swift
//  06-考试题03
//
//  Created by apple on 14-8-4.
//  Copyright (c) 2014年 heima. All rights reserved.
//  自定义的字体大小选择控件

import UIKit

enum FontPickerViewFont : Int {
    case Small = 0
    case Middle
    case Big
    case SuperBig
}

protocol FontPickerViewDelegate : NSObjectProtocol {
    func fontPickerView(fontPickerView: FontPickerView!, didSelectFont font: FontPickerViewFont)
}

class FontPickerView: UIView {
    // 代理
    var delegate: FontPickerViewDelegate! {
        didSet { // 当设置完代理时，就默认选中第0个按钮
            self.buttonClick(self.btns[0])
        }
    }
    
    private var selectedButton: FontButton!
    
    // 定义一个数组，数组里面装的是都是FontButton
    lazy private var btns = [FontButton]()
    
    // 定义3个imageView
    lazy private var bottomLine = UIImageView(image: UIImage(named: "正文字号-滑条"))
    lazy private var topLine = UIImageView(image: UIImage(named: "正文字号-滑条红"))
    lazy private var slider = UIImageView(image: UIImage(named: "正文字号-滑块"))
    
    convenience init() {
        self.init(frame: CGRectZero)
    }

    init(frame: CGRect) {
        super.init(frame: frame)
        
        // 1.添加4个按钮
        self.setupButton("正文字号-小（默认）", selectedIcon: "正文字号-小", tag: .Small)
        self.setupButton("正文字号-中（默认）", selectedIcon: "正文字号-中", tag: .Middle)
        self.setupButton("正文字号-大（默认）", selectedIcon: "正文字号-大", tag: .Big)
        self.setupButton("正文字号-大+（默认）", selectedIcon: "正文字号-大+", tag: .SuperBig)
        
        // 2.添加其他控件
        self.addSubview(self.bottomLine)
        self.addSubview(self.topLine)
        self.addSubview(self.slider)
    }
    
    func setupButton(icon: String, selectedIcon: String, tag: FontPickerViewFont) {
        // 创建按钮
        var btn = FontButton()
        btn.tag = tag.toRaw()
        
//        var max: CGFloat = 255.0 // random()能生成任意整数
//        var r: CGFloat = CGFloat(random()) % max / max
//        var g: CGFloat = CGFloat(random()) % max / max
//        var b: CGFloat = CGFloat(random()) % max / max
//        btn.imageView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        btn.imageView.contentMode = UIViewContentMode.ScaleAspectFit
        btn.adjustsImageWhenHighlighted = false
        
        // 设置图片
        btn.setImage(UIImage(named: icon), forState: UIControlState.Normal)
        btn.setImage(UIImage(named: selectedIcon), forState: UIControlState.Selected)
        
        // 添加按钮
        self.addSubview(btn)
//        self.btns.append(btn)
        self.btns += btn
        
        // 监听点击
        btn.addTarget(self, action:"buttonClick:", forControlEvents: UIControlEvents.TouchDown)
    }
    
    /** 监听按钮点击 */
    func buttonClick(button: FontButton) {
        if self.selectedButton {
            self.selectedButton.selected = false
        }
        button.selected = true
        self.selectedButton = button
        
        // 重新布局
        self.setNeedsLayout()
        
        // 通知代理
//        if self.delegate {
//            self.delegate.fontPickerView(self, didSelectFont: FontPickerViewFont.Small)
//        }
        // 可选链
        self.delegate?.fontPickerView(self, didSelectFont: FontPickerViewFont.fromRaw(button.tag)!)
     }
    
    /** 设置子控件的尺寸 */
    override func layoutSubviews()  {
        super.layoutSubviews()
        
        // 0.按钮格式
        var btnCount = self.btns.count
        
        // 1.设置按钮的frame
        var btnY: CGFloat = 5
        var btnH: CGFloat = 35
        var btnW = self.frame.size.width / CGFloat(btnCount)
        for i in 0..<btnCount {
            var btn = self.btns[i]
            var btnX = CGFloat(i) * btnW
            btn.frame = CGRectMake(btnX, btnY, btnW, btnH)
        }
        
        // 3.白色滑条
        var bottomLineX: CGFloat = self.btns[0].center.x - self.slider.frame.size.width * 0.5
        var bottomLineMaxX: CGFloat = self.btns[btnCount - 1].center.x + self.slider.frame.size.width * 0.5
        var bottomLineW = bottomLineMaxX - bottomLineX
        var bottomLineY = btnY + btnH + 10
        var bottomLineH: CGFloat = 3
        self.bottomLine.frame = CGRectMake(bottomLineX, bottomLineY, bottomLineW, bottomLineH)
        
        // 4.滑块
        if self.selectedButton {
            self.slider.center.x = self.selectedButton.center.x
            self.slider.center.y = self.bottomLine.center.y
        }
        
        // 5.红色滑条
        self.topLine.frame = self.bottomLine.frame
        self.topLine.frame.size.width = self.slider.center.x - self.topLine.frame.origin.x
    }
    
    // 嵌套类
    class FontButton : UIButton {
        override var highlighted: Bool {
            set {
                
            }
            get {
                return false
            }
        }
    }
}
