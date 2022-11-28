//
//  LoginViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/23/22.
//

import UIKit
import CountryPickerView

class LoginViewController: UIViewController {
    
    var lui: LoginUI?
    var viewModel: LoginViewModel?
    var check = false
    let loaderView = UIView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lui = LoginUI(vc: self)
        lui?.setup()
        viewModel = LoginViewModel()
        setupObserver()
        // Do any additional setup after loading the views.
        
        lui?.loginBtn.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        lui?.flag.isUserInteractionEnabled = true
        lui?.flag.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showCountries)))
        lui?.checkMark.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeCheckMark)))
        lui?.eye.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(passwordChange)))
    }
    
    func setupObserver() {
        
        viewModel?.signinDone.bind(completion: { [weak self] response in
            
            guard let response = response else {return}
            
            if response.check {
                
                let vc1 = UINavigationController(rootViewController: SettingsViewController())
                
                let vc = CustomTabBarViewController()
                vc.setViewControllers([HomeViewController(), UIViewController(), UIViewController(), vc1], animated: false)
                let image = ["house.fill", "creditcard.fill", "headphones", "gearshape.fill"]
                let title = ["Home", "Transactions", "Support", "Settings"]
                for i in 0...3 {
                    
                    vc.viewControllers![i].title = title[i]
                    
                }
                
                for i in 0...3 {
                    
                    vc.tabBar.items![i].image = UIImage(systemName: image[i])
                    
                }
                vc.modalPresentationStyle = .fullScreen
                self?.loaderView.removeFromSuperview()
                self?.present(vc, animated: true)
            }else {
                
                self?.loaderView.removeFromSuperview()
                //self?.view.showtoast(message2: response.description)
                let alert = UIAlertController(title: "Something went wrong", message: response.description, preferredStyle: .actionSheet)
                alert.addAction(UIAlertAction(title: "Got it", style: .cancel, handler: {_ in 
                    alert.dismiss(animated: true)
                }))
                self?.present(alert, animated: true)
            }
        })
    }
    
    @objc func loginAction(_ sender: UIButton) {
        
        
        
        loaderView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(loaderView)
        loaderView.backgroundColor = .white
        loaderView.alpha = 0.3
        
        let loader = UIActivityIndicatorView()
        loaderView.addCordinateSubviewToCentre(view: loader, width: 30, height: 30)
        loader.startAnimating()
        
        viewModel?.Login(phone: lui?.phoneField.text ?? "", password: lui?.passField.text ?? "")
        
    }
    
    @objc func showCountries() {
        
        let vc = CountryViewController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func changeCheckMark() {
        
        if !check {
            lui?.checkMark.image = UIImage(systemName: "checkmark.square")
            lui?.checkMark.tintColor = ConstantsElements.gold
            check = true
        }else {
            lui?.checkMark.image = UIImage(systemName: "square")
            lui?.checkMark.tintColor = ConstantsElements.nameColor
            check = false
        }
    }
    
    @objc func passwordChange() {
        
        if lui!.passField.isSecureTextEntry {
            lui?.eye.image = UIImage(systemName: "eye.slash")
            lui?.passField.isSecureTextEntry = false
        }else {
            lui?.eye.image = UIImage(systemName: "eye")
            lui?.passField.isSecureTextEntry = true
        }
    }
    
}

extension LoginViewController : CountrySelected {
    
    func countrySelected(image: UIImage, code: String) {
        lui?.flag.image = image
        lui?.phoneField.text = code
    }
    
}


