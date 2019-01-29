//
//  ViewController.swift
//  uiImageView
//
//  Created by taigakiyotaki on 2019/01/29.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var imageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgW:CGFloat = 200
        let imgH:CGFloat = 100
        
        imageView = UIImageView(frame: CGRect(x: self.view.frame.width/2-imgW/2, y: self.view.frame.height/2-imgH/2, width: imgW, height: imgH))
        
        let img:UIImage = UIImage(named: "hoge.png")!
        imageView.image = img
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

