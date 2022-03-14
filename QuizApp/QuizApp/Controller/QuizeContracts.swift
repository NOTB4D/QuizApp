//
//  QuizeContracts.swift
//  QuizApp
//
//  Created by Eser Kucuker on 14.03.2022.
//

import Foundation

protocol QuizeViewModelProtocol {
    var delegete : QuizeViewModelDelegete? {get set}
    func viewDidLoad()
}

enum QuizeViewModelOutput {
    case showQuize([QuizePresentation])
}

protocol QuizeViewModelDelegete: NSObject{
    func handleOutput (_ output: QuizeViewModelOutput)
}
