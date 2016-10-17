//
//  RPS.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/17/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class RPS : MenuBaseController{
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var CloseButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
    @IBOutlet weak var OpenMenu: UIButton!
    @IBOutlet weak var themeLabel: UILabel!
    @IBOutlet var Screen: UIView!
    @IBOutlet weak var Menu: UIStackView!
    @IBOutlet weak var Rock: UIButton!
    @IBOutlet weak var Paper: UIButton!
    @IBOutlet weak var Scissors: UIButton!
    @IBOutlet weak var You: UILabel!
    @IBOutlet weak var Cpu: UILabel!
   
    @IBOutlet weak var Winner: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        super.LoadColorHandler(Slider, Screen: Screen, DarkthemeLabel: themeLabel, CloseMenu: CloseButton, OpenMenu: OpenMenu, Home: HomeButton)
super.autoColor(Rock)
super.autoColor(Paper)
super.autoColor(Scissors)
super.autoColor(You)
super.autoColor(Cpu)
super.autoColor(Winner)
    }

    @IBAction func ValueChanged(sender: UISlider) {
        super.ColorHander(Slider, Screen: Screen, DarkthemeLabel: themeLabel, CloseMenu: CloseButton, OpenMenu: OpenMenu, Home: HomeButton)
        super.autoColor(Rock)
        super.autoColor(Paper)
        super.autoColor(Scissors)
        super.autoColor(You)
        super.autoColor(Cpu)
        super.autoColor(Winner)
    }
    @IBAction func OpenMenuNow(sender: UIButton) {
        super.OpenMenuNow(Menu, OpenMenu: OpenMenu)
    }
    @IBAction func CloseMenuNow(sender: UIButton) {
        super.CloseMenuNow(Menu, OpenMenu: OpenMenu)
    }
    @IBAction func PlayerRock(sender: UIButton) {
        You.text = "You: Rock"
    }
    @IBAction func PlayerPaper(sender: UIButton) {
        You.text = "You: Paper"
    }
   
    @IBAction func PlayerScissors(sender: UIButton) {
        You.text = "You: Scissors"
    }
    func generateCpuDecision(){
    
    }
}
