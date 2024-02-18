//
//  RickAndMortyAppApp.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import SwiftUI

@available(iOS 16.0, *)
@main
struct RickAndMortyAppApp: App {
    var body: some Scene {
           WindowGroup {
               RouterView {
                   InitialView()
               }
               .environmentObject(Router())
           }
       }
}
