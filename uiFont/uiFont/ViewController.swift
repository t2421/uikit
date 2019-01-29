//
//  ViewController.swift
//  uiFont
//
//  Created by taigakiyotaki on 2019/01/30.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mySmallLabel:UILabel = UILabel(frame:CGRect(x: 25, y: 0, width: 300, height: 150))
        mySmallLabel.text = "smallLabel"
        mySmallLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        self.view.addSubview(mySmallLabel)
        
        let myNormalLabel:UILabel = UILabel(frame:CGRect(x: 25, y: 30, width: 200, height: 150))
        myNormalLabel.text = "normalLabel"
        myNormalLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        self.view.addSubview(myNormalLabel)
        
        let myItalicLabel:UILabel = UILabel(frame:CGRect(x: 25, y: 60, width: 200, height: 150))
        myItalicLabel.text = "italicLabel"
        myItalicLabel.font = UIFont.italicSystemFont(ofSize: UIFont.systemFontSize)
        self.view.addSubview(myItalicLabel)
        
        let myFontLabel:UILabel = UILabel(frame:CGRect(x: 25, y: 90, width: 200, height: 150))
        myFontLabel.text = "Zapfino"
        myFontLabel.font = UIFont(name: "Zapfino", size: UIFont.labelFontSize)
        self.view.addSubview(myFontLabel)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

