//
//  MainSceneInteractor.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation

typealias MainSceneInteractorInput = MainSceneViewControllerOutput

protocol MainInteractorOutput: AnyObject {
    
}

final class MainSceneInteractor {
    var presenter: MainScenePresenterInput?
    var authWorker: MainSceneAuthLogic?
}

extension MainSceneInteractor: MainSceneInteractorInput {
    
}
