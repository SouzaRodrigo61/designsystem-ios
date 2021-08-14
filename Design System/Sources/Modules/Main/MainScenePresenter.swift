//
//  MainScenePresenter.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation
import UIKit

typealias MainScenePresenterInput = MainInteractorOutput
typealias MainScenePresenterOutput = MainSceneViewControllerInput

final class MainScenePresenter {
    weak var viewController: MainScenePresenterOutput?
}

extension MainScenePresenter: MainScenePresenterInput {
    func showLogingFailure(message: String) {
        dispatchPrecondition(condition: .onQueue(.main))
        
    }
    
    func showLogingSuccess() {
        dispatchPrecondition(condition: .onQueue(.main))
    }
}
