//
//  ViewController.swift
//  swift_cal
//
//  Created by Takemi Watanuki on 2015/02/17.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //ボタンを作成
//    let btn1: UIButton = UIButton()
    
    @IBOutlet var btn0 : UIButton!
    @IBOutlet var btn1 : UIButton!
    @IBOutlet var btn2 : UIButton!
    @IBOutlet var btn3 : UIButton!
    @IBOutlet var btn4 : UIButton!
    @IBOutlet var btn5 : UIButton!
    @IBOutlet var btn6 : UIButton!
    @IBOutlet var btn7 : UIButton!
    @IBOutlet var btn8 : UIButton!
    @IBOutlet var btn9 : UIButton!
    @IBOutlet var label1 : UILabel!
    
    var num1 = 0
    var num2 = 0
    var ope = 0
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        btn1.frame = CGRectMake(0, 0, 50, 50)
        btn1.backgroundColor = UIColor.greenColor()
        
        
        for i in 0...10{
            println(i)
            
            
            
            btn1.layer.position = CGPoint (x: self.view.frame.width/2 , y:40 )
            btn1.tag = i
            btn1.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
            self.view.addSubview(btn1)

            }
        
        
        
        //labelを作成する
        let mylabel: UILabel = UILabel(frame: CGRectMake(0, 0, 250, 50))
        mylabel.backgroundColor = UIColor.orangeColor()
        //枠をつける
        mylabel.layer.masksToBounds = true
        
        //角をまるくする
        mylabel.layer.cornerRadius = 20.0
        
        mylabel.text = "hello Swift"
        
        mylabel.textAlignment = NSTextAlignment.Center
        
        mylabel.textColor = UIColor.whiteColor()
        
        mylabel.shadowColor = UIColor.grayColor()
        
        mylabel.layer.position = CGPoint (x: self.view.bounds.width/2, y: 60)
        
        self.view.backgroundColor = UIColor.grayColor()
        
        
        //重要::Viewに追加する
        self.view.addSubview(mylabel)
    
    }
    
    @IBAction func plus(){
        
        label1.text = "\(num1)"
    }
    @IBAction func push1(){
        num1=num1*10+1
        
        label1.text = "\(num1)"
    }
    @IBAction func push2(){
        if (ope != 0){
            
        }
        num1=num1*10+2
        
        label1.text = "\(num1)"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

