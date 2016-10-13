//
//  Game_Main.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
//private var mainColor
//private var invertedColor
public class Game_Main: UIViewController{
    
    @IBOutlet weak var Menu: UIStackView!
    @IBOutlet weak var ThemeSlider: UISlider!
    @IBOutlet var Screen: UIView!
    @IBOutlet weak var DarkthemeLabel: UILabel!
    @IBOutlet weak var CloseMenu: UIButton!
    @IBOutlet weak var OpenMenu: UIButton!
    @IBOutlet weak var Home: UIButton!
    var lastPoint: CGPoint!
    var linecolor: UIColor!
    override public func viewDidLoad() {
        super.viewDidLoad()
        LoadColorHandler()
        
        
    }
    func LoadColorHandler (){
        let darkness: CGFloat = CGFloat(ThemeSlider.value)
        let testMain :UIColor = ColorHolder.getColor()
        let testInverted :UIColor = ColorHolder.getInvColor()
        let mainColor : UIColor
        var iColor : UIColor
       if(testMain != UIColor.brownColor()){mainColor = testMain}
        else{mainColor = UIColor(white:darkness,alpha: 1)}
        if(testInverted != UIColor.brownColor()){
        iColor = testInverted}
        else{
            iColor = UIColor(white:1-darkness,alpha: 1)}
        if(iColor == mainColor){
          iColor = UIColor.blackColor()}
        linecolor = iColor
       Screen.backgroundColor = mainColor
        Screen.backgroundColor = mainColor
        LabelColor(DarkthemeLabel, mainColor: mainColor, invertedColor: iColor)
        ButtonColor(CloseMenu, mainColor: mainColor, invertedColor: iColor)
        ButtonColor(OpenMenu, mainColor: mainColor, invertedColor: iColor)
        ButtonColor(Home,mainColor: mainColor,invertedColor: iColor)
        ColorHolder.setColor(mainColor)
        ColorHolder.setInvColor(iColor)
    }
    
    func ColorHander (){
        let darkness: CGFloat = CGFloat(ThemeSlider.value)
        let mainColor : UIColor = UIColor(white:darkness,alpha: 1)
        var invertedColor = UIColor(white:1-darkness,alpha: 1)
        if(invertedColor == mainColor){
            invertedColor = UIColor.blackColor()}
        Screen.backgroundColor = mainColor
        LabelColor(DarkthemeLabel, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(CloseMenu, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(OpenMenu, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(Home,mainColor: mainColor,invertedColor: invertedColor)
        ColorHolder.setColor(mainColor)
        ColorHolder.setInvColor(invertedColor)
    }
    func ButtonColor(button: UIButton,mainColor: UIColor,invertedColor:UIColor){
        button.backgroundColor = invertedColor
        button.tintColor = mainColor
        
        
    }
    func LabelColor(label: UILabel,mainColor: UIColor, invertedColor: UIColor){
        label.backgroundColor = invertedColor
        label.textColor = mainColor
    }

    @IBAction func OpenMenuNow(sender: AnyObject) {
        Menu.hidden = false;
        OpenMenu.hidden = true;
    }
    
    @IBAction func ThemeChanged(sender: AnyObject) {
        ColorHander()
    }
    @IBAction func CloseMenuNow(sender: AnyObject) {
        Menu.hidden = true;
        OpenMenu.hidden = false;
    }



}




