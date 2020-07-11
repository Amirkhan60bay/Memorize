//
//  Theme.swift
//  Memorize
//
//  Created by Amirkhan Alpysabayev on 6/29/20.
//  Copyright © 2020 Amirkhan Alpyspayev. All rights reserved.
//

import Foundation

struct Theme {
    
    static var themes = ["Halloween", "Food", "Sports", "Vehicles", "Places", "Flags"]
    var name = themes[Int.random(in: 0..<themes.count)]
    

    //themes[Int.random(in: 0..<themes.count)]
    
    var emojis: [String] {
        switch name {
        case "Halloween":
            return ["👻","🎃","🕷","🧛🏻‍♂️","💀"]
        case "Food":
            return ["🍔","🍙","🍕","🌮","🍫"]
        case "Sports":
            return ["⚽️","🏀","🎾","🏓","🏂"]
        case "Vehicles":
            return ["🚁","✈️","🚄","🛥","🚗"]
        case "Places":
            return ["🗽","🗿","🕋","⛩","🏰"]
        case "Flags":
            return ["🏁","🏴‍☠️","🇭🇰","🇰🇿","🇯🇵"]
        default:
            return ["1","2","3","4","5"]
        }
    }
    
    var numberOfPairs = Int.random(in: 2...5)
    
    var color: String {
        switch name {
        case "Halloween":
            return "orange"
        default:
            return "green"
        }
    }
}
