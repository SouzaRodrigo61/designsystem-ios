//
//  MainLoginSceneAuthWorker.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation
import Combine
import os.log

protocol MainSceneAuthLogic {

}

final class MainSceneAuthWorker {
    @available(iOS 14.0, *)
    private lazy var logger
        = Logger(subsystem: String(describing: self), category: "Worker")
    
    init() {
        
    }
    
    enum MainSceneAuthWorkerError: Error {
        case authFailed(String)
        case unauthorized
    }
}

extension MainSceneAuthWorker: MainSceneAuthLogic {

}
