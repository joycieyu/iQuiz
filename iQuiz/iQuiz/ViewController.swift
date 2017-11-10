//
//  ViewController.swift
//  iQuiz
//
//  Created by Joycie Yu on 11/9/17.
//  Copyright © 2017 Joycie Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let topics = ["Math", "Food", "Tv Shows"]

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(topics.count)
    }


    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = topics[indexPath.row]
        return(cell)
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

