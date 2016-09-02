//
//  ViewController2.swift
//  NavControllerDemo
//
//  Created by 杜杜兴 on 15/10/3.
//  Copyright © 2015年 杜杜兴. All rights reserved.
//
//界面2
import UIKit

class ViewController2: UIViewController {
//   required init(coder aDecoder:NSCoder){
//       fatalError("init(coder:)has not been implemented")
//    }
    var name=""
    var delegate:DuduxingPassValue?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //背景颜色
        self.view.backgroundColor=UIColor.yellowColor()
        //标题
        self.navigationItem.title="VC2"
        //按钮
        self.navigationItem.rightBarButtonItem=UIBarButtonItem(title: "add", style: UIBarButtonItemStyle.Done, target: self, action: "addClick")
        let label1=UILabel(frame:CGRect(x: 10, y: 80, width: 130, height: 40))
        label1.text=name
      self.view.addSubview(label1)
    }
    func addClick(){
        delegate?.passValue("Return Dudu")
       self.navigationController?.popViewControllerAnimated(true)
    }

}
