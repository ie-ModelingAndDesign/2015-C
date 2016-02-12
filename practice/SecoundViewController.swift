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
//    private var reisuiButton: UIButton!
    private var zihanButton: UIButton!
//    private var miteiButton: UIButton!
    let light = UIColor(red:0.8,green:1.0,blue:0.7,alpha:1.0)
    let li = UIColor(red:0.8,green:1.5,blue:1.0,alpha:1.0)
    let lightgreen = UIColor(red:0.2,green:0.5,blue:1.0,alpha:1.0)
    var leftBarButton: UIBarButtonItem!

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // 背景色を設定.
        self.view.backgroundColor = light
        
        // 背景色をCyanに設定する.
//        self.view.backgroundColor = UIColor.cyanColor()
//       
//        
//        self.navigationItem.title = "Top Page"
//        
//        leftBarButton = UIBarButtonItem(title: "< Previous Page", style: .Plain, target: self, action: "tappedLeftBarButton")
//        
//        
//        self.navigationItem.leftBarButtonItem = leftBarButton
//
//        // NavigationControllerのタイトルを設定する.
//        self.title = "My Navigation"
//        
//        // 左ボタンを作成する..
//        myLeftButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onClickMyButton:")
//        
//        // 右ボタンを作成する.
//        myRightButton = UIBarButtonItem(title: "RightBtn", style: .Plain, target: self, action: "onClickMyButton:")
//        
//        // tagを設定する.
//        myLeftButton.tag = 1
//        myRightButton.tag = 2
//        
//        // ナビゲーションバーの左に設置する.
//        self.navigationItem.leftBarButtonItem = myLeftButton
//        
//        // ナビゲーションバーの右に設置する.
//        self.navigationItem.rightBarButtonItem = myRightButton
//    
//        
   
        //let image = UIImage(named: "stop.png") as UIImage
//        let imageButton   = UIButton()
//        imageButton.tag = 4
//        imageButton.frame = CGRectMake(0, 0, 128, 128)
//        imageButton.layer.position = CGPoint(x: self.view.frame.width/2, y:450)
//          toireButton.setImage(image, forState: .Normal)
//        imageButton.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
//        
//        self.view.addSubview(imageButton)
        let image = UIImage(named: "5.jpg") as UIImage!
        let toireButton: UIButton = UIButton(frame: CGRectMake(0,0,300,200))
        toireButton.setImage(image, forState: .Normal)
        toireButton.backgroundColor =   lightgreen
        //reisuiButton.layer.masksToBounds = true
        toireButton.setTitle("トイレ", forState: .Normal)
        toireButton.layer.cornerRadius = 20.0
        toireButton.layer.position = CGPoint(x:190 , y:200)
        toireButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        // ボタンを追加する.
        self.view.addSubview(toireButton);

        
        let image1 = UIImage(named: "4.jpg") as UIImage!
        let zihanButton: UIButton = UIButton(frame: CGRectMake(0,0,300,200))
        zihanButton.backgroundColor =   lightgreen
        zihanButton.setImage(image1, forState: .Normal)

        //zihanButton.layer.masksToBounds = true
        zihanButton.setTitle("自販機", forState: .Normal)
        zihanButton.layer.cornerRadius = 20.0
        zihanButton.layer.position = CGPoint(x:190 , y:450)
        zihanButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
       self.view.addSubview(zihanButton);
//
//        let miteiButton: UIButton = UIButton(frame: CGRectMake(0,0,150,100))
//        miteiButton.backgroundColor =   lightgreen
//        //miteiButton.layer.masksToBounds = true
//        miteiButton.setTitle("トイレ", forState: .Normal)
//        miteiButton.layer.cornerRadius = 20.0
//        miteiButton.layer.position = CGPoint(x:270 , y:350)
//        miteiButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
//        
        
//        
//        // ボタンを追加する.
//        self.view.addSubview(miteiButton);
//
    }
    
     internal func onClickMyButton(sender: UIButton){
//学部ページに飛ぶ
        let myUndergrande1: UIViewController = Undergrande1()
// Viewの移動.
        self.presentViewController(myUndergrande1, animated: true, completion: nil)
       // self.presentViewController(myViewController, animated: true, completion: nil)
    }
//    backする
    internal func backButton(sender: UIButton){
    
        let myViewController: UIViewController = FirstViewController()
        self.presentViewController(myViewController, animated: true, completion: nil)

}
//    internal func zihankiButton(sender: UIButton){
//        let myzihanki: UIViewController = zihanki()
//        self.presentViewController(myzihanki, animated: true, completion: nil)
//        
//    }

//
//    func tappedLeftBarButton() {
//        let myFirstViewController = FirstViewController()
//        self.navigationController?.pushViewController(myFirstViewController, animated: true)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}