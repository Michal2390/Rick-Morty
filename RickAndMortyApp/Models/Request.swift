//
//  Request.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

public enum Endpoint {
    
    case characters
    case character(String)
    case locations
    case location(String)
    case episodes
    case episode(String)

    public var url: String {
        switch self {
        case .characters: return "character"
        case .character(let id): return "character" + "/" + id
        case .locations: return "location"
        case .location(let id): return "location" + "/" + id
        case .episodes: return "episode"
        case .episode(let id): return "episode" + "/" + id
        }
    }
}

public struct RequestURLComponents {
    var scheme: String
    var host: String
    
    static let shared = Self.init(scheme: Constants.sheme, host: Constants.host)
}

public struct Request {
    
    let endpoint: Endpoint
    var urlComponents: RequestURLComponents = .shared
    var method: HTTPMethod = .get
    
    var url: URL? {
        let requestEndpoint = endpoint.url
        let url = urlComponents.scheme + urlComponents.host + requestEndpoint
        guard let endpoint = URL(string: url) else { return nil }
        
        return URL(string: endpoint.absoluteString)
    }
    
}
