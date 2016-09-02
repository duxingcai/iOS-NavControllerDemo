//
//  ViewController.swift
//  NavControllerDemo
//
//  Created by 杜杜兴 on 15/10/3.
//  Copyright © 2015年 杜杜兴. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DuduxingPassValue {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor=UIColor.redColor()
        //标题
        self.navigationItem.title="VC1"
        
        self.navigationItem.rightBarButtonItem=UIBarButtonItem(title: "add", style: UIBarButtonItemStyle.Done, target: self, action: "addClick")
    }
    func  passValue(value:String){
    let label2=UILabel(frame: CGRect(x: 10, y: 80, width: 130, height: 40))
        label2.text=value
        self.view.addSubview(label2)
}
    //转换界面函数
    func addClick(){
        let vc2=ViewController2()
        vc2.name="Duduxing"
        vc2.delegate=self
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

