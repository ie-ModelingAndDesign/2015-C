//
//  Undergrande1.swift
//  practice
//
//  Created by 伊佐　大佑 on 2015/12/14.
//  Copyright (c) 2015年 dajo. All rights reserved.
//

import UIKit

class Undergrande1: UIViewController {
    /*
    ボタンを定義.
    
    */
    private var kougakuButton: UIButton!
    private var houbunButton: UIButton!
    private var nougakuButton: UIButton!
    private var kyoutButton: UIButton!
    let light = UIColor(red:0.8,green:0.5,blue:1.0,alpha:1.0)
    let li = UIColor(red:0.8,green:1.5,blue:1.0,alpha:1.0)
    let lightgreen = UIColor(red:0.2,green:0.5,blue:1.0,alpha:1.0)

    //let lightgreen = UIColor(red:0.8,green:1.5,blue:1.8,alpha:1.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を設定.
        self.view.backgroundColor = light
        
        // ボタンを作成.
        let backButton: UIButton = UIButton(frame: CGRectMake(0,0,70,50))
        backButton.backgroundColor = lightgreen
        backButton.layer.masksToBounds = true
        backButton.setTitle("Back", forState: .Normal)
        backButton.layer.cornerRadius = 20.0
        backButton.layer.position = CGPoint(x: 50 , y:30)
        backButton.addTarget(self, action: "MyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(backButton);
        // ボタンを作成.
        
        
        let kougakuButton: UIButton = UIButton(frame: CGRectMake(0,0,150,200))
        let image2 = UIImage(named: "8.jpg") as UIImage!
        kougakuButton.setImage(image2, forState: .Normal)
        kougakuButton.backgroundColor =  lightgreen//reisuiButton.layer.masksToBounds = true
       // kougakuButton.setTitle("工学部棟", forState: .Normal)
        kougakuButton.layer.cornerRadius = 20.0
        kougakuButton.layer.position = CGPoint(x:270 , y:200)
        kougakuButton.addTarget(self, action: "kougakuMyButton:", forControlEvents: .TouchUpInside)
        // ボタンを追加する.
        self.view.addSubview(kougakuButton);
        
        
        
        let houbunButton: UIButton = UIButton(frame: CGRectMake(0,0,150,200))
        let image5 = UIImage(named: "7.jpg") as UIImage!
        houbunButton.setImage(image5, forState: .Normal)
        houbunButton.backgroundColor = lightgreen
        //reisuiButton.layer.masksToBounds = true
       // houbunButton.setTitle("法文学部棟", forState: .Normal)
        houbunButton.layer.cornerRadius = 20.0
        houbunButton.layer.position = CGPoint(x:100 , y:200)
        houbunButton.addTarget(self, action: "kyoutButton:", forControlEvents: .TouchUpInside)
        
        
        // ボタンを追加する.
        self.view.addSubview(houbunButton);
        
        
        
        let nougakuButton: UIButton = UIButton(frame: CGRectMake(0,0,150,200))
        let image3 = UIImage(named: "6.jpg") as UIImage!
        nougakuButton.setImage(image3, forState: .Normal)
        nougakuButton.backgroundColor = lightgreen
        //zihanButton.layer.masksToBounds = true
       // nougakuButton.setTitle("農学部棟", forState: .Normal)
        nougakuButton.layer.cornerRadius = 20.0
        nougakuButton.layer.position = CGPoint(x:100 , y:450)
        nougakuButton.addTarget(self, action: "rigakuButton:", forControlEvents: .TouchUpInside)
        
        // ボタンを追加する.
        self.view.addSubview(nougakuButton);
        
        
        let kyoutButton: UIButton = UIButton(frame: CGRectMake(0,0,150,200))
        let image4 = UIImage(named: "9.jpg") as UIImage!
        kyoutButton.setImage(image4, forState: .Normal)
        kyoutButton.backgroundColor = lightgreen
        //miteiButton.layer.masksToBounds = true
       // kyoutButton.setTitle("共通棟", forState: .Normal)
        kyoutButton.layer.cornerRadius = 20.0
        kyoutButton.layer.position = CGPoint(x:270 , y:450)
        kyoutButton.addTarget(self, action: "kyoutButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンを追加する.
        self.view.addSubview(kyoutButton);
        
    }
    
    /*
    ボタンイベント.
    */
    internal func kyoutButton(sender: UIButton){
        
        // 画像ページに飛ぶ
        let myPicK: UIViewController = PicK()
        
        self.presentViewController(myPicK, animated: true, completion: nil)
        // self.presentViewController(myViewController, animated: true, completion: nil)
}
    //戻るボタンの機能
    internal func MyButton(sender: UIButton){
        
        let myViewController: UIViewController = SecondViewController()
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }
    //工学部ボタンの機能ボタン
    internal func kougakuMyButton(sender: UIButton){
        
        let myPicKO: UIViewController = PicKO()
        self.presentViewController(myPicKO, animated: true, completion: nil)
        
    }
    internal func houbunButton(sender: UIButton){
        
        let myPicK1: UIViewController = PicK()
        self.presentViewController(myPicK1, animated: true, completion: nil)
        
    }
    

    internal func rigakuButton(sender: UIButton){
        
        let rigakuButton: UIViewController = science()
        self.presentViewController(rigakuButton, animated: true, completion: nil)
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}