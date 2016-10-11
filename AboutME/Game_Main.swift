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
class Game_Main: UIViewController{
    @IBOutlet weak var ThemeSlider: UISlider!
    @IBOutlet var Screen: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorHolder()
        
        
    }
    func ColorHander (){
        let darkness: CGFloat = CGFloat(ThemeSlider.value)
        let testMain :UIColor = ColorHolder.getColor()
        let mainColor : UIColor
        if(testMain != UIColor.brownColor()){mainColor = testMain}
        else{mainColor = UIColor(white:darkness,alpha: 1)}
        var invertedColor = UIColor(white:1-darkness,alpha: 1)
        if(invertedColor == mainColor){
            invertedColor = UIColor.blackColor()}
        Screen.backgroundColor = mainColor
       
    }

}




