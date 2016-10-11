//
//  ColorHolder.swift
//  AboutME
//
//  Created by Kunz, Geran on 10/11/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
public class ColorHolder{
    public static var Color: UIColor = UIColor.brownColor()
    public static func setColor(mainColor: UIColor){
        Color = mainColor
    }
    
    public static func getColor()->UIColor{
    return Color
    }
    
}
