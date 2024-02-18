//
//  ContentView.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    var body: some View {
        RouterView {
            CharacterListView()
        }
    }
}
