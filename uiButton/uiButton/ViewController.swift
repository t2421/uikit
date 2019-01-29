//
//  ViewController.swift
//  uiButton
//
//  Created by taigakiyotaki on 2019/01/29.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var button:UIButton!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let btnW:CGFloat = 200.0;
        let btnH:CGFloat = 40.0;
        
        let btnX:CGFloat = self.view.frame.width/2 - btnW/2;
        let btnY:CGFloat = self.view.frame.height/2 - btnH/2;
        button = UIButton(frame: CGRect(x: btnX, y: btnY, width: btnW, height: btnH));
        self.view.addSubview(button);
        button.backgroundColor = UIColor.red
        button.layer.masksToBounds = true;
        button.layer.cornerRadius = 20.0;
        
        button.setTitle("button", for: .normal)
        button.setTitle("button click", for: .highlighted)
        button.setTitleColor(UIColor.yellow, for: .highlighted)
        
        button.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func onClickMyButton(sender:UIButton){
        print("click")
        print(sender.currentTitle)
    }


}

