//
//  Helper.swift
//  CleanFood
//
//  Created by Ewald Kerner on 16.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import Foundation

import UIKit

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}

struct ItemSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [Articles]
}

struct Articles: Codable, Identifiable, Equatable {
    var id: UUID
    var name: String
    var price: Float
    
    static let example = Articles(id: UUID(), name: "Garips", price: 6)
}
