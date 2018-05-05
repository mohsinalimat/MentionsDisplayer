//
//  DropDown+Appearance.swift
//  DropDown
//
//  Created by Kevin Hirsch on 13/06/16.
//  Copyright © 2016 Kevin Hirsch. All rights reserved.
//

import UIKit

extension DropDown {
	public class func setupDefaultAppearance() {
		let appearance = DropDown.appearance()
		appearance.cellHeight = DPDConstant.UI.RowHeight
		appearance.backgroundColor = DPDConstant.UI.BackgroundColor
		appearance.selectionBackgroundColor = DPDConstant.UI.SelectionBackgroundColor
		appearance.separatorColor = DPDConstant.UI.SeparatorColor
		appearance.cornerRadius = DPDConstant.UI.CornerRadius
		appearance.shadowColor = DPDConstant.UI.Shadow.Color
		appearance.shadowOffset = DPDConstant.UI.Shadow.Offset
		appearance.shadowOpacity = DPDConstant.UI.Shadow.Opacity
		appearance.shadowRadius = DPDConstant.UI.Shadow.Radius
		appearance.animationduration = DPDConstant.Animation.Duration
		appearance.textColor = DPDConstant.UI.TextColor
		appearance.textFont = DPDConstant.UI.TextFont
	}

    public class func ConfigureDropDownforCreatePost(dropdown:DropDown){
        let appearance = DropDown.appearance()
        appearance.cellHeight = 50
        appearance.backgroundColor = UIColor.white
        appearance.selectionBackgroundColor = UIColor(red: 0.6494, green: 0.8155, blue: 1.0, alpha: 0.2)
        appearance.cornerRadius = 0
        appearance.shadowColor = DPDConstant.UI.Shadow.Color
        appearance.animationduration = 0.10
        dropdown.textColor = .black
        dropdown.shadowColor = UIColor.clear
        dropdown.shadowRadius = 0.0
        dropdown.shadowOpacity = 0.0
        DropDown.startListeningToKeyboard()        
    }
}
