//
//  ListJson.swift
//  ListView
//
//  Created by Abhishek Gautam on 19/08/23.
//

import Foundation

//Detail Structure
struct Detail: Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: Category
    let image: String
    let rating: Rating
    
    static let detail : [Detail] = Bundle.main.decode(file: "data.json")
    static let sampleDetail : Detail = detail[0]
}

enum Category: String, Codable {
    case electronics = "electronics"
    case jewelery = "jewelery"
    case menSClothing = "men's clothing"
    case womenSClothing = "women's clothing"
}


struct Rating: Codable {
    let rate: Double
    let count: Int
}

//typealias Welcome = [WelcomeElement]

extension Bundle{
    func decode<T:Decodable>(file : String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil)
        else {
            fatalError ("Could not find \(file) in the project.")
        }
        guard let data = try? Data(contentsOf: url)
        else {
            fatalError ("Could not  load\(file) in the project.")
        }
        
        let decoder = JSONDecoder()
        guard let loadedData = try? decoder.decode(T.self, from: data)
        else {
            fatalError ("Could not decode \(file) in the project.")
        }
        
        return loadedData
    }
    
}

