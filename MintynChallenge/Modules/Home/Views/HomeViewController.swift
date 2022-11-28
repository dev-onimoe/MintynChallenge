//
//  HomeViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var hui: homeUI?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .black
        hui = homeUI(vc: self)
        hui?.setup()
    }

}
