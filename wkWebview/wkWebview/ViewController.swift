//
//  ViewController.swift
//  wkWebview
//
//  Created by taigakiyotaki on 2019/02/08.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKUIDelegate {
    private var webView:WKWebView!;
    
    override func loadView() {
        let config:WKWebViewConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: config)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.apple.com")
        let myRequest:URLRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

