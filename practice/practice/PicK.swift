//
//  PicK.swift
//  practice
//
//  Created by 伊佐　大佑 on 2016/01/10.
//  Copyright (c) 2016年 dajo. All rights reserved.
//

import UIKit


class PicK: UIViewController {
    
    
    
    private var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIImageViewを作成する.
        myImageView = UIImageView(frame: CGRectMake(0,0,377,440))
        
        // 表示する画像を設定する.
        let myImage = UIImage(named: "共通棟2号館1階マップ_9978.jpg")
        
        // 画像をUIImageViewに設定する.
        myImageView.image = myImage
        
        // 画像の表示する座標を指定する.
        myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 400.0)
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(myImageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
