//
//  ViewController.swift
//  QuizApp
//
//  Created by Eser Kucuker on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {

 var viewModel = QuizeViewModel(service: appContainer.service)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }


}

