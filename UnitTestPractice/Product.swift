//
//  Product.swift
//  UnitTestPractice
//
//  Created by Eloisa Falcão on 07/04/20.
//  Copyright © 2020 Eloisa Falcão. All rights reserved.
//

import Foundation

enum ClotheType {
    case Top
    case Dress
    case Shoes
    case Underwear
}

enum Gender {
    case Female
    case Male
    case Queer
}

enum Coupon: Double {
    case RegularCustomer = 50.0
    case FistTime = 10.0
}

class Clothes {
    var price = 0.0
    var type: ClotheType
    var gender: Gender

    init(price: Double, type: ClotheType, gender: Gender) {
        self.price = price
        self.type = type
        self.gender = gender
    }

    func apply(_ coupon: Coupon) {
        let multiplier = 1 - coupon.rawValue / 100
        price *= multiplier
    }

    



}

