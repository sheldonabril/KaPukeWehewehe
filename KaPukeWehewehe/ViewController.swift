//
//  ViewController.swift
//  KaPukeWehewehe
//
//  Created by Sheldon Abril on 5/21/20.
//  Copyright © 2020 Sheldon Abril. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var arrNaHuaOlelo = ["EA", "KUOKOA"]
    var arrWeheweheAna = ["sovereignty", "independence"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrNaHuaOlelo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        let text = arrNaHuaOlelo[indexPath.row]
        cell?.textLabel?.text = text
        cell?.detailTextLabel?.text = arrWeheweheAna[indexPath.row]
        
        return cell!
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

