//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by BlockCode on 25/3/2567 BE.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        
        print("Pressed")
    }
    

}
