//
//  MainSceneFactory.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation
import UIKit

protocol MainSceneConfigurator {
    func configured(_ viewController: UIViewController) -> UIViewController
}

final class DefaultMainSceneConfigurator: MainSceneConfigurator {
    private var sceneFactory: SceneFactory
    
    init(sceneFactory: SceneFactory) {
        self.sceneFactory = sceneFactory
    }
    
    func configured(_ viewController: UIViewController) -> UIViewController {
        sceneFactory.configurator = self
        
        return viewController
    }
}
