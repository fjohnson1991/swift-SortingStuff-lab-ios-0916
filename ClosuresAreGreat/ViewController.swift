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
        
        performOperation(with: 3, 4, 5) { (numOne, numTwo) -> Double in

            return 0
        }

        
    }
    
    func performOperation(with numbers: Double..., operatrion: (Double, Double) -> Double) -> Double {
        var returnVar = numbers
        numbers.reduce(numbers[0]) { (numOne, numTwo) -> Double in
            print("numOne: \(numOne)")
            print("numTwo: \(numTwo)")
            // either want to ignore numOne after the first iteration or make numOne = numTwo and ignore numTwo -> returning a double so somehow return the num you want to use in next iteration? 
            if numTwo != numbers[0] {
                returnVar.remove(at: 0)
            }
            returnVar = numbers
//            if sum < numOne {
//                sum += numOne
//                sum - numTwo
//
//            } else {
//                sum += numTwo
//            }
//            
//            print("sum \(sum)")
//            return numOne
//        }
        
//        return sum
            print(returnVar)
            return numbers
        }
        
        return numbers
    }
    
}
