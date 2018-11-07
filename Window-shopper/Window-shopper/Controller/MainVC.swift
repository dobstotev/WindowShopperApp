//
//  ViewController.swift
//  Window-shopper
//
//  Created by Dobs Totev on 07/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var WageTXT: CurrencyTextFields!
    @IBOutlet weak var PriceTXT: CurrencyTextFields!
    @IBOutlet weak var resultLBL: UILabel!
    @IBOutlet weak var hoursLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calcBTN = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBTN.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBTN.setTitle("Calculate", for: .normal)
        calcBTN.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBTN.addTarget(self, action: #selector(MainVC.Calculate), for: .touchUpInside)
        
        WageTXT.inputAccessoryView = calcBTN
        PriceTXT.inputAccessoryView = calcBTN
        
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        

        
    }
    
    @objc func Calculate(){
        if let RealWageTXT = WageTXT.text, let RealPriceTXT = PriceTXT.text {
            if let wage = Double(RealWageTXT), let price = Double(RealPriceTXT) {
                view.endEditing(true)
                resultLBL.isHidden = false
                hoursLBL.isHidden = false
                resultLBL.text = ("\(Wage.getHours(forWage: wage, andPrice: price))")
            }
        }
    }
    
    @IBAction func ClearCalcBTN(_ sender: Any) {
        resultLBL.isHidden = true
        hoursLBL.isHidden = true
        WageTXT.text = ""
        PriceTXT.text = ""
    }


}

