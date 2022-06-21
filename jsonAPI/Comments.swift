//
//  Comments.swift
//  jsonAPI
//
//  Created by Cooper Hull on 6/21/22.
//

import SwiftUI

struct Comments: Codable, Identifiable {
    let id = UUID()
    let name: String
    let email: String
    let body: String
    
}