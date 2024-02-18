//
//  BaseViewModel.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation
import Combine

class BaseViewModel: ObservableObject {
    var cancellables = Set<AnyCancellable>()
    
    public func clear() {
        cancellables = .init()
    }
    
    public init() {
        onInit()
    }
    
    func onInit() {}
}
