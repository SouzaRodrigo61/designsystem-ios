//
//  SceneFactory.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation
import UIKit

protocol SceneFactory {
    var configurator: MainSceneConfigurator! { get set }
    func makeLoginScene() -> UIViewController
}

final class DefaultSceneFactory: SceneFactory {
    var configurator: MainSceneConfigurator!
    
    func makeLoginScene() -> UIViewController {
        let viewController = MainSceneViewController()
        return configurator.configured(viewController)
    }
}
