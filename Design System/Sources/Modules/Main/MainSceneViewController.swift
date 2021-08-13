//
//  MainSceneViewController.swift
//  Design System
//
//  Created by Rodrigo Santos on 13/08/21.
//

import Foundation
import UIKit

final class MainSceneViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        self.title = "Main View"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Prefere Large 
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    
}
