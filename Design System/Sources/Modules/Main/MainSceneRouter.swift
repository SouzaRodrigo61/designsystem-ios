//
//  MainSceneRouter.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation
import UIKit

protocol MainSceneRoutingLogic {
    
}

final class MainSceneRouter {
    weak var source: UIViewController?
    
    private let sceneFactory: SceneFactory
    
    init(sceneFactory: SceneFactory) {
        self.sceneFactory = sceneFactory
    }
}

extension MainSceneRouter: MainSceneRoutingLogic {

}
