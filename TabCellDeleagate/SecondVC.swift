//
//  SecondVC.swift
//  TabCellDeleagate
//
//  Created by apple on 11/13/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    
    @IBOutlet weak var animateView: InsptView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
animateView.AnimateView()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
