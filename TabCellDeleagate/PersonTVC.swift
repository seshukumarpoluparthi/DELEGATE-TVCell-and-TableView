//
//  PersonTVC.swift
//  TabCellDeleagate
//
//  Created by apple on 11/13/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit


protocol cellbuttonselectionDelegate {
    func didTapPersonName(name:String)
    func didTapPersonAge(age:Int)
}

class PersonTVC: UITableViewCell {
    @IBOutlet weak var lbl_Name: UIButton!
    @IBOutlet weak var lbl_age: UIButton!
    
    var personModel : Persons!
    var delegate : cellbuttonselectionDelegate?

    func setParm(person : Persons){
        personModel = person
        lbl_age.setTitle("\(person.age)", for: .normal)
        lbl_Name.setTitle(person.name, for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lbl_Name.layer.borderWidth = 2
        lbl_age.layer.borderWidth = 2
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @IBAction func btn_age(_ sender: Any) {
        delegate?.didTapPersonAge(age: personModel.age)
    }
    
    @IBAction func btn_name(_ sender: Any) {
        delegate?.didTapPersonName(name: personModel.name)
    }

}
