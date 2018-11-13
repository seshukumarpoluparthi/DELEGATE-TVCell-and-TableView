//
//  ViewController.swift
//  TabCellDeleagate
//
//  Created by apple on 11/13/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let person = [Persons(name:"seshu",age:24),Persons(name:"sachin",age:25),Persons(name:"virat",age:26),Persons(name:"dhoni",age:27),Persons(name:"ravi",age:28)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        tableView.tableFooterView = UIView()
    }


}


extension ViewController : cellbuttonselectionDelegate{
    func didTapPersonName(name: String) {
        print("person name : \(name)")
    }
    
    func didTapPersonAge(age: Int) {
        print("person age : \(age)")
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let persond = person[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTVC", for: indexPath) as! PersonTVC
        cell.setParm(person: persond)
        cell.delegate = self
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}

