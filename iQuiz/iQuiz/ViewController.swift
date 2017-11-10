//
//  ViewController.swift
//  iQuiz
//
//  Created by Joycie Yu on 11/9/17.
//  Copyright © 2017 Joycie Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let topics = ["Mathematics", "Marvel Super Heroes", "Science"]
    let desc = ["things calculators do", "not Spider-Man", "explosions"]

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(topics.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = topics[indexPath.row]
        cell.detailTextLabel?.text = desc[indexPath.row]
        return(cell)
    }
    
    func createAlert (title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func alert(_ sender: Any) {
        createAlert(title: "Settings go here", message: "")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

