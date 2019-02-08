//
//  ViewController.swift
//  wkWebview
//
//  Created by taigakiyotaki on 2019/02/08.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKUIDelegate,WKScriptMessageHandler,WKNavigationDelegate {
    private var webView:WKWebView!;
    private var isActive:Bool = false
    @IBOutlet weak var button: UIButton!
    
    override func loadView() {
        let config:WKWebViewConfiguration = WKWebViewConfiguration()
        let controller:WKUserContentController = WKUserContentController()
        controller.add(self, name: "callbackHandler")
        controller.add(self, name: "appendText")
        config.userContentController = controller
        
        webView = WKWebView(frame: .zero, configuration: config)
        webView.uiDelegate = self
        webView.customUserAgent = "myCustomUserAgent"
        webView.navigationDelegate = self
        view = webView
        
        
    }
   
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        isActive = true
        
        
    }
    
    @IBAction func myTouch(_ sender: Any) {
        
    }
    
    func displayMessage(){
        if(!isActive) {return}
        
        let param = "JSCallTest"
        let execJsFunc = "test('\(param)')"
        
        webView.evaluateJavaScript(execJsFunc, completionHandler: {(object,error)->Void in
            print("fin")
        })
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if(message.name == "callbackHandler"){
            print("callback")
        }
        if(message.name == "appendText"){
            print("append")
            displayMessage()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"http://t2421.com/webview")
        let myRequest:URLRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

