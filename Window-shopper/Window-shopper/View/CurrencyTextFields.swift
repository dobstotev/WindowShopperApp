//
//  CurrencyTextFields.swift
//  Window-shopper
//
//  Created by Dobs Totev on 07/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import UIKit

//Makes the class stylings appear in the interface building
@IBDesignable

class CurrencyTextFields: UITextField {
    
    override func prepareForInterfaceBuilder() {
        CustomizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomizeView()
        }
    
    func CustomizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //Using the placeholder of a text field and setting it to an empty value with ""
        if let p = placeholder {
            
            //Creating a constant that has a custom color for the placeholder text
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            
            
            //Overwriting the existing placeholder to the new placeholder style
            attributedPlaceholder = place
            
            //Setting the text color
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
