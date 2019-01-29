//
//  ViewController.swift
//  uiButton2
//
//  Created by taigakiyotaki on 2019/01/29.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var button1:UIButton!;
    private var button2:UIButton!;
    private var button3:UIButton!;
    private var button4:UIButton!;
    private var button5:UIButton!;
    
    @IBOutlet var customButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let btnW:CGFloat = 200;
        let posX:CGFloat = self.view.frame.width/2 - btnW/2
        
        button1 = UIButton(type: .infoDark)
        button2 = UIButton(type: .infoLight)
        button3 = UIButton(type: .contactAdd)
        button4 = UIButton(type: .detailDisclosure)
        button5 = UIButton(type: .system)
        
        button1.layer.position = CGPoint(x: posX, y: 100);
        button2.layer.position = CGPoint(x: posX, y: 150);
        button3.layer.position = CGPoint(x: posX, y: 200);
        button4.layer.position = CGPoint(x: posX, y: 250);
        button5.frame = CGRect(x: posX, y: 300, width: btnW, height: 50)
        button5.setTitle("myButton", for: .normal)
        
        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        button4.tag = 4
        button5.tag = 5
        
        
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        
        
        button1.addTarget(self, action: #selector(ViewController.onClickButton(sender:)), for: .touchDown)
        button2.addTarget(self, action: #selector(ViewController.onClickButton(sender:)), for: .touchDown)
        button3.addTarget(self, action: #selector(ViewController.onClickButton(sender:)), for: .touchDown)
        button4.addTarget(self, action: #selector(ViewController.onClickButton(sender:)), for: .touchDown)
        button5.addTarget(self, action: #selector(ViewController.onClickButton(sender:)), for: .touchDown)
        
        customButton.tag = 10
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func onClickButton(sender:UIButton){
        print(sender.tag)
        switch(sender.tag){
            case 1:
            print("infoDark")
            break;
        case 2:
            print("infoLight")
            break;
        case 3:
            print("contactAdd")
            break;
        case 4:
            print("detailDisclosure")
            break;
        case 5:
            print("system")
            break;
        
        default:
            print("uups")
        }
    }


}

