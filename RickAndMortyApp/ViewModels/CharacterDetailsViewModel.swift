//
//  CharacterDetailsViewModel.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

@MainActor
class CharacterDetailsViewModel: BaseViewModel {
    @Published var character: Character?
    
    private let webService = WebService()
    
    func fetchCharacter(characterID: Int) {
        Task {
            do {
                self.character = try await self.webService.getCharacter(characterID: characterID)
            } catch {
                print(NetworkError.decodingError)
            }
        }
    }
}
