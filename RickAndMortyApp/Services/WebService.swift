//
//  WebService.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

class WebService {
    func getCharacters() async throws -> [Character] {
        let request: Request = .init(endpoint: .characters)
        guard let urlRequest = buildURLRequest(from: request) else { throw NetworkError.badURL }
        let characterModel: CharacterModel = try await fetchData(from: urlRequest)
        
        return characterModel.results
    }
    func getCharacter(characterID: Int) async throws -> Character {
        let request: Request = .init(endpoint: .character(String(characterID)))
        guard let urlRequest = buildURLRequest(from: request) else { throw NetworkError.badURL }
        
        return try await fetchData(from: urlRequest)
    }
    
    private func fetchData<T: Decodable>(from urlRequest: URLRequest) async throws -> T {
        async let (data, _) = URLSession.shared.data(for: urlRequest)
        return try await JSONDecoder().decode(T.self, from: data)
    }
    
    private func buildURLRequest(from request: Request) -> URLRequest? {
        guard let requestURL = request.url else { return nil }
        
        var urlRequest = URLRequest(url: requestURL)
        urlRequest.httpMethod = request.method.string
        
        return urlRequest
    }
}
