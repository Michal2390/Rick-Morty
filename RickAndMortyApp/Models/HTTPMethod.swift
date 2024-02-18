//
//  HTTPMethod.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

enum HTTPMethod {
    case get
    
    var string: String {
        switch self {
        case .get: return "GET"
        }
    }
}
