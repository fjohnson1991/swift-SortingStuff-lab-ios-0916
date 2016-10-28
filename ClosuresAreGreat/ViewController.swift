//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = performOperation(with: 3, 4, 5, operatrion: +)
        _ = performOperation(with: 1, 2, 5, operatrion: -)
        _ =  performOperation(with: 9, 9, 9, 9, -5, operatrion: /)

    }
    
    func performOperation(with numbers: Double..., operatrion: (Double, Double) -> Double) -> Double {
        
        var numbers = numbers
        let initial = numbers.removeFirst()
        var operation = 0.0
        var finalResult = 0.0
        numbers.reduce(initial) { (initial, numTwo) -> Double in
            operation = operatrion(initial, numTwo)
            return operation
        }
        
        finalResult = operation
        print(finalResult)
        return finalResult
    }
    
}
