//
//  MenuBaseController.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/14/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
class MenuBaseController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func LoadColorHandler (Slider : UISlider,Screen : UIView, DarkthemeLabel : UILabel,CloseMenu : UIButton, OpenMenu : UIButton,Home : UIButton
        ){
    let darkness: CGFloat = CGFloat(Slider.value)
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
    Screen.backgroundColor = mainColor
    Screen.backgroundColor = mainColor
    LabelColor(DarkthemeLabel, mainColor: mainColor, invertedColor: iColor)
    ButtonColor(CloseMenu, mainColor: mainColor, invertedColor: iColor)
    ButtonColor(OpenMenu, mainColor: mainColor, invertedColor: iColor)
    ButtonColor(Home,mainColor: mainColor,invertedColor: iColor)
    ColorHolder.setColor(mainColor)
    ColorHolder.setInvColor(iColor)
}

func ColorHander (Slider : UISlider,Screen : UIView, DarkthemeLabel : UILabel,CloseMenu : UIButton, OpenMenu : UIButton,Home : UIButton){
    let darkness: CGFloat = CGFloat(Slider.value)
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
   func autoColor(object : NSCoding){
        if let button:UIButton =  object as? UIButton {
         ButtonColor(button, mainColor: ColorHolder.getColor(), invertedColor: ColorHolder.getInvColor())
        }
        if let Label:UILabel =  object as? UILabel {
            LabelColor(Label, mainColor: ColorHolder.getColor(), invertedColor: ColorHolder.getInvColor())
        }
    }
func LabelColor(label: UILabel,mainColor: UIColor, invertedColor: UIColor){
    label.backgroundColor = invertedColor
    label.textColor = mainColor
}
    func OpenMenuNow(Menu : UIStackView, OpenMenu : UIButton) {
        Menu.hidden = false;
        OpenMenu.hidden = true;
    }
    
    func CloseMenuNow(Menu : UIStackView, OpenMenu : UIButton) {
        Menu.hidden = true;
        OpenMenu.hidden = false;
    }

}