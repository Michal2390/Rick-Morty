//
//  Protagonist.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

struct Character: Decodable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
}

struct Origin: Decodable {
    let name: String
    let url: String
}

struct Location: Decodable {
    let name: String
    let url: String
}
