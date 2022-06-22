//
//  Comments.swift
//  jsonAPI
//
//  Created by Cobre on 6/21/22.
//

import SwiftUI

//struct Comments: Codable, Identifiable {
//    let id = UUID()
//    let givenName: String
//    let familyName: String
//    let url: String
//}


struct Root : Decodable {
    private enum CodingKeys : String, CodingKey { case mrdata = "MRData" }
    let mrdata : MRData
}

struct MRData : Decodable {
    private enum CodingKeys : String, CodingKey { case drivertable = "DriverTable" }
    let drivertable : DriverTable
}

struct DriverTable : Decodable {
    private enum CodingKeys : String, CodingKey { case drivers = "Drivers" }
    let drivers : Drivers
}

struct Drivers : Decodable, Identifiable {
    let id = UUID()
    let givenName: String
    let familyName: String
    let url: String
}





//struct Root : Decodable {
//    private enum CodingKeys : String, CodingKey { case raw = "RAW" }
//    let raw : RAW
//}

//struct RAW : Decodable {
//    private enum CodingKeys : String, CodingKey { case eth = "ETH" }
//    let eth : ETH
//}

//struct ETH : Decodable {
//    private enum CodingKeys : String, CodingKey { case usd = "USD" }
//    let usd : USD
//}

//struct USD : Decodable {
//
//    private enum CodingKeys : String, CodingKey {
//        case type = "TYPE"
//        case market = "MARKET"
//        case price = "PRICE"
//        case percentChange24h = "CHANGEPCT24HOUR"
//    }
//    let type : String
//    let market : String
//    let price : Double
//    let percentChange24h : Double
//}
