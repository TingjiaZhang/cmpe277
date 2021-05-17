//
//  ViewController.swift
//  cmpe277hw2
//
//  Created by 张廷嘉 on 5/17/21.
//

import UIKit

class ConversactionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLogged_in = UserDefaults.standard.bool(forKey: "Logged_in")
        
        if !isLogged_in {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated:false)
        }
    }

}

