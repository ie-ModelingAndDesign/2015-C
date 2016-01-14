//
//  SecoundViewController.swift
//  practice
//
//  Created by 伊佐　大佑 on 2015/11/27.
//  Copyright (c) 2015年 dajo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    /*
     ボタンを定義.
  
*/
    private var toireButton: UIButton!
    private var reisuiButton: UIButton!
    private var zihanButton: UIButton!
    private var miteiButton: UIButton!
    let light = UIColor(red:0.8,green:0.5,blue:1.0,alpha:1.0)
    let li = UIColor(red:0.8,green:1.5,blue:1.0,alpha:1.0)
    let lightgreen = UIColor(red:0.8,green:1.5,blue:1.8,alpha:1.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を設定.
        self.view.backgroundColor = lightgreen
        
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
        let reisuiButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        reisuiButton.backgroundColor =  light       //reisuiButton.layer.masksToBounds = true
        reisuiButton.setTitle("冷水機", forState: .Normal)
        reisuiButton.layer.cornerRadius = 20.0
        reisuiButton.layer.position = CGPoint(x:270 , y:200)
        reisuiButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        // ボタンを追加する.
        self.view.addSubview(reisuiButton);
        
        
        
        let toireButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        toireButton.backgroundColor = UIColor.redColor();
        //reisuiButton.layer.masksToBounds = true
        toireButton.setTitle("トイレ", forState: .Normal)
        toireButton.layer.cornerRadius = 20.0
        toireButton.layer.position = CGPoint(x:100 , y:200)
        toireButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        // ボタンを追加する.
        self.view.addSubview(toireButton);

        
        
        let zihanButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        zihanButton.backgroundColor = UIColor.redColor();
        //zihanButton.layer.masksToBounds = true
        zihanButton.setTitle("自販機", forState: .Normal)
        zihanButton.layer.cornerRadius = 20.0
        zihanButton.layer.position = CGPoint(x:100 , y:350)
        zihanButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンを追加する.
        self.view.addSubview(zihanButton);

        let miteiButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
        miteiButton.backgroundColor = UIColor.redColor();
        //miteiButton.layer.masksToBounds = true
        miteiButton.setTitle("トイレ", forState: .Normal)
        miteiButton.layer.cornerRadius = 20.0
        miteiButton.layer.position = CGPoint(x:270 , y:350)
        miteiButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        
        // ボタンを追加する.
        self.view.addSubview(miteiButton);

    }
    
    /*
    ボタンイベント.
    */
    internal func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義.
       // let myViewController: UIViewController = FirstViewController()
        
        let myUndergrade1: UIViewController = Undergrande1()
        
        // Viewの移動.
        self.presentViewController(myUndergrade1, animated: true, completion: nil)

       // self.presentViewController(myViewController, animated: true, completion: nil)
    }
    
    internal func MyButton(sender: UIButton){
    
        let myViewController: UIViewController = FirstViewController()
        self.presentViewController(myViewController, animated: true, completion: nil)

}

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}