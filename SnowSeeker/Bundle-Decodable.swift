//
//  Bundle-Decodable.swift
//  SnowSeeker
//
//  Created by A.F. Adib on 15/10/24.
//

import Foundation

extension Bundle {
    
    func decode<T: Decodable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate data \(file) in the bundle")
        }
        
        guard let data = try? Data(contentsOf: url ) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key \(key) - \(context.debugDescription)")
        }
    }
}
