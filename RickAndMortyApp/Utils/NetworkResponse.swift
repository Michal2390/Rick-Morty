//
//  NetworkResponse.swift
//  RickAndMortyApp
//
//  Created by Michal Fereniec on 16/02/2024.
//

import Foundation

struct NetworkResponse {
    
    var data: Data?
    var httpHeader: [AnyHashable: Any]?
    var statusCode: Int
    
    var isSuccess: Bool {
        return statusCode >= 200 && statusCode <= 299
    }
}
