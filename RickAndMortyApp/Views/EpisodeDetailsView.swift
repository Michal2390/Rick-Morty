//
//  EpisodeDetailsView.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct EpisodeDetailsView: View {
    let episodeID: Int
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Image(systemName: "tv.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .padding()
            
            Text("Episode ID: \(episodeID)")
                .font(.title)
                .padding()
            
            Button(action: {
                router.navigateTo(.charactersList)
            }) {
                Text("Go back")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Episode Details")
    }
}
