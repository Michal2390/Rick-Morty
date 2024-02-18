//
//  Router.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 17/02/2024.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
class Router: ObservableObject {
    enum Route: Hashable {
        case charactersList
        case characterDetails(Int)
        case episodeDetails(Int)
    }
    
    @Published var path: NavigationPath = NavigationPath()
    
    static let shared = Router()
    
    func navigateTo(_ route: Route) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
        case .charactersList:
            CharacterListView()
        case .characterDetails(let characterID):
            CharacterDetailsView(characterID: characterID)
        case .episodeDetails(let episodeID):
            EpisodeDetailsView(episodeID: episodeID)
        }
    }
}
