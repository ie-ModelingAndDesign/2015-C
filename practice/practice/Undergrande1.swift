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
    let lightgreen = UIColor(red:0.8,green:1.5,blue:1.8,alpha:1.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を設定.
        self.view.backgroundColor = lightgreen
        
        // 背景画像の設定
        let myImage = UIImage(named: "map-new.jpg")
        let myImageView = UIImageView()
        myImageView.image = myImage!
        myImageView.frame = CGRectMake(0, 0, myImage!.size.width, myImage!.size.height)
        self.view.addSubview(myImageView)
        
        // ボタンを作成.
        let backButton: UIButton = UIButton(frame: CGRectMake(0,0,70,50))
        backButton.backgroundColor = UIColor.magentaColor();
        backButton.layer.masksToBounds = true
        backButton.setTitle("Back", forState: .Normal)
        backButton.layer.cornerRadius = 20.0
        backButton.layer.position = CGPoint(x: 50 , y:30)
        backButton.addTarget(self, action: "MyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(backButton);
        // ボタンを作成.
        let kougakuButton: UIButton = UIButton(frame: CGRectMake(0,0,50,50))
        kougakuButton.backgroundColor =  light       //reisuiButton.layer.masksToBounds = true
        kougakuButton.setTitle("工学部棟", forState: .Normal)
        kougakuButton.layer.cornerRadius = 20.0
        kougakuButton.layer.position = CGPoint(x:270 , y:200)
        kougakuButton.addTarget(self, action: "kougakuMyButton:", forControlEvents: .TouchUpInside)
        // ボタンを追加する.
        self.view.addSubview(kougakuButton);
        
        
        
        let houbunButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        houbunButton.backgroundColor = UIColor.redColor();
        //reisuiButton.layer.masksToBounds = true
        houbunButton.setTitle("法文学部棟", forState: .Normal)
        houbunButton.layer.cornerRadius = 20.0
        houbunButton.layer.position = CGPoint(x:100 , y:200)
        houbunButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        // ボタンを追加する.
        self.view.addSubview(houbunButton);
        
        
        
        let nougakuButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        nougakuButton.backgroundColor = UIColor.redColor();
        //zihanButton.layer.masksToBounds = true
        nougakuButton.setTitle("農学部棟", forState: .Normal)
        nougakuButton.layer.cornerRadius = 20.0
        nougakuButton.layer.position = CGPoint(x:100 , y:350)
        nougakuButton.addTarget(self, action: "windowButton:", forControlEvents: .TouchUpInside)
        
        // ボタンを追加する.
        self.view.addSubview(nougakuButton);
        
        
        let kyoutButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        kyoutButton.backgroundColor = UIColor.redColor();
        //miteiButton.layer.masksToBounds = true
        kyoutButton.setTitle("共通棟", forState: .Normal)
        kyoutButton.layer.cornerRadius = 20.0
        kyoutButton.layer.position = CGPoint(x:270 , y:350)
        kyoutButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンを追加する.
        self.view.addSubview(kyoutButton);
        
    }
    
    /*
    ボタンイベント.
    */
    internal func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義.
        // let myViewController: UIViewController = FirstViewController()
        
        let myPicK: UIViewController = PicK()
        
        // Viewの移動.
        self.presentViewController(myPicK, animated: true, completion: nil)
        
        // self.presentViewController(myViewController, animated: true, completion: nil)
    }
    
    internal func MyButton(sender: UIButton){
        
        let myViewController: UIViewController = SecondViewController()
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }
    
    internal func kougakuMyButton(sender: UIButton){
        
        let myPicKO: UIViewController = PicKO()
        self.presentViewController(myPicKO, animated: true, completion: nil)
        
    }
    
    internal func windowButton(sender: UIButton){
        
        let windowButton: UIViewController = window()
        self.presentViewController(windowButton, animated: true, completion: nil)
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}