//
//  ViewController.swift
//  YelpClient
//
//  Created by James Rochabrun on 4/4/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit
import Alamofire

struct Business {
    var name: String
    var distance: String
    var reviews: String
    var address: String
    var price: String
    var category: String
}

class FeedVC: UITableViewController {
    
    var businesses: [Business] = [Business]()

    let cellID = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .red
        tableView.register(BusinesCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        tableView.separatorStyle = .none
        dummydata()
    }
    
    func dummydata() {
        
        let b1 = Business(name: "amor", distance: "0.06 m", reviews: "567 reviews", address: "15 el pukgar", price: "$$$$", category: "Thailand")
        let b2 = Business(name: "La marea roja de chile el mejor de o", distance: "0.07 m", reviews: "300 reviews", address: "collec avenues 1554 san francisco ", price: "$$", category: "Mexican")
        let b3 = Business(name: "no", distance: "0.07 m", reviews: "54 reviews", address: "kwej fhekh ;ejk hh ejk", price: "$", category: "Chilean")
        let b4 = Business(name: "el mejor lugar del mundo para comer salchipapas", distance: "0.07 m", reviews: "5000", address: "el callao al aldo de ka a kjg fjwegf jwe 1234567898765432134556677888988767654322357899000998 ", price: "@$$", category: "Cholo")
        businesses.append(contentsOf: [b1, b2, b3])
        businesses.append(contentsOf: [b1, b2, b3])
        businesses.append(contentsOf: [b1, b2, b3])
        businesses.append(contentsOf: [b1, b2, b3])
        businesses.append(contentsOf: [b1, b2, b3, b4])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return businesses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! BusinesCell
        
        let b = businesses[indexPath.row]
        cell.businessNameLabel.text = b.name
        cell.businessImageView.image = #imageLiteral(resourceName: "car")
        cell.distanceLabel.text = b.distance
        cell.reviewsLabel.text = b.reviews
        cell.addressLabel.text =  b.address
        cell.categoryLabel.text = b.category
        cell.priceLabel.text = b.price
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}








