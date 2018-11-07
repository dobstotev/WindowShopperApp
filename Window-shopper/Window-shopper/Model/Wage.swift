//
//  Wage.swift
//  Window-shopper
//
//  Created by Dobs Totev on 07/11/2018.
//  Copyright © 2018 Dobs Totev. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
