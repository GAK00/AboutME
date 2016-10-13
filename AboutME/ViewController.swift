//
//  ViewController.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/3/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    @IBOutlet weak var DarkthemeLabel: UILabel!
    @IBOutlet weak var Menu: UIStackView!
    @IBOutlet weak var OpenMenu: UIButton!
    @IBOutlet weak var ThemeSlider: UISlider!
    @IBOutlet var Screen: UIView!
    @IBOutlet weak var CloseMenu: UIButton!
    @IBOutlet weak var FullTourButton: UIButton!
    @IBOutlet weak var GamesButton: UIButton!
    @IBOutlet weak var mainText: UITextView!
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    
   
    override public func viewDidLoad() {
        super.viewDidLoad()
        mainText.frame.size.height = 50
        
        mainText.frame.origin = CGPoint(x: screenSize.width * 0.05,y:screenSize.height * 0.09)
        GamesButton.frame.origin = CGPoint(x: screenSize.width * 0.9, y: screenSize.height * 0.6)
        FullTourButton.frame.origin = CGPoint(x: screenSize.width * 0.1, y: screenSize.height * 0.6)
    
        
        LoadColorHandler()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
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
        let mainColor : UIColor = UIColor(white:darkness,alpha: 1)
        var invertedColor = UIColor(white:1-darkness,alpha: 1)
        if(invertedColor == mainColor){
           invertedColor = UIColor.blackColor()}
        Screen.backgroundColor = mainColor
        LabelColor(DarkthemeLabel, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(CloseMenu, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(OpenMenu, mainColor: mainColor, invertedColor: invertedColor)
        ButtonColor(FullTourButton,mainColor: mainColor,invertedColor: invertedColor)
        ButtonColor(GamesButton, mainColor: mainColor, invertedColor: invertedColor)
        ColorHolder.setColor(mainColor)
        ColorHolder.setInvColor(invertedColor)
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
        ColorHolder.setColor(mainColor)
        ColorHolder.setInvColor(iColor)
        Screen.backgroundColor = mainColor
        LabelColor(DarkthemeLabel, mainColor: mainColor, invertedColor: iColor)
        ButtonColor(CloseMenu, mainColor: mainColor, invertedColor: iColor)
        ButtonColor(OpenMenu, mainColor: mainColor, invertedColor: iColor)
        ButtonColor(FullTourButton,mainColor: mainColor,invertedColor: iColor)
        ButtonColor(GamesButton, mainColor: mainColor, invertedColor: iColor)
        Screen.backgroundColor = mainColor
        
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

