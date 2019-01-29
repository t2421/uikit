//
//  ViewController.swift
//  uiTableView
//
//  Created by taigakiyotaki on 2019/01/29.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var myTableData:NSArray = ["TEST1","TEST2"]
    private var myTableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barH:CGFloat = UIApplication.shared.statusBarFrame.size.height
        let tW:CGFloat = self.view.frame.width
        let tH:CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barH, width: tW, height: tH))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.delegate = self
        myTableView.dataSource = self
        self.view.addSubview(myTableView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select:\(indexPath.row)")
        print("value:\(myTableData[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell",for:indexPath as IndexPath)
        cell.textLabel!.text = "\(myTableData[indexPath.row])"
        return cell
    }


}

