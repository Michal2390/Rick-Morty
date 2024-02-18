//
//  RouterView.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 17/02/2024.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct RouterView<Content: View>: View {
    @StateObject var router = Router()
    private let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationStack(path: $router.path) {
            content
                .navigationDestination(for: Router.Route.self) { route in
                    router.view(for: route)
                }
        }
        .environmentObject(router)
    }
}
