//
//  PicKO.swift
//  practice
//
//  Created by 伊佐　大佑 on 2016/01/10.
//  Copyright (c) 2016年 dajo. All rights reserved.
//

import UIKit

class PicKO: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initImageView()
    }
    
    func initImageView(){
        // UIImage インスタンスの生成
        let image1:UIImage? = UIImage(named:"法文・観光学部マップ(試作)_3596.jpg")
        
        // UIImageView 初期化
        let imageView = UIImageView(image:image1)
        
        // 画像の中心を187.5, 333.5 の位置に設定、iPhone6
        imageView.center = CGPointMake(187.5, 333.5)
        
        // UIImageViewのインスタンスをビューに追加
        self.view.addSubview(imageView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}