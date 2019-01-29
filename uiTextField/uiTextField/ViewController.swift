//
//  ViewController.swift
//  uiTextField
//
//  Created by taigakiyotaki on 2019/01/29.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var myField: UITextField!
    private var textField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tW:CGFloat = 400
        let tH:CGFloat = 50
        
        textField = UITextField(frame: CGRect(x: self.view.frame.width/2-tW/2, y: self.view.frame.height/2-tH/2, width: tW, height: tH))
        textField.delegate = self
        textField.text = "input ME"
        textField.borderStyle = .roundedRect
        
        //入力中の時だけクリアボタン表示
        textField.clearButtonMode = .whileEditing
        textField.tag = 1
        
        myField.delegate = self
        
        
        self.view.addSubview(textField)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing:\(textField.text!)")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing:\(textField.text!)")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn:\(textField.text!)")
        textField.resignFirstResponder()
        return true
    }

}

