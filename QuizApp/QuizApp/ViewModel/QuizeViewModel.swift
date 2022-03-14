//
//  QuizeViewModel.swift
//  QuizApp
//
//  Created by Eser Kucuker on 14.03.2022.
//

import Foundation
import UIKit


class QuizeViewModel: QuizeViewModelProtocol {

    
    weak var delegete: QuizeViewModelDelegete?
    
    private var quizes: QuestionsDTO?
    let service: ClientNetworkServiceProtocol
    
    init(service: ClientNetworkServiceProtocol){
        self.service = service
    }
    
    func viewDidLoad() {
        getQuize()
    }
    
    func getQuize(){
        service.questions {
            [weak self] response, error in
            guard let self = self else {return}
            guard let response = response else {return}
            let quize = response
            self.quizes = quize
        }
    }
}
