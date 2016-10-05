//
//  ViewController.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/3/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DarkthemeLabel: UILabel!
    @IBOutlet weak var Menu: UIStackView!
    @IBOutlet weak var OpenMenu: UIButton!
    @IBOutlet weak var ThemeSlider: UISlider!
    @IBOutlet var Screen: UIView!
    @IBOutlet weak var CloseMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorHander()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func Close(sender: AnyObject) {
        Menu.hidden = true
        OpenMenu.hidden = false
    }
   
    @IBAction func OpenMenu(sender: UIButton) {
        OpenMenu.hidden = true
        Menu.hidden = false
    }

    @IBAction func SliderPosChanged(sender: UISlider) {
       ColorHander()
       
    }
    func ColorHander (){
        let darkness: CGFloat = CGFloat(ThemeSlider.value)
        let mainColor = UIColor(white:darkness,alpha: 1)
        var invertedColor = UIColor(white:1-darkness,alpha: 1)
        if(invertedColor == mainColor){
           invertedColor = UIColor.blackColor()}
        Screen.backgroundColor = mainColor
        LabelColor(DarkthemeLabel, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(CloseMenu, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(OpenMenu, mainColor: mainColor, invertedColor: invertedColor)
    }
    func ButtonColor(button: UIButton,mainColor: UIColor,invertedColor:UIColor){
        button.backgroundColor = invertedColor
        button.tintColor = mainColor
       
    
    }
    func LabelColor(label: UILabel,mainColor: UIColor, invertedColor: UIColor){
        label.backgroundColor = invertedColor
        label.textColor = mainColor
    }
}

