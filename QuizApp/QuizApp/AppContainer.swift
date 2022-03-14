//
//  AppContainer.swift
//  QuizApp
//
//  Created by Eser Kucuker on 14.03.2022.
//

import Foundation

let appContainer = AppContainer()

class AppContainer {
    let service: ClientNetworkServiceProtocol = ClientNetworkService()
}
