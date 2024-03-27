//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by BlockCode on 25/3/2567 BE.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        selectLeague(leagueType: "men")
        print("Mens")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "women")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        
        print("Pressed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    

}
