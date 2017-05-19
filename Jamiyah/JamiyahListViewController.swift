//
//  JamiyahListViewController.swift
//  Jamiyah
//
//  Created by Faisal Alkhotaifi on 5/19/17.
//  Copyright © 2017 techaddictsa. All rights reserved.
//

import UIKit

class JamiyahListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var groupName = ["fffffff", "gggggggggg"]
    var shareAmount = ["1234", "520"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jamiyah_cell", for: indexPath) as! JamiyahCellTableViewCell
        cell.groupName.text = groupName[indexPath.row]
        cell.shareAmount.text = shareAmount[indexPath.row]
        cell.jamiyahIcon.isHidden = true
        return cell
    }

}
