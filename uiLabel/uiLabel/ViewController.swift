//
//  ViewController.swift
//  uiLabel
//
//  Created by taigakiyotaki on 2019/01/29.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonWidth:CGFloat = 200;
        let buttonHeight:CGFloat = 40;
        let buttonX:CGFloat = self.view.bounds.width/2-buttonWidth/2;
        let buttonY:CGFloat = self.view.bounds.height/2-buttonHeight/2;
        
        let label:UILabel = UILabel(frame: CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight))
        
        label.backgroundColor = UIColor.orange;
        label.layer.masksToBounds = true;
        label.layer.cornerRadius = 20.0;
        label.textColor = UIColor.white;
        
        label.text = "Test"
        label.shadowColor = UIColor.gray;
        label.textAlignment = NSTextAlignment.center;
        self.view.backgroundColor = UIColor.black;
        self.view.addSubview(label)
        
        boardLabel.backgroundColor = UIColor.red;
        
    }


}

