//
//  ViewController.swift
//  ビタミンC
//
//  Created by 伊佐　大佑 on 2015/12/08.
//  Copyright (c) 2015年 dajo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: [UILabel]!
    @IBOutlet var button: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        label.text = "琉球大学必須マップ"
   
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

