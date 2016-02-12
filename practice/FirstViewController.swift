//
//  ViewController.swift
//  practice
//
//  Created by 伊佐　大佑 on 2015/11/27.
//  Copyright (c) 2015年 dajo. All rights reserved.
//
import UIKit


class FirstViewController: UIViewController {
    private var myLeftButton: UIBarButtonItem!
    private var myRightButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        var adjustsFontSizeToFitWidth: Bool
        // 背景色をBlackに設定する.
        self;view.backgroundColor = UIColor.blackColor()
        
        
        
        
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,3200,100))
       
        

        
        // コーナーの半径.
        myLabel.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        myLabel.text = "琉球大学必須マップ"
        
        // 文字の色を黄色にする.
        myLabel.textColor = UIColor.yellowColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        //ラベルの大きさ
        myLabel.font = UIFont.systemFontOfSize(32)
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
        
        
        
        
        
        // ボタンを生成する.
        let nextButton: UIButton = UIButton(frame: CGRectMake(0,0,120,50))
        nextButton.backgroundColor = UIColor.cyanColor();
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("Start", forState: .Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)
        nextButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // ボタンを追加する.
        self.view.addSubview(nextButton);
    }
    
    /*
    ボタンイベント.
    */
    internal func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = SecondViewController()
        
        // アニメーションを設定する.
      //  mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        
        // Viewの移動する.
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}