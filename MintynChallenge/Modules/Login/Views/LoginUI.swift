//
//  LoginUI.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/23/22.
//

import Foundation
import UIKit
import CountryPickerView

class LoginUI {
    
    let vc : LoginViewController
    
    
    let loginBtn = UIButton()
    let passField = UITextField()
    var eye = UIImageView()
    let phoneField = UITextField()
    let flag = UIImageView()
    var checkMark = UIImageView()
    let cpv = CountryPickerView()
    
    
    init(vc: LoginViewController) {
        self.vc = vc
    }
    
    func setup() {
        
        guard let view = vc.view else {return}
        
        view.backgroundColor = .black
        
        let welcome = UILabel()
        welcome.text = "Welcome"
        welcome.textColor = .white
        welcome.font = ConstantsElements.serifFont(size: 18)
        
        view.addSubview(welcome)
        welcome.constraint(equalToTop: view.topAnchor, paddingTop: 12)
        welcome.centre(centerX: view.centerXAnchor)
        
        //
        
        let insuranceView = UIView()
        //insuranceView.backgroundColor = ConstantsElements.itemGrey
        insuranceView.layer.cornerRadius = 20
        view.addSubview(insuranceView)
        insuranceView.constraint(equalToTop: welcome.bottomAnchor, equalToLeft: view.leadingAnchor, paddingTop: 12, paddingLeft: 8, width: (view.frame.width * 0.5) - 14.0, height: 100)
        insuranceView.layoutIfNeeded()
        insuranceView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let contentView = UIView()
        insuranceView.addSubview(contentView)
        //contentView.backgroundColor = .white
        contentView.constraint(equalToLeft: insuranceView.leadingAnchor, equalToRight: insuranceView.trailingAnchor, paddingLeft: 16, paddingRight: 16)
        contentView.centre(centreY: insuranceView.centerYAnchor)
        
        let shield = UIImageView(image: UIImage(systemName: "checkerboard.shield"))
        contentView.addSubview(shield)
        shield.tintColor = ConstantsElements.gold
        shield.constraint(equalToTop: contentView.topAnchor, equalToBottom: contentView.bottomAnchor, equalToLeft: contentView.leadingAnchor, width: 40, height: 40)
        
        let itemName = UILabel()
        itemName.text = "Insurance"
        itemName.textAlignment = .center
        itemName.textColor = .white
        itemName.font = ConstantsElements.regularFont(size: 12)
        
        let soon = UILabel()
        soon.text = "Coming soon..."
        soon.textAlignment = .center
        soon.textColor = ConstantsElements.nameColor
        soon.font = ConstantsElements.regularFont(size: 10)
        
        let itemStack = UIStackView(arrangedSubviews: [itemName, soon])
        itemStack.axis = .vertical
        itemStack.spacing = 4
        contentView.addSubview(itemStack)
        itemStack.constraint(equalToLeft: shield.trailingAnchor, equalToRight: contentView.trailingAnchor, paddingLeft: 12)
        itemStack.centre(centreY: shield.centerYAnchor)
        
        //
        
        let registerView = UIView()
        //registerView.backgroundColor = ConstantsElements.itemGrey
        registerView.layer.cornerRadius = 20
        view.addSubview(registerView)
        registerView.constraint(equalToTop: welcome.bottomAnchor, equalToRight: view.trailingAnchor, paddingTop: 12, paddingRight: 8, width: (view.frame.width * 0.5) - 14.0, height: 100)
        registerView.layoutIfNeeded()
        registerView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let contentView2 = UIView()
        registerView.addSubview(contentView2)
         contentView2.constraint(equalToLeft: registerView.leadingAnchor, equalToRight: registerView.trailingAnchor, paddingLeft: 16, paddingRight: 16)
         contentView2.centre(centreY: registerView.centerYAnchor)
        
        let shield2 = UIImageView(image: UIImage(systemName: "checkerboard.shield"))
        contentView2.addSubview(shield2)
        shield2.tintColor = ConstantsElements.gold
        shield2.constraint(equalToTop: contentView2.topAnchor, equalToBottom: contentView2.bottomAnchor, equalToLeft: contentView2.leadingAnchor, width: 40, height: 40)
        
        let itemName2 = UILabel()
        itemName2.text = "Open an Account"
        itemName2.numberOfLines = 2
        itemName2.textColor = .white
        itemName2.textAlignment = .center
        itemName2.font = ConstantsElements.regularFont(size: 12)
        contentView2.addSubview(itemName2)
        itemName2.constraint(equalToLeft: shield2.trailingAnchor, equalToRight: contentView2.trailingAnchor, paddingLeft: 12)
        itemName2.centre(centreY: shield2.centerYAnchor)
        
        //
        
        let cacView = UIView()
        //registerView.backgroundColor = ConstantsElements.itemGrey
        cacView.layer.cornerRadius = 20
        view.addSubview(cacView)
        cacView.constraint(equalToTop: insuranceView.bottomAnchor, equalToLeft: view.leadingAnchor, paddingTop: 12, paddingLeft: 8, width: (view.frame.width * 0.5) - 14.0, height: 100)
        cacView.layoutIfNeeded()
        cacView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let contentView3 = UIView()
        cacView.addSubview(contentView3)
         contentView3.constraint(equalToLeft: cacView.leadingAnchor, equalToRight: cacView.trailingAnchor, paddingLeft: 16, paddingRight: 16)
         contentView3.centre(centreY: cacView.centerYAnchor)
        
        let cacIcon = UIImageView(image: UIImage(systemName: "doc.on.doc"))
        contentView3.addSubview(cacIcon)
        cacIcon.tintColor = ConstantsElements.gold
        cacIcon.constraint(equalToTop: contentView3.topAnchor, equalToBottom: contentView3.bottomAnchor, equalToLeft: contentView3.leadingAnchor, width: 40, height: 40)
        
        let itemName3 = UILabel()
        itemName3.text = "CAC Business Registration"
        itemName3.numberOfLines = 2
        itemName3.textColor = .white
        itemName3.textAlignment = .center
        itemName3.font = ConstantsElements.regularFont(size: 12)
        contentView3.addSubview(itemName3)
        itemName3.constraint(equalToLeft: cacIcon.trailingAnchor, equalToRight: contentView3.trailingAnchor, paddingLeft: 12)
        itemName3.centre(centreY: cacIcon.centerYAnchor)
        
        //
        
        let supportView = UIView()
        //registerView.backgroundColor = ConstantsElements.itemGrey
        supportView.layer.cornerRadius = 20
        view.addSubview(supportView)
        supportView.constraint(equalToTop: insuranceView.bottomAnchor, equalToRight: view.trailingAnchor, paddingTop: 12, paddingRight: 8, width: (view.frame.width * 0.5) - 14.0, height: 100)
        supportView.layoutIfNeeded()
        supportView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let contentView4 = UIView()
        supportView.addSubview(contentView4)
         contentView4.constraint(equalToLeft: supportView.leadingAnchor, equalToRight: supportView.trailingAnchor, paddingLeft: 16, paddingRight: 16)
         contentView4.centre(centreY: supportView.centerYAnchor)
        
        let supportIcon = UIImageView(image: UIImage(named: "support"))
        contentView4.addSubview(supportIcon)
        supportIcon.tintColor = ConstantsElements.gold
        supportIcon.constraint(equalToTop: contentView4.topAnchor, equalToBottom: contentView4.bottomAnchor, equalToLeft: contentView4.leadingAnchor, width: 40, height: 40)
        
        let itemName4 = UILabel()
        itemName4.text = "Contact Support"
        itemName4.numberOfLines = 2
        itemName4.textColor = .white
        itemName4.textAlignment = .center
        itemName4.font = ConstantsElements.regularFont(size: 12)
        contentView4.addSubview(itemName4)
        itemName4.constraint(equalToLeft: supportIcon.trailingAnchor, equalToRight: contentView4.trailingAnchor, paddingLeft: 12)
        itemName4.centre(centreY: supportIcon.centerYAnchor)
        
        //
        
        let fieldView = UIView()
        //fieldView.backgroundColor = ConstantsElements.itemGrey
        view.addSubview(fieldView)
        fieldView.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        fieldView.constraint(equalToTop: cacView.bottomAnchor, equalToBottom: view.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 20)
        fieldView.layoutIfNeeded()
        fieldView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let versionNumber = UILabel()
        versionNumber.text = "Version 1.2.97"
        versionNumber.textColor = .white
        versionNumber.font = ConstantsElements.regularFont(size: 7)
        fieldView.addSubview(versionNumber)
        versionNumber.constraint(equalToBottom: fieldView.bottomAnchor, paddingBottom: 60)
        versionNumber.centre(centerX: fieldView.centerXAnchor)
        
        let someText = UILabel()
        someText.text = "Powered by FINEX MFB"
        someText.textColor = .white
        someText.font = ConstantsElements.regularFont(size: 9)
        fieldView.addSubview(someText)
        someText.constraint(equalToBottom: versionNumber.topAnchor, paddingBottom: 20)
        someText.centre(centerX: fieldView.centerXAnchor)
        
        let newDevice = UILabel()
        newDevice.text = "Register new device"
        newDevice.textColor = ConstantsElements.yellow
        newDevice.font = ConstantsElements.regularFont(size: 12)
        fieldView.addSubview(newDevice)
        newDevice.constraint(equalToBottom: someText.topAnchor, paddingBottom: 3)
        newDevice.centre(centerX: fieldView.centerXAnchor)
        
        
        loginBtn.titleLabel?.font = ConstantsElements.regularFont(size: 12)
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.layer.cornerRadius = 12
        loginBtn.backgroundColor = ConstantsElements.yellow
        fieldView.addSubview(loginBtn)
        loginBtn.constraint(equalToBottom: newDevice.topAnchor, equalToLeft: fieldView.leadingAnchor, equalToRight: fieldView.trailingAnchor, paddingBottom: 16, paddingLeft: 16, paddingRight: 16, height: 50)
        
        checkMark = UIImageView(image: UIImage(systemName: "square"))
        checkMark.tintColor = UIColor.lightGray
        fieldView.addSubview(checkMark)
        checkMark.constraint(equalToBottom: loginBtn.topAnchor, equalToLeft: fieldView.leadingAnchor, paddingBottom: 16, paddingLeft: 16, width: 30, height: 30)
        checkMark.isUserInteractionEnabled = true
        
        let rememberMe = UILabel()
        rememberMe.text = "Remember me"
        rememberMe.font = ConstantsElements.regularFont(size: 12)
        rememberMe.textColor = ConstantsElements.nameColor
        fieldView.addSubview(rememberMe)
        rememberMe.constraint(equalToLeft: checkMark.trailingAnchor, paddingLeft: 16)
        rememberMe.centre(centreY: checkMark.centerYAnchor)
        
        let forgotPass = UILabel()
        forgotPass.text = "Forgot password?"
        forgotPass.font = ConstantsElements.regularFont(size: 12)
        forgotPass.textColor = ConstantsElements.yellow
        fieldView.addSubview(forgotPass)
        forgotPass.constraint(equalToRight: fieldView.trailingAnchor, paddingRight: 16)
        forgotPass.centre(centreY: checkMark.centerYAnchor)
        
        
        passField.backgroundColor = ConstantsElements.fieldBgColor
        passField.layer.borderWidth = 1
        passField.layer.borderColor = UIColor.gray.cgColor
        passField.textColor = .white
        passField.font = ConstantsElements.regularFont(size: 12)
        passField.isSecureTextEntry = true
        passField.borderStyle = .none
        passField.text = "mintynChallenge@"
        passField.layer.cornerRadius = 12
        fieldView.addSubview(passField)
        passField.constraint(equalToBottom: checkMark.topAnchor, equalToLeft: fieldView.leadingAnchor, equalToRight: fieldView.trailingAnchor, paddingBottom: 12, paddingLeft: 16, paddingRight: 16, height: 50)
        
        eye = UIImageView(image: UIImage(systemName: "eye"))
        eye.tintColor = UIColor.lightGray
        fieldView.addSubview(eye)
        eye.constraint(equalToRight: passField.trailingAnchor, paddingRight: 12)
        eye.centre(centreY: passField.centerYAnchor)
        eye.isUserInteractionEnabled = true
        
        let passwordText = UILabel()
        passwordText.text = "Password"
        passwordText.textColor = UIColor.white
        passwordText.font = ConstantsElements.regularFont(size: 12)
        fieldView.addSubview(passwordText)
        passwordText.constraint(equalToBottom: passField.topAnchor, equalToLeft: fieldView.leadingAnchor, paddingBottom: 4, paddingLeft: 16)
        
        let phoneView = UIView()
        phoneView.backgroundColor = ConstantsElements.fieldBgColor
        phoneView.layer.borderWidth = 1
        phoneView.layer.borderColor = UIColor.lightGray.cgColor
        phoneView.layer.cornerRadius = 12
        fieldView.addSubview(phoneView)
        phoneView.constraint(equalToBottom: passwordText.topAnchor, equalToLeft: fieldView.leadingAnchor, equalToRight: fieldView.trailingAnchor, paddingBottom: 16, paddingLeft: 16, paddingRight: 16, height: 50)
        
        
        phoneView.addSubview(flag)
        flag.image = cpv.selectedCountry.flag
        flag.tintColor = .white
        flag.constraint(equalToLeft: phoneView.leadingAnchor, paddingLeft: 12, width: 20, height: 20)
        flag.centre(centreY: phoneView.centerYAnchor)
        flag.isUserInteractionEnabled = true
        flag.addGestureRecognizer(UITapGestureRecognizer(target: vc, action: #selector(showCountries)))
        
        //let phoneField = UITextField()
        phoneField.borderStyle = .none
        phoneView.addSubview(phoneField)
        phoneField.text = cpv.selectedCountry.phoneCode
        phoneField.text = "+2348067250421"
        phoneField.textColor = .white
        phoneField.font = ConstantsElements.regularFont(size: 12)
        phoneField.constraint(equalToBottom: phoneView.bottomAnchor, equalToLeft: flag.trailingAnchor, equalToRight: phoneView.trailingAnchor, paddingLeft: 4, height: 50)
        
        let phonetext = UILabel()
        phonetext.text = "Phone Number"
        phonetext.textColor = .white
        phonetext.font = ConstantsElements.regularFont(size: 12)
        fieldView.addSubview(phonetext)
        phonetext.constraint(equalToBottom: phoneView.topAnchor, equalToLeft: phoneView.leadingAnchor, paddingBottom: 4)
        
    }
    
    @objc func showCountries() {
        
        let vc = CountryViewController()
        vc.delegate = self.vc
        self.vc.navigationController?.pushViewController(vc, animated: true)
    }
    
}
