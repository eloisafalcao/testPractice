//
//  ViewController.swift
//  UnitTestPractice
//
//  Created by Eloisa Falcão on 07/04/20.
//  Copyright © 2020 Eloisa Falcão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
//        ferrari.start(minutes: 120)
//        print(ferrari.miles) // => 140

        let balletShoes = Clothes(price: 85.48, type: .Shoes, gender: .Female)
        balletShoes.apply(.FistTime)
        


    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

