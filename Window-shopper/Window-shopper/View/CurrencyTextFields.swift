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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLBL = UILabel(frame: CGRect(x: 10, y: (frame.size.height/2 - size/2), width: size, height: size))
        currencyLBL.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.6970515839)
        currencyLBL.textAlignment = .center
        currencyLBL.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLBL.layer.cornerRadius = 5.0
        currencyLBL.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLBL.text = formatter.currencySymbol
        
        addSubview(currencyLBL)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CustomizeView()
        }
    
    func CustomizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
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
