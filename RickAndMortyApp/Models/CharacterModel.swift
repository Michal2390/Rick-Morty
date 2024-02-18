//
//  CharacterModel.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

struct CharacterModel: Decodable {
    let info: InfoModel
    let results: [Character]
}

struct InfoModel: Decodable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
