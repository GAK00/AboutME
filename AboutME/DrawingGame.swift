//
//  DrawingGame.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/14/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class DrawingGame : MenuBaseController{

    @IBOutlet weak var Slider: UISlider!
    @IBOutlet var Screen: DrawableView!
    @IBOutlet weak var CloseButton: UIButton!
    @IBOutlet weak var OpenButton: UIButton!
    @IBOutlet weak var HomeButton: UIButton!
    @IBOutlet weak var ThemeLabel: UILabel!
    @IBOutlet weak var menu: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.LoadColorHandler(Slider, Screen: Screen, DarkthemeLabel: ThemeLabel, CloseMenu: CloseButton, OpenMenu: OpenButton, Home: HomeButton)
    }

    @IBAction func ColorChanged(sender: UISlider) {
    super.ColorHander(Slider, Screen: Screen, DarkthemeLabel: ThemeLabel, CloseMenu: CloseButton, OpenMenu: OpenButton, Home: HomeButton)
    }

    @IBAction func Open(sender: UIButton) {
        super.OpenMenuNow(menu, OpenMenu: sender)
    }
   
    @IBAction func close(sender: UIButton) {
         super.CloseMenuNow(menu, OpenMenu: OpenButton)
    }
}
