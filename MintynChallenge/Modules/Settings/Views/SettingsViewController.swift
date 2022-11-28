//
//  SettingsViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var ui: settingsUI?
    var childShow = false

    override func viewDidLoad() {
        super.viewDidLoad()

        ui = settingsUI(vc: self)
        ui?.setup()
        ui?.profileView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showChildren)))
        ui?.legal.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showLegal)))
        ui?.system.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showSystem)))
        ui?.logout.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(logout)))
        // Do any additional setup after loading the view.
    }
    
    @objc func showChildren() {
        
        if !childShow {
            ui?.arrow1.image = UIImage(systemName: "chevron.down")
            ui?.profileChildrenView.frame = CGRect(x: 57, y: 60, width: ui!.contentView.frame.width - (41 + 32), height: 200)
            ui?.profileChildrenView.alpha = 1
            childShow = true
        }else {
            ui?.arrow1.image = UIImage(systemName: "chevron.forward")
            ui?.profileChildrenView.alpha = 0
            ui?.profileChildrenView.frame = CGRect(x: 57, y: 50, width: ui!.contentView.frame.width - (41 + 32), height: 0)
            childShow = false
            self.ui?.contentView.bringSubviewToFront(ui!.profileView)
        }
    }
    
    @objc func showLegal() {
        
        show(check: "legal")
    }
    
    @objc func showSystem() {
        
        show(check: "system")
    }
    
    func show(check: String) {
        
        let vc = SystemViewController()
        vc.check = check
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func logout() {
        
        self.tabBarController?.dismiss(animated: true)
    }

}
