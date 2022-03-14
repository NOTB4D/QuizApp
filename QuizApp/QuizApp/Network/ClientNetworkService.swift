//
//  ClientNetworkService.swift
//  QuizApp
//
//  Created by Eser Kucuker on 14.03.2022.
//

import Foundation

protocol ClientNetworkServiceProtocol {
    func questions(completion: @escaping (QuestionsDTO?, NetworkError?)-> Void)
}


class ClientNetworkService: ClientNetworkServiceProtocol {
    
    private enum Endpoints: String{
        case endpoint = "quiz"
    }
    
    private let networkService : NetworkServiceProtocol = NetworkService()
    
    func questions(completion: @escaping (QuestionsDTO?, NetworkError?) -> Void) {
        let urlString = Endpoints.endpoint.rawValue
        networkService.get(from: urlString, completion: completion)
    }
    
    
}
