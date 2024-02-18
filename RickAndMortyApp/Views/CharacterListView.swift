//
//  CharacterListView.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct CharacterListView: View {
    @EnvironmentObject var router: Router
    @StateObject private var viewModel = CharacterListViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.characters) { character in
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(.blue)
                    Button(action: {
                        router.navigateTo(.characterDetails(character.id))
                    }) {
                        Text(character.name)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Characters")
            .onAppear {
                viewModel.fetchCharacters()
            }
            
            Button(action: {
                router.popToRoot()
            }) {
                Text("Initial View")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}
