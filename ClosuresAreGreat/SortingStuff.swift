//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    mutating func sortShips() {
        let sortedShips = ships.sorted { (shipOne, shipTwo) -> Bool in
            if shipOne.name == "Titanic" {
                return true
            } else if shipTwo.name == "Titanic" {
                return false
            }
            if shipOne.age > shipTwo.age {
                return true
            }
            return false
        }
        ships = sortedShips
    }
    
    
    mutating func sortBooks() {
        let sortedBooks = books.sorted { $0.name < $1.name }
        books = sortedBooks
    }
    
    mutating func sortBowlingPins() {
        let sortedBowlingPins = bowlingPins.sorted { $0.color.rawValue < $1.color.rawValue }
        bowlingPins = sortedBowlingPins
    }

    mutating func sortMusicCDs() {
        let sortedMusicCDs = musicCDs.sorted { (musicOne, musicTwo) -> Bool in
            if musicOne.name == "Drake" {
                return true
            } else if musicTwo.name == "Drake" {
                return false
            }
            
            if musicOne.name < musicTwo.name {
                return true
            } else {
                
                return false
            }
        }
        musicCDs = sortedMusicCDs
    }
    
    
    mutating func changeColorOfAllPins(to color: Color) {
        let newPins = bowlingPins.map { (pin) -> BowlingPin in
            var colorPin = pin
            colorPin.changeColor(to: color)
            return colorPin
        }
        
        bowlingPins = newPins
    }
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
    
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}


struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
