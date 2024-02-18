//
//  NetworkError.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case invalidImageID(Int)
    case decodingError
}
