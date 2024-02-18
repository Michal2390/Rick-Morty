//
//  InitialView.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 18/02/2024.
//

import Foundation

import SwiftUI

@available(iOS 16.0, *)
struct InitialView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
                .padding()
            
            Text("Welcome! Please tap the button below to load character list.")
                .padding()
            
            Button(action: {
                router.navigateTo(.charactersList)
            }) {
                Text("Load Character List")
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
