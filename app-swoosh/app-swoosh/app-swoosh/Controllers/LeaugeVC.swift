//
//  LeaugeVC.swift
//  app-swoosh
//
//  Created by Volha  Stankevich on 6/17/19.
//  Copyright © 2019 Volha  Stankevich. All rights reserved.
//

import UIKit

class LeaugeVC: UIViewController {
    var player:Player!

    @IBAction func OnNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "ScillVCSeque", sender: self)
    }
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWemenTapped(_ sender: Any) {
       selectLeague(leagueType: "weman")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
       selectLeague(leagueType: "coed")
    }
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled=true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player=Player()

        // Do any additional setup after loading the view.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC=segue.destination as? SkillsVC {
            skillVC.player=player
        }
    }

}
