//
//  PushButtonView.swift
//  CoreGraphicsTutorial
//
//  Created by Shinya Hirai on 2015/11/26.
//  Copyright (c) 2015年 AkiraMaeda. All rights reserved.
//

import UIKit

@IBDesignable

class PushButtonView: UIButton {
    
    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    @IBInspectable var isAddButton: Bool = true
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        //ボタンビューを丸くする
        var path = UIBezierPath(ovalInRect: rect)
        fillColor.setFill()
        path.fill()
        
        
        //プラスの文字をコードで表現
        let plusWidth:CGFloat = self.bounds.width * 0.6
        let plusHeight:CGFloat = 3.0
        var plusPath = UIBezierPath()
        plusPath.lineWidth = plusHeight
        
        //水平方向
        plusPath.moveToPoint(CGPointMake(self.bounds.width/2 - plusWidth/2 + 0.5,self.bounds.height/2 + 0.5)) //最初の開始地点を指定
        plusPath.addLineToPoint(CGPointMake(self.bounds.width/2 + plusWidth/2 + 0.5,self.bounds.height/2 + 0.5)) //終了地点を指定
        
        if isAddButton{
            //垂直方向
            plusPath.moveToPoint(CGPointMake(self.bounds.width/2 + 0.5,self.bounds.height/2 - plusWidth/2 + 0.5 ))
            plusPath.addLineToPoint(CGPointMake(self.bounds.width/2 + 0.5, self.bounds.height/2 + plusWidth/2 + 0.5))
        }
        
        UIColor.whiteColor().setStroke() //描画した線の色を指定
        plusPath.stroke()
        
    }

}
