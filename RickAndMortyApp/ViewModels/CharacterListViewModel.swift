//
//  CharacterListViewModel.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

@MainActor
final class CharacterListViewModel: BaseViewModel {
    @Published var characters: [Character] = []
    
    private let webService = WebService()
    
    func fetchCharacters() {
        Task {
            do {
                self.characters = try await self.webService.getCharacters()
            } catch {
                print(NetworkError.decodingError)
            }
        }
    }
}
