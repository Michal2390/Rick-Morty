//
//  CharacterDetailsView.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct CharacterDetailsView: View {
    let characterID: Int
    @EnvironmentObject var router: Router
    @ObservedObject private var characterDetailsViewModel: CharacterDetailsViewModel
    
    init(characterID: Int) {
        self.characterID = characterID
        self.characterDetailsViewModel = CharacterDetailsViewModel()
    }
    
    var body: some View {
        VStack {
            if let character = characterDetailsViewModel.character {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                Text(character.name)
                    .font(.title)
                    .padding()
                Text(character.status)
                    .padding()
                Text(character.gender)
                    .padding()
                Text(character.origin.name)
                    .padding()
                Text(character.location.name)
                    .padding()
            } else {
                ProgressView()
            }
        }
        .onAppear {
            characterDetailsViewModel.fetchCharacter(characterID: characterID)
        }
    }
}

