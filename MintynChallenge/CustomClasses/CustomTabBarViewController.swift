//
//  CustomTabBarViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/23/22.
//

import UIKit

class CustomTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    let customTabBar = CustomTabBar()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setValue(customTabBar, forKey: "tabBar")
        
        self.delegate = self
        tabBar.tintColor = ConstantsElements.gold
        //tabBar.backgroundColor = .black
        tabBar.isTranslucent = false
        tabBar.unselectedItemTintColor = .white
        setupMiddleButton()
    }
    
    func setupMiddleButton() {
        
        let btn = UIView()
        btn.backgroundColor = ConstantsElements.gold
        btn.layer.cornerRadius = 8
        self.tabBar.centreHorizontally(view: btn, y: -20, height: 40, width: 40)
        
        let img = UIImageView(image: UIImage(systemName: "square.grid.2x2"))
        img.tintColor = .white
        img.constraint(width: 30, height: 30)
        btn.addSubview(img)
        img.centre(centerX: btn.centerXAnchor, centreY: btn.centerYAnchor)
        
        let more = UILabel()
        more.text = "More"
        more.textColor = .white
        more.font = UIFont.systemFont(ofSize: 10)
        self.tabBar.addSubview(more)
        more.constraint(equalToTop: btn.bottomAnchor, paddingBottom: 12)
        more.centre(centerX: self.tabBar.centerXAnchor)
        
        self.view.layoutIfNeeded()
    }
}
