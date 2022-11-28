//
//  settingsUI.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/28/22.
//

import Foundation
import UIKit

class settingsUI {
    
    let vc: SettingsViewController?
    let profileChildrenView = UIView()
    let profileView = UIView()
    var contentView = UIView()
    var arrow1 = UIImageView()
    let legal = UIView()
    let system = UIView()
    let logout = UIView()
    var childrenShow = false
    
    init(vc: SettingsViewController) {
        self.vc = vc
    }
    
    func setup() {
        
        guard let view = vc?.view else {return}
        
        view.backgroundColor = UIColor.black
        
        let name = UILabel()
        name.text = "Settings"
        name.font = ConstantsElements.regularFont(size: 15)
        name.textColor = ConstantsElements.nameColor
        view.addSubview(name)
        name.constraint(equalToTop: view.topAnchor, paddingTop: 32)
        name.centre(centerX: view.centerXAnchor)
        
        let screen = UIScreen.main.bounds
        var content = CGSize(width: 0, height: 0)
        if screen.height >= 750 {
            content = CGSize(width: view.frame.width, height: view.frame.height)
        }else {
            content = CGSize(width: view.frame.width, height: view.frame.height + 100)
        }
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 96, width: view.frame.width, height: view.frame.height - (32 + 170)))
        view.addSubview(scrollView)
        scrollView.contentSize = content
        
        contentView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: content))
        contentView.backgroundColor = UIColor.black
        scrollView.addSubview(contentView)
        
       
        contentView.addSubview(profileView)
        profileView.constraint(equalToTop: contentView.topAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        profileView.isUserInteractionEnabled = true
        
        let profileIcon = UIImageView(image: UIImage(systemName: "person"))
        profileView.addSubview(profileIcon)
        profileIcon.tintColor = ConstantsElements.nameColor
        profileIcon.constraint(equalToLeft: profileView.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        profileIcon.centre(centreY: profileView.centerYAnchor)
        
        let profileText = UILabel()
        profileText.text = "Profile"
        profileText.numberOfLines = 0
        profileText.textColor = ConstantsElements.nameColor
        profileText.font = ConstantsElements.regularFont(size: 12)
        profileView.addSubview(profileText)
        profileText.constraint(equalToLeft: profileIcon.trailingAnchor, paddingLeft: 16)
        profileText.centre(centreY: profileIcon.centerYAnchor)
        
        arrow1 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        profileView.addSubview(arrow1)
        arrow1.tintColor = ConstantsElements.nameColor
        arrow1.constraint(equalToLeft: profileText.trailingAnchor,equalToRight: profileView.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        arrow1.centre(centreY: profileView.centerYAnchor)
        profileView.layoutIfNeeded()
        
        
        profileChildrenView.frame = CGRect(x: 57, y: 50, width: contentView.frame.width - (41 + 32), height: 0)
        profileChildrenView.alpha = 0
        contentView.addSubview(profileChildrenView)
        
        //
        
        let personalInfoView = UIView()
        profileChildrenView.addSubview(personalInfoView)
        personalInfoView.constraint(equalToTop: profileChildrenView.topAnchor, equalToLeft: profileChildrenView.leadingAnchor, equalToRight: profileChildrenView.trailingAnchor, height: 50)
        personalInfoView.isUserInteractionEnabled = true
        
        let personalInfoText = UILabel()
        personalInfoText.text = "Personal Information"
        personalInfoText.textColor = ConstantsElements.nameColor
        personalInfoText.font = ConstantsElements.regularFont(size: 12)
        personalInfoView.addSubview(personalInfoText)
        personalInfoText.constraint(equalToLeft: personalInfoView.leadingAnchor)
        personalInfoText.centre(centreY: personalInfoView.centerYAnchor)
        
        let arrow21 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        personalInfoView.addSubview(arrow21)
        arrow21.tintColor = ConstantsElements.nameColor
        arrow21.constraint(equalToRight: profileChildrenView.trailingAnchor, width: 25, height: 25)
        arrow21.centre(centreY: personalInfoView.centerYAnchor)
        
        //
        
        let employmentInformation = UIView()
        profileChildrenView.addSubview(employmentInformation)
        employmentInformation.constraint(equalToTop: personalInfoView.bottomAnchor, equalToLeft: profileChildrenView.leadingAnchor, equalToRight: profileChildrenView.trailingAnchor, height: 50)
        employmentInformation.isUserInteractionEnabled = true
        
        let employmentInformationText = UILabel()
        employmentInformationText.text = "Employment Information"
        employmentInformationText.textColor = ConstantsElements.nameColor
        employmentInformationText.font = ConstantsElements.regularFont(size: 12)
        employmentInformation.addSubview(employmentInformationText)
        employmentInformationText.constraint(equalToLeft: employmentInformation.leadingAnchor)
        employmentInformationText.centre(centreY: employmentInformation.centerYAnchor)
        
        let arrow22 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        employmentInformation.addSubview(arrow22)
        arrow22.tintColor = ConstantsElements.nameColor
        arrow22.constraint(equalToRight: employmentInformation.trailingAnchor, width: 25, height: 25)
        arrow22.centre(centreY: employmentInformationText.centerYAnchor)
        
        //
        
        
        let idInformation = UIView()
        profileChildrenView.addSubview(idInformation)
        idInformation.constraint(equalToTop: employmentInformation.bottomAnchor, equalToLeft: profileChildrenView.leadingAnchor, equalToRight: profileChildrenView.trailingAnchor, height: 50)
        idInformation.isUserInteractionEnabled = true
        
        let idInformationText = UILabel()
        idInformationText.text = "Identification Information"
        idInformationText.textColor = ConstantsElements.nameColor
        idInformationText.font = ConstantsElements.regularFont(size: 12)
        idInformation.addSubview(idInformationText)
        idInformationText.constraint(equalToLeft: idInformation.leadingAnchor)
        idInformationText.centre(centreY: idInformation.centerYAnchor)
        
        let arrow23 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        idInformation.addSubview(arrow23)
        arrow23.tintColor = ConstantsElements.nameColor
        arrow23.constraint(equalToRight: idInformation.trailingAnchor, width: 25, height: 25)
        arrow23.centre(centreY: idInformationText.centerYAnchor)
        
        //
        
        let kinInformation = UIView()
        profileChildrenView.addSubview(kinInformation)
        kinInformation.constraint(equalToTop: idInformation.bottomAnchor, equalToLeft: profileChildrenView.leadingAnchor, equalToRight: profileChildrenView.trailingAnchor, height: 50)
        kinInformation.isUserInteractionEnabled = true
        
        let kinInformationText = UILabel()
        kinInformationText.text = "Next of Kin"
        kinInformationText.textColor = ConstantsElements.nameColor
        kinInformationText.font = ConstantsElements.regularFont(size: 12)
        idInformation.addSubview(kinInformationText)
        kinInformationText.constraint(equalToLeft: kinInformation.leadingAnchor)
        kinInformationText.centre(centreY: kinInformation.centerYAnchor)
        
        let arrow24 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        kinInformation.addSubview(arrow24)
        arrow24.tintColor = ConstantsElements.nameColor
        arrow24.constraint(equalToRight: kinInformation.trailingAnchor, width: 25, height: 25)
        arrow24.centre(centreY: kinInformation.centerYAnchor)
        
        //
        
        let AccountMan = UIView()
        contentView.addSubview(AccountMan)
        AccountMan.constraint(equalToTop: profileChildrenView.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        AccountMan.isUserInteractionEnabled = true
        
        let AccountManIcon = UIImageView(image: UIImage(systemName: "creditcard"))
        AccountMan.addSubview(AccountManIcon)
        AccountManIcon.tintColor = ConstantsElements.nameColor
        AccountManIcon.constraint(equalToLeft: AccountMan.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        AccountManIcon.centre(centreY: AccountMan.centerYAnchor)
        
        let AccountManText = UILabel()
        AccountManText.text = "Account Management"
        AccountManText.numberOfLines = 0
        AccountManText.textColor = ConstantsElements.nameColor
        AccountManText.font = ConstantsElements.regularFont(size: 12)
        AccountMan.addSubview(AccountManText)
        AccountManText.constraint(equalToLeft: AccountManIcon.trailingAnchor, paddingLeft: 16)
        AccountManText.centre(centreY: AccountManIcon.centerYAnchor)
        
        let arrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        AccountMan.addSubview(arrow2)
        arrow2.tintColor = ConstantsElements.nameColor
        arrow2.constraint(equalToLeft: AccountManText.trailingAnchor,equalToRight: AccountMan.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        arrow2.centre(centreY: AccountMan.centerYAnchor)
        
        //
        
        let referrals = UIView()
        contentView.addSubview(referrals)
        referrals.constraint(equalToTop: AccountMan.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        referrals.isUserInteractionEnabled = true
        
        let referralsIcon = UIImageView(image: UIImage(systemName: "megaphone"))
        referrals.addSubview(referralsIcon)
        referralsIcon.tintColor = ConstantsElements.nameColor
        referralsIcon.constraint(equalToLeft: referrals.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        referralsIcon.centre(centreY: referrals.centerYAnchor)
        
        let referralsText = UILabel()
        referralsText.text = "Referrals"
        referralsText.numberOfLines = 0
        referralsText.textColor = ConstantsElements.nameColor
        referralsText.font = ConstantsElements.regularFont(size: 12)
        referrals.addSubview(referralsText)
        referralsText.constraint(equalToLeft: referralsIcon.trailingAnchor, paddingLeft: 16)
        referralsText.centre(centreY: referralsIcon.centerYAnchor)
        
        let referralsarrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        referrals.addSubview(referralsarrow2)
        referralsarrow2.tintColor = ConstantsElements.nameColor
        referralsarrow2.constraint(equalToLeft: referralsText.trailingAnchor,equalToRight: referrals.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        referralsarrow2.centre(centreY: referrals.centerYAnchor)
        
        //
        
        
        contentView.addSubview(legal)
        legal.constraint(equalToTop: referrals.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        legal.isUserInteractionEnabled = true
        
        let legalIcon = UIImageView(image: UIImage(systemName: "shield"))
        legal.addSubview(legalIcon)
        legalIcon.tintColor = ConstantsElements.nameColor
        legalIcon.constraint(equalToLeft: legal.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        legalIcon.centre(centreY: legal.centerYAnchor)
        
        let legalText = UILabel()
        legalText.text = "Legal"
        legalText.numberOfLines = 0
        legalText.textColor = ConstantsElements.nameColor
        legalText.font = ConstantsElements.regularFont(size: 12)
        legal.addSubview(legalText)
        legalText.constraint(equalToLeft: legalIcon.trailingAnchor, paddingLeft: 16)
        legalText.centre(centreY: legalIcon.centerYAnchor)
        
        let legalarrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        legal.addSubview(legalarrow2)
        legalarrow2.tintColor = ConstantsElements.nameColor
        legalarrow2.constraint(equalToLeft: legalText.trailingAnchor,equalToRight: legal.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        legalarrow2.centre(centreY: legal.centerYAnchor)
        
        //
        
        let help = UIView()
        contentView.addSubview(help)
        help.constraint(equalToTop: legal.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        help.isUserInteractionEnabled = true
        
        let helpIcon = UIImageView(image: UIImage(systemName: "square.and.pencil"))
        help.addSubview(helpIcon)
        helpIcon.tintColor = ConstantsElements.nameColor
        helpIcon.constraint(equalToLeft: help.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        helpIcon.centre(centreY: help.centerYAnchor)
        
        let helpText = UILabel()
        helpText.text = "Help and Support"
        helpText.numberOfLines = 0
        helpText.textColor = ConstantsElements.nameColor
        helpText.font = ConstantsElements.regularFont(size: 12)
        help.addSubview(helpText)
        helpText.constraint(equalToLeft: helpIcon.trailingAnchor, paddingLeft: 16)
        helpText.centre(centreY: helpIcon.centerYAnchor)
        
        let helparrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        help.addSubview(helparrow2)
        helparrow2.tintColor = ConstantsElements.nameColor
        helparrow2.constraint(equalToLeft: helpText.trailingAnchor,equalToRight: help.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        helparrow2.centre(centreY: help.centerYAnchor)
        
        //
        
        
        contentView.addSubview(system)
        system.constraint(equalToTop: help.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        system.isUserInteractionEnabled = true
        
        let systemIcon = UIImageView(image: UIImage(systemName: "platter.filled.bottom.iphone"))
        system.addSubview(systemIcon)
        systemIcon.tintColor = ConstantsElements.nameColor
        systemIcon.constraint(equalToLeft: system.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        systemIcon.centre(centreY: system.centerYAnchor)
        
        let systemText = UILabel()
        systemText.text = "System"
        systemText.numberOfLines = 0
        systemText.textColor = ConstantsElements.nameColor
        systemText.font = ConstantsElements.regularFont(size: 12)
        system.addSubview(systemText)
        systemText.constraint(equalToLeft: systemIcon.trailingAnchor, paddingLeft: 16)
        systemText.centre(centreY: systemIcon.centerYAnchor)
        
        let systemarrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        system.addSubview(systemarrow2)
        systemarrow2.tintColor = ConstantsElements.nameColor
        systemarrow2.constraint(equalToLeft: systemText.trailingAnchor,equalToRight: system.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        systemarrow2.centre(centreY: system.centerYAnchor)
        
        //
        
        let create = UIView()
        contentView.addSubview(create)
        create.constraint(equalToTop: system.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        create.isUserInteractionEnabled = true
        
        let createIcon = UIImageView(image: UIImage(systemName: "arrow.triangle.2.circlepath"))
        create.addSubview(createIcon)
        createIcon.tintColor = ConstantsElements.nameColor
        createIcon.constraint(equalToLeft: create.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        createIcon.centre(centreY: create.centerYAnchor)
        
        let createText = UILabel()
        createText.text = "Create Business Account"
        createText.numberOfLines = 0
        createText.textColor = ConstantsElements.nameColor
        createText.font = ConstantsElements.regularFont(size: 12)
        create.addSubview(createText)
        createText.constraint(equalToLeft: createIcon.trailingAnchor, paddingLeft: 16)
        createText.centre(centreY: createIcon.centerYAnchor)
        
        let createarrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        create.addSubview(createarrow2)
        createarrow2.tintColor = ConstantsElements.nameColor
        createarrow2.constraint(equalToLeft: createText.trailingAnchor,equalToRight: create.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        createarrow2.centre(centreY: create.centerYAnchor)
        
        //
        
        
        contentView.addSubview(logout)
        logout.constraint(equalToTop: create.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, height: 50)
        logout.isUserInteractionEnabled = true
        
        let logoutIcon = UIImageView(image: UIImage(systemName: "ipad.and.arrow.forward"))
        logout.addSubview(logoutIcon)
        logoutIcon.tintColor = ConstantsElements.nameColor
        logoutIcon.constraint(equalToLeft: logout.leadingAnchor, paddingLeft: 16, width: 25, height: 25)
        logoutIcon.centre(centreY: logout.centerYAnchor)
        
        let logoutText = UILabel()
        logoutText.text = "Logout"
        logoutText.numberOfLines = 0
        logoutText.textColor = ConstantsElements.nameColor
        logoutText.font = ConstantsElements.regularFont(size: 12)
        logout.addSubview(logoutText)
        logoutText.constraint(equalToLeft: createIcon.trailingAnchor, paddingLeft: 16)
        logoutText.centre(centreY: logoutIcon.centerYAnchor)
        
        let logoutarrow2 = UIImageView(image: UIImage(systemName: "chevron.forward"))
        logout.addSubview(logoutarrow2)
        logoutarrow2.tintColor = ConstantsElements.nameColor
        logoutarrow2.constraint(equalToLeft: logoutText.trailingAnchor,equalToRight: logout.trailingAnchor, paddingLeft: 8, paddingRight: 16, width: 25, height: 25)
        logoutarrow2.centre(centreY: logout.centerYAnchor)
        
    }
}
