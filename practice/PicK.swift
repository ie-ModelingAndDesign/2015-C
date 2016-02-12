//
//  PicK.swift
//  practice
//
//  Created by 伊佐　大佑 on 2016/01/10.
//  Copyright (c) 2016年 dajo. All rights reserved.
//
//
import UIKit

class PicK: UIViewController {
    
    var imageView:UIImageView!
    var scale:CGFloat = 1.0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Screen Size の取得
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        
        // UIImage インスタンスの生成
        let image = UIImage(named:"共通棟2号館1階マップ_9978.jpg")!
        
        // 画像の幅・高さの取得
        width = image.size.width
        height = image.size.height
        
        // UIImageView インスタンス生成
        imageView = UIImageView(image:image)
        
        // 画像サイズをスクリーン幅に合わせる
        scale = screenWidth / width
        let rect:CGRect = CGRectMake(0, 0, width*scale, height*scale)
        
        // ImageView frame をCGRectMakeで作った矩形に合わせる
        imageView!.frame = rect;
        
        // 画像の中心を187.5, 333.5 の位置に設定、iPhone6のケース
        imageView!.center = CGPointMake(187.5, 333.5)
        
        // view に ImageView を追加する
        self.view.addSubview(imageView!)
       
        func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
            
            UINavigationBar.appearance().tintColor = UIColor.redColor()
            
            return true
        }
        
        // ボタンを作成.
        let backButton: UIButton = UIButton(frame: CGRectMake(0,0,70,50))
        backButton.backgroundColor = UIColor.redColor();
        backButton.layer.masksToBounds = true
        backButton.setTitle("Back", forState: .Normal)
        backButton.layer.cornerRadius = 20.0
        backButton.layer.position = CGPoint(x: 50 , y:50)
        backButton.addTarget(self, action: "backButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(backButton);
        

    
}
    internal func backButton(sender: UIButton){
        
        let myViewController: UIViewController = Undergrande1()
        self.presentViewController(myViewController, animated: true, completion: nil)
        
    }
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        UIBarButtonItem.appearance().setBackButtonBackgroundImage(UIImage(named: "Back"), forState: .Normal, barMetrics: .Default)
        
        return true
    }
}
