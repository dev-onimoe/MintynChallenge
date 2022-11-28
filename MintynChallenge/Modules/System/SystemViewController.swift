//
//  SystemViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/28/22.
//

import UIKit

class SystemViewController: UIViewController {
    
    var check = ""
    var mark3 = UIImageView(image: UIImage(systemName: "iphone.and.arrow.forward"))

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let view = self.view else {return}
        view.backgroundColor = .black
        self.navigationController?.isNavigationBarHidden = true
        if check == "system" {
            systemSetup(view: view)
        }else {
            
            legalSetup(view: view)
        }
    }

    func systemSetup(view: UIView) {
        
        let notView = UIView()
        notView.backgroundColor = ConstantsElements.darkGold
        view.addSubview(notView)
        notView.constraint(equalToTop: view.topAnchor, equalToLeft: view.leadingAnchor, paddingTop: 48, paddingLeft: 8)
        notView.isUserInteractionEnabled = true
        notView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(backAction)))
        
        let notIcon = UIImageView(image: UIImage(systemName: "arrow.backward"))
        notIcon.tintColor = .white
        notView.addSubview(notIcon)
        notIcon.constraint(equalToTop: notView.topAnchor, equalToBottom: notView.bottomAnchor, equalToLeft: notView.leadingAnchor, equalToRight: notView.trailingAnchor, paddingTop: 4, paddingBottom: 4, paddingLeft: 4, paddingRight: 4, width: 20, height: 20)
        notView.layoutIfNeeded()
        notView.layer.cornerRadius = notView.frame.size.height / 2
        
        let welcome = UILabel()
        welcome.text = "System"
        welcome.textColor = .white
        welcome.font = ConstantsElements.regularFont(size: 15)
        view.addSubview(welcome)
        welcome.centre(centerX: view.centerXAnchor, centreY: notView.centerYAnchor)
        
        let appearance = UILabel()
        appearance.text = "Appearance"
        appearance.textColor = ConstantsElements.nameColor
        appearance.font = ConstantsElements.regularFont(size: 10)
        appearance.frame = CGRect(x: 16, y: 130, width: view.frame.width, height: 15)
        view.addSubview(appearance)
        //appearance.constraint(equalToTop: welcome.bottomAnchor, equalToLeft: view.leadingAnchor, paddingTop: 32, paddingLeft: 16)
        
        let def = UILabel()
        def.text = "Default"
        def.textColor = .white
        def.font = ConstantsElements.regularFont(size: 15)
        def.frame = CGRect(x: 16, y: 145 + 12, width: view.frame.width, height: 25)
        view.addSubview(def)
        //def.constraint(equalToTop: appearance.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 10, paddingLeft: 16)
        //def.layoutIfNeeded()
        def.isUserInteractionEnabled = true
        def.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeStyle)))
        
        let light = UILabel()
        light.text = "Light"
        light.textColor = .white
        light.font = ConstantsElements.regularFont(size: 15)
        light.frame = CGRect(x: 16, y: def.frame.origin.y + 25 + 12, width: view.frame.width, height: 25)
        view.addSubview(light)
        //light.constraint(equalToTop: def.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 10, paddingLeft: 16)
        light.layoutIfNeeded()
        light.isUserInteractionEnabled = true
        light.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeStyle)))
        
        let dark = UILabel()
        dark.text = "Dark"
        dark.textColor = .white
        dark.font = ConstantsElements.regularFont(size: 15)
        dark.frame = CGRect(x: 16, y: light.frame.origin.y + 25 + 12, width: view.frame.width, height: 25)
        view.addSubview(dark)
        //dark.constraint(equalToTop: light.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 10, paddingLeft: 16)
        dark.layoutIfNeeded()
        dark.isUserInteractionEnabled = true
        dark.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeStyle)))
        
        mark3 = UIImageView(image: UIImage(systemName: "checkmark"))
        //mark3.frame = CGRect(x: view.frame.width - 16.0, y: (157) + ((25) / 2), width: 20, height: 20)
        view.addSubview(mark3)
        mark3.constraint(equalToRight: def.trailingAnchor, paddingRight: 16)
        mark3.centre(centreY: def.centerYAnchor)
        
    }
    
    func legalSetup(view: UIView) {
        
        let notView = UIView()
        notView.backgroundColor = ConstantsElements.darkGold
        view.addSubview(notView)
        notView.constraint(equalToTop: view.topAnchor, equalToLeft: view.leadingAnchor, paddingTop: 48, paddingLeft: 8)
        notView.isUserInteractionEnabled = true
        notView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(backAction)))
        
        let notIcon = UIImageView(image: UIImage(systemName: "arrow.backward"))
        notIcon.tintColor = .white
        notView.addSubview(notIcon)
        notIcon.constraint(equalToTop: notView.topAnchor, equalToBottom: notView.bottomAnchor, equalToLeft: notView.leadingAnchor, equalToRight: notView.trailingAnchor, paddingTop: 4, paddingBottom: 4, paddingLeft: 4, paddingRight: 4, width: 20, height: 20)
        notView.layoutIfNeeded()
        notView.layer.cornerRadius = notView.frame.size.height / 2
        
        let welcome = UILabel()
        welcome.text = "Legal"
        welcome.textColor = .white
        welcome.font = ConstantsElements.regularFont(size: 15)
        view.addSubview(welcome)
        welcome.centre(centerX: view.centerXAnchor, centreY: notView.centerYAnchor)
        
        let terms = UILabel()
        terms.text = "Mintyn Accout - Terms & Conditions"
        terms.textColor = .white
        terms.font = ConstantsElements.regularFont(size: 15)
        view.addSubview(terms)
        terms.constraint(equalToTop: welcome.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 32, paddingLeft: 16)
        terms.layoutIfNeeded()
        
        let mark1 = UIImageView(image: UIImage(systemName: "iphone.and.arrow.forward"))
        view.addSubview(mark1)
        mark1.tintColor = ConstantsElements.nameColor
        mark1.constraint(equalToRight: terms.trailingAnchor, paddingRight: 16)
        mark1.centre(centreY: terms.centerYAnchor)
        
        let privacy = UILabel()
        privacy.text = "Mintyn Privacy Policy"
        privacy.textColor = .white
        privacy.font = ConstantsElements.regularFont(size: 15)
        view.addSubview(privacy)
        privacy.constraint(equalToTop: terms.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 10, paddingLeft: 16)
        privacy.layoutIfNeeded()
        
        let mark2 = UIImageView(image: UIImage(systemName: "iphone.and.arrow.forward"))
        //mark2.frame = CGRect(x: view.frame.width - 16.0, y: (privacy.frame.origin.y) + (privacy.frame.height) / 2, width: 20, height: 20)
        view.addSubview(mark2)
        mark2.tintColor = ConstantsElements.nameColor
        mark2.constraint(equalToRight: privacy.trailingAnchor, paddingRight: 16)
        mark2.centre(centreY: privacy.centerYAnchor)
        
        let sgoal = UILabel()
        sgoal.text = "Saving Goal - Terms & Conditions"
        sgoal.textColor = .white
        sgoal.font = ConstantsElements.regularFont(size: 15)
        view.addSubview(sgoal)
        sgoal.constraint(equalToTop: privacy.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 10, paddingLeft: 16)
        sgoal.layoutIfNeeded()
        
        let mark3 = UIImageView(image: UIImage(systemName: "iphone.and.arrow.forward"))
        //mark3.frame = CGRect(x: view.frame.width - 16.0, y: (sgoal.frame.origin.y) + (sgoal.frame.height) / 2, width: 20, height: 20)
        view.addSubview(mark3)
        mark3.tintColor = ConstantsElements.nameColor
        mark3.constraint(equalToRight: sgoal.trailingAnchor, paddingRight: 16)
        mark3.centre(centreY: sgoal.centerYAnchor)
    }
    
    @objc func backAction() {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func changeStyle(_ sender: UITapGestureRecognizer) {
        
        mark3.removeFromSuperview()
        
        guard let view = sender.view else {return}
        self.view.addSubview(mark3)
        mark3.constraint(equalToRight: view.trailingAnchor, paddingRight: 16)
        mark3.centre(centreY: view.centerYAnchor)
    }

}
