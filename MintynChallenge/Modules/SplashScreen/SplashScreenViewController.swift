//
//  SplashScreenViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/23/22.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: {
            
            let vc = UINavigationController(rootViewController: LoginViewController())
            self.present(vc, animated: true)
            
        })
        // Do any additional setup after loading the view.
    }
    
    func setup() {
        let view = self.view
        view?.backgroundColor = .black
        
        let logo = UIImageView(image: UIImage(named: "mintynLogo"))
        view?.centreHorizontally(view: logo, y: (view!.frame.height * 0.5) - 100.0, height: 100, width: 100)
        
        let name = UILabel()
        name.text = "MINTYN"
        name.font = ConstantsElements.spectral(size: 25)
        name.textColor = ConstantsElements.nameColor
        view?.addSubview(name)
        name.constraint(equalToTop: logo.bottomAnchor, paddingTop: 1)
        name.centre(centerX: view?.centerXAnchor)
        
    }
   
}
