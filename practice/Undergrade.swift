//
//  Undergrade.swift
//  practice
//
//  Created by 伊佐　大佑 on 2015/12/10.
//  Copyright (c) 2015年 dajo. All rights reserved.
//

import UIKit

class Undergrade: UIViewController/*, UITableViewDelegate,*/ /*UITableViewDataSource*/ {
    
    // Tableで使用する配列を設定する
    private let myItems: NSArray = ["工学部棟", "農学部棟", "共通棟"]
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
              // Status Barの高さを取得する.
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        
        // Viewの高さと幅を取得する.
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        // TableViewの生成する(status barの高さ分ずらして表示).
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        
        // Cell名の登録をおこなう.
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
       /*
        // DataSourceの設定をする.
        myTableView.dataSource = self
        
        // Delegateを設定する.
        myTableView.delegate = self
        
*/
        // Viewに追加する.
        self.view.addSubview(myTableView)
   
        
        // ボタンを作成.
        let backButton: UIButton = UIButton(frame: CGRectMake(0,0,70,50))
        backButton.backgroundColor = UIColor.blueColor();
        backButton.layer.masksToBounds = true
        backButton.setTitle("Back", forState: .Normal)
        backButton.layer.cornerRadius = 20.0
        backButton.layer.position = CGPoint(x: 50 , y:30)
        backButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(backButton);
        
        

    }
    
    internal func onClickMyButton(sender: UIButton){
        
        // 遷移するViewを定義
       let mySecoundViewController: UIViewController = SecondViewController()
    self.presentViewController(mySecoundViewController, animated: true, completion: nil)
    
   
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 /*
    /*
    Cellが選択された際に呼び出されるデリゲートメソッド.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myItems[indexPath.row])")
    }
    
    /*
    Cellの総数を返すデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // 再利用するCellを取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        
        // Cellに値を設定する.
        cell.textLabel!.text = "\(myItems[indexPath.row])"
        
        return cell
    }*/
    
}
