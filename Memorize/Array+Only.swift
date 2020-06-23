//
//  Array+Only.swift
//  Memorize
//
//  Created by Amirkhan Alpysabayev on 6/24/20.
//  Copyright © 2020 Amirkhan Alpyspayev. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
