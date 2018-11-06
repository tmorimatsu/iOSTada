//
//  ViewController.swift
//  Tada
//
//  Created by 森松　琢弥 on 2018/11/06.
//  Copyright © 2018年 com.tmorimatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    var todoList = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapAddButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "TODO追加", message: "TODOを入力してください", preferredStyle: UIAlertControllerStyle.alert)
        
            alertController.addTextField(configurationHandler: nil)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            if let textField = alertController.textFields?.first {
                
                // TODOの配列に入力値を挿入
                self.todoList.insert(textField.text!, at: 0)
                
                self.tableView.insertRows(at: [IndexPath(row:0, section: 0)], with: UITableViewRowAnimation.right)
            }
        }
    }
}

