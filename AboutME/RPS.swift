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
        let you : Int = 1
        doRps(you)
        
    }
    @IBAction func PlayerPaper(sender: UIButton) {
        You.text = "You: Paper"
        let you : Int = 2
        doRps(you)
    }
   
    @IBAction func PlayerScissors(sender: UIButton) {
        You.text = "You: Scissors"
        let you : Int = 3
        doRps(you)
    }
    func generateCpuDecision() -> Int
    {
        let hi:Int = Int(arc4random_uniform(3))+1
        return hi
        
    }
    func displayCpuDecision(decision:Int){
        if(decision == 1){Cpu.text = "Cpu: Rock"}
        else if(decision == 2){Cpu.text = "Cpu: Paper"}
        else if(decision == 3){Cpu.text = "Cpu: Scissors"}
    
    }
    func calcWinner(var you:Int,var cpu:Int){
        if(you == cpu){Winner.text = "Winner: Tie"}
        else{
            if(you==1&&cpu==3){
            you = you+3
            }
            else if(cpu==1&&you==3){
            cpu = cpu+3
            }
            if(you>cpu){Winner.text = "Winner: You"}
            if(cpu > you){Winner.text = "Winner: Cpu"}
        }
      
    }
    func doRps(you:Int){
        let cpu : Int = generateCpuDecision()
        displayCpuDecision(cpu)
        calcWinner(you, cpu: cpu)
    }
}
