//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Amirkhan Alpysabayev on 6/24/20.
//  Copyright © 2020 Amirkhan Alpyspayev. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id{
                return index
            }
        }
        return nil
    }
}
