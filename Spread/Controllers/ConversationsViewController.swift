//
//  ViewController.swift
//  Spread
//
//  Created by Ana Dzamelashvili on 11/15/21.
//

import UIKit
import FirebaseAuth


class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        DatabaseManager.shared.tes()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //userdefault saving data
        
        validateAuth()
            
        }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false) //animation has to be added later
            
            
        }
    }
    




}
