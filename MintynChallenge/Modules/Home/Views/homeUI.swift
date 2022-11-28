//
//  homeUI.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import Foundation
import UIKit

class homeUI {
    
    var vc : HomeViewController?
    
    init(vc: HomeViewController) {
        self.vc = vc
    }
    
    func setup() {
        
        guard let view = vc?.view else {return}
        
        view.backgroundColor = UIColor.black
        
        let logo = UIImageView(image: UIImage(named: "mintynLogo"))
        view.addSubview(logo)
        logo.constraint(equalToTop: view.topAnchor, equalToLeft: view.leadingAnchor, paddingTop: 48, paddingLeft: 16, width: 20, height: 20)
        
        let name = UILabel()
        name.text = "MINTYN"
        name.font = ConstantsElements.spectral(size: 10)
        name.textColor = ConstantsElements.nameColor
        view.addSubview(name)
        name.constraint(equalToLeft: logo.trailingAnchor, paddingLeft: 2)
        name.centre(centreY: logo.centerYAnchor)
        
        let notView = UIView()
        notView.backgroundColor = ConstantsElements.darkGold
        view.addSubview(notView)
        notView.constraint(equalToTop: view.topAnchor, equalToRight: view.trailingAnchor, paddingTop: 48, paddingRight: 8)
        
        let notIcon = UIImageView(image: UIImage(systemName: "bell.fill"))
        notIcon.tintColor = .white
        notView.addSubview(notIcon)
        notIcon.constraint(equalToTop: notView.topAnchor, equalToBottom: notView.bottomAnchor, equalToLeft: notView.leadingAnchor, equalToRight: notView.trailingAnchor, paddingTop: 4, paddingBottom: 4, paddingLeft: 4, paddingRight: 4, width: 20, height: 20)
        notView.layoutIfNeeded()
        notView.layer.cornerRadius = notView.frame.size.height / 2
        
        let screen = UIScreen.main.bounds
        var content = CGSize(width: 0, height: 0)
        if screen.height >= 750 {
            content = CGSize(width: view.frame.width, height: view.frame.height + 300)
        }else {
            content = CGSize(width: view.frame.width, height: view.frame.height + 400)
        }
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 96, width: view.frame.width, height: view.frame.height - (32 + 170)))
        view.addSubview(scrollView)
        scrollView.contentSize = content
        
        let contentView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: content))
        contentView.backgroundColor = UIColor.black
        scrollView.addSubview(contentView)
        
        let userImage = UIImageView(image: UIImage(systemName: "person"))
        contentView.addSubview(userImage)
        userImage.tintColor = .white
        userImage.constraint(equalToTop: contentView.topAnchor, equalToLeft: contentView.leadingAnchor, paddingTop: 16, paddingLeft: 16, width: 50, height: 50)
        userImage.layoutIfNeeded()
        userImage.layer.cornerRadius = userImage.frame.height / 2
        
        let userName = UILabel()
        userName.font = ConstantsElements.regularFont(size: 12)
        userName.textColor = UIColor.white
        userName.text = "Ajayi John Ayinde"
        
        let ind = UILabel()
        ind.font = ConstantsElements.regularFont(size: 11)
        ind.textColor = ConstantsElements.nameColor
        ind.text = "Individual"
        
        let dot1 = UILabel()
        dot1.font = ConstantsElements.regularFont(size: 9)
        dot1.textColor = ConstantsElements.nameColor
        dot1.text = "•"
        
        let account_Number = UILabel()
        account_Number.font = ConstantsElements.regularFont(size: 11)
        account_Number.textColor = ConstantsElements.nameColor
        account_Number.text = "11334668836"
        
        let dot2 = UILabel()
        dot2.font = ConstantsElements.regularFont(size: 9)
        dot2.textColor = ConstantsElements.gold
        dot2.text = "•"
        
        let tier = UILabel()
        tier.font = ConstantsElements.regularFont(size: 11)
        tier.textColor = ConstantsElements.gold
        tier.text = "Tier 1"
        
        let hStack = UIStackView(arrangedSubviews: [ind, dot1, account_Number, dot2, tier])
        hStack.axis = .horizontal
        hStack.spacing = 4
        
        let vstack = UIStackView(arrangedSubviews: [userName, hStack])
        vstack.axis = .vertical
        vstack.spacing = 8
        
        contentView.addSubview(vstack)
        vstack.constraint(equalToLeft: userImage.trailingAnchor, paddingLeft: 16)
        vstack.centre(centreY: userImage.centerYAnchor)
        
        let switchView = UIView()
        contentView.addSubview(switchView)
        switchView.constraint(equalToRight: view.trailingAnchor, paddingRight: 16)
        switchView.centre(centreY: userImage.centerYAnchor)
        
        let switchAccount = UILabel()
        switchView.addSubview(switchAccount)
        switchAccount.constraint(equalToTop: switchView.topAnchor, equalToLeft: switchView.leadingAnchor, equalToRight: switchView.trailingAnchor)
        switchAccount.font = ConstantsElements.regularFont(size: 11)
        switchAccount.textColor = .white
        switchAccount.text = "Switch Account"
        
        let downArrow = UIImageView(image: UIImage(systemName: "arrowtriangle.down.fill"))
        downArrow.tintColor = .white
        switchView.addSubview(downArrow)
        downArrow.constraint(equalToTop: switchAccount.bottomAnchor, equalToBottom: switchView.bottomAnchor, paddingTop: 10)
        downArrow.centre(centerX: switchView.centerXAnchor)
        
        let darkView = UIView()
        contentView.addSubview(darkView)
        darkView.constraint(equalToTop: userImage.bottomAnchor, equalToBottom: contentView.bottomAnchor, equalToLeft: contentView.leadingAnchor, equalToRight: contentView.trailingAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16)
        darkView.layer.cornerRadius = 12
        darkView.layoutIfNeeded()
        darkView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let bal = UILabel()
        darkView.addSubview(bal)
        bal.textColor = .white
        bal.constraint(equalToTop: darkView.topAnchor, equalToLeft: darkView.leadingAnchor, paddingTop: 32, paddingLeft: 16)
        bal.text = "N0.00"
        bal.font = ConstantsElements.boldFont(size: 30)
        
        let addMoneyView = UIView()
        darkView.addSubview(addMoneyView)
        addMoneyView.layer.cornerRadius = 12
        addMoneyView.constraint(equalToRight: darkView.trailingAnchor, paddingRight: 16, width: 100, height: 45)
        addMoneyView.centre(centreY: bal.centerYAnchor)
        addMoneyView.layoutIfNeeded()
        
        let addMoney = UILabel()
        addMoneyView.addSubview(addMoney)
        addMoney.constraint(equalToTop: addMoneyView.topAnchor, equalToBottom: addMoneyView.bottomAnchor, equalToLeft: addMoneyView.leadingAnchor, equalToRight: addMoneyView.trailingAnchor, paddingTop: 12, paddingBottom: 12, paddingLeft: 16, paddingRight: 16)
        addMoney.font = ConstantsElements.regularFont(size: 9)
        addMoney.textColor = .white
        addMoney.text = "+ ADD MONEY"
        addMoneyView.horizontalGradient(colors: [ConstantsElements.darkGold, ConstantsElements.yellow], points: [CGPoint(x: 0, y: 0), CGPoint(x: addMoneyView.frame.width, y: addMoneyView.frame.height)])
        
        let line1 = UIView()
        line1.backgroundColor = ConstantsElements.logoGrey
        darkView.addSubview(line1)
        line1.constraint(equalToTop: addMoneyView.bottomAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 32, height: 1)
        
        let ledgerBalText = UILabel()
        ledgerBalText.text = "Ledger balance:"
        ledgerBalText.textColor = .white
        ledgerBalText.font = ConstantsElements.regularFont(size: 12)
        
        let ledgerBal = UILabel()
        ledgerBal.text = "N0.00"
        ledgerBal.textColor = .white
        ledgerBal.font = ConstantsElements.boldFont(size: 12)
        
        let balStack = UIStackView(arrangedSubviews: [ledgerBalText, ledgerBal])
        balStack.axis = .vertical
        balStack.spacing = 8
        contentView.addSubview(balStack)
        balStack.constraint(equalToTop: line1.topAnchor, equalToLeft: darkView.leadingAnchor, paddingTop: 32, paddingLeft: 16)
        
        let controlSwitch = UISwitch()
        controlSwitch.tintColor = ConstantsElements.darkGold
        
        let hideBal = UILabel()
        hideBal.text = "Hide balance"
        hideBal.textColor = .white
        hideBal.font = ConstantsElements.regularFont(size: 12)
        
        let hideStack = UIStackView(arrangedSubviews: [controlSwitch, hideBal])
        hideStack.spacing = 12
        darkView.addSubview(hideStack)
        hideStack.constraint(equalToRight: darkView.trailingAnchor, paddingRight: 16)
        hideStack.centre(centreY: balStack.centerYAnchor)
        
        let caution = UIImageView(image: UIImage(systemName: "info.circle"))
        darkView.addSubview(caution)
        caution.tintColor = .red
        caution.constraint(equalToTop: balStack.bottomAnchor, equalToLeft: darkView.leadingAnchor, paddingTop: 120, width: 25, height: 25)
        
        let updateText = UILabel()
        updateText.text = "Update Account"
        updateText.textColor = .white
        updateText.font = ConstantsElements.regularFont(size: 15)
        
        let updateAccount = UILabel()
        updateAccount.text = "Update your account to get unlimited access to your account."
        updateAccount.numberOfLines = 2
        updateAccount.textColor = ConstantsElements.nameColor
        updateAccount.font = ConstantsElements.regularFont(size: 14)
        
        let updateStack = UIStackView(arrangedSubviews: [updateText, updateAccount])
        updateStack.axis = .vertical
        updateStack.spacing = 32
        contentView.addSubview(updateStack)
        updateStack.constraint(equalToLeft: caution.trailingAnchor, paddingLeft: 8)
        updateStack.centre(centreY: caution.centerYAnchor)
        
        let arrowRight = UIImageView(image: UIImage(systemName: "chevron.forward"))
        darkView.addSubview(arrowRight)
        arrowRight.tintColor = ConstantsElements.gold
        arrowRight.constraint(equalToLeft: updateStack.trailingAnchor, equalToRight: darkView.trailingAnchor, paddingLeft: 16)
        arrowRight.centre(centreY: caution.centerYAnchor)
        
        let line2 = UIView()
        line2.backgroundColor = ConstantsElements.logoGrey
        darkView.addSubview(line2)
        line2.constraint(equalToTop: updateStack.bottomAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 32, height: 1)
        
        let productUpdates = UIView()
        productUpdates.backgroundColor = UIColor(red: 105/255, green: 86/255, blue: 236/255, alpha: 1)
        productUpdates.layer.cornerRadius = 12
        
        let pudIcon = UIImageView(image: UIImage(systemName: "bell.fill"))
        pudIcon.tintColor = .white
        productUpdates.addSubview(pudIcon)
        pudIcon.constraint(width: 40, height: 40)
        pudIcon.centre(centerX: productUpdates.centerXAnchor, centreY: productUpdates.centerYAnchor)
        
        let pudTitle = UILabel()
        pudTitle.text = "Product Updates"
        pudTitle.font = ConstantsElements.regularFont(size: 9)
        pudTitle.textColor = .white
        productUpdates.addSubview(pudTitle)
        pudTitle.constraint(equalToBottom: productUpdates.bottomAnchor, paddingBottom: 8)
        pudTitle.centre(centerX: productUpdates.centerXAnchor)
        
        let giftCards = UIView()
        giftCards.backgroundColor = UIColor(red: 56/255, green: 172/255, blue: 116/255, alpha: 1)
        giftCards.layer.cornerRadius = 12
        
        let giftIcon = UIImageView(image: UIImage(systemName: "giftcard.fill"))
        giftIcon.tintColor = .white
        giftCards.addSubview(giftIcon)
        giftIcon.constraint(width: 40, height: 40)
        giftIcon.centre(centerX: giftCards.centerXAnchor, centreY: giftCards.centerYAnchor)
        
        let giftCardsTitle = UILabel()
        giftCardsTitle.text = "Gift Cards"
        giftCardsTitle.font = ConstantsElements.regularFont(size: 9)
        giftCardsTitle.textColor = .white
        giftCards.addSubview(giftCardsTitle)
        giftCardsTitle.constraint(equalToBottom: giftCards.bottomAnchor, paddingBottom: 8)
        giftCardsTitle.centre(centerX: giftCards.centerXAnchor)
        
        let cardless = UIView()
        cardless.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        cardless.layer.cornerRadius = 12
        
        let cardlessIcon = UIImageView(image: UIImage(systemName: "keyboard.chevron.compact.down"))
        cardlessIcon.tintColor = .white
        cardless.addSubview(cardlessIcon)
        cardlessIcon.constraint(width: 40, height: 40)
        cardlessIcon.centre(centerX: cardless.centerXAnchor, centreY: cardless.centerYAnchor)
        
        let cardlessTitle = UILabel()
        cardlessTitle.text = "Cardless"
        cardlessTitle.font = ConstantsElements.regularFont(size: 9)
        cardlessTitle.textColor = .white
        cardless.addSubview(cardlessTitle)
        cardlessTitle.constraint(equalToBottom: cardless.bottomAnchor, paddingBottom: 8)
        cardlessTitle.centre(centerX: cardless.centerXAnchor)
        
        let colorsStack = UIStackView(arrangedSubviews: [productUpdates, giftCards, cardless])
        darkView.addSubview(colorsStack)
        colorsStack.constraint(equalToTop: line2.topAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 16, height: 120)
        colorsStack.axis = .horizontal
        colorsStack.spacing = 4
        colorsStack.distribution = .fillEqually
        
        let line3 = UIView()
        line3.backgroundColor = ConstantsElements.logoGrey
        darkView.addSubview(line3)
        line3.constraint(equalToTop: colorsStack.bottomAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 32, height: 1)
        
        let quickAccess = UILabel()
        quickAccess.text = "Quick Access"
        quickAccess.font = ConstantsElements.regularFont(size: 15)
        quickAccess.textColor = .white
        darkView.addSubview(quickAccess)
        quickAccess.constraint(equalToTop: line3.bottomAnchor, equalToLeft: darkView.leadingAnchor, paddingTop: 16)
        
        let transfer = UIView()
        //transfer.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        transfer.layer.cornerRadius = 12
        
        let transferIcon = UIImageView(image: UIImage(systemName: "arrow.left.arrow.right"))
        transferIcon.tintColor = ConstantsElements.gold
        transfer.addSubview(transferIcon)
        transferIcon.constraint(width: 40, height: 40)
        transferIcon.centre(centerX: transfer.centerXAnchor, centreY: transfer.centerYAnchor)
        
        let transferIconTitle = UILabel()
        transferIconTitle.text = "Transfer"
        transferIconTitle.font = ConstantsElements.regularFont(size: 9)
        transferIconTitle.textColor = .white
        transfer.addSubview(transferIconTitle)
        transferIconTitle.constraint(equalToBottom: transfer.bottomAnchor, paddingBottom: 8)
        transferIconTitle.centre(centerX: transfer.centerXAnchor)
        
        let topUp = UIView()
        //transfer.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        topUp.layer.cornerRadius = 12
        
        let topUpIcon = UIImageView(image: UIImage(systemName: "plus.square.on.square"))
        topUpIcon.tintColor = ConstantsElements.gold
        topUp.addSubview(topUpIcon)
        topUpIcon.constraint(width: 40, height: 40)
        topUpIcon.centre(centerX: topUp.centerXAnchor, centreY: topUp.centerYAnchor)
        
        let topUpIconTitle = UILabel()
        topUpIconTitle.text = "Top Up"
        topUpIconTitle.font = ConstantsElements.regularFont(size: 9)
        topUpIconTitle.textColor = ConstantsElements.gold
        topUp.addSubview(topUpIconTitle)
        topUpIconTitle.constraint(equalToBottom: topUp.bottomAnchor, paddingBottom: 8)
        topUpIconTitle.centre(centerX: topUp.centerXAnchor)
        
        
        let payBill = UIView()
        //transfer.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        payBill.layer.cornerRadius = 12
        
        let payBillIcon = UIImageView(image: UIImage(systemName: "banknote.fill"))
        payBillIcon.tintColor = ConstantsElements.gold
        payBill.addSubview(payBillIcon)
        payBillIcon.constraint(width: 40, height: 40)
        payBillIcon.centre(centerX: payBill.centerXAnchor, centreY: payBill.centerYAnchor)
        
        let payBillTitle = UILabel()
        payBillTitle.text = "Pay Bill"
        payBillTitle.font = ConstantsElements.regularFont(size: 9)
        payBillTitle.textColor = ConstantsElements.gold
        payBill.addSubview(payBillTitle)
        payBillTitle.constraint(equalToBottom: payBill.bottomAnchor, paddingBottom: 8)
        payBillTitle.centre(centerX: payBill.centerXAnchor)
        
        let savings = UIView()
        //transfer.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        savings.layer.cornerRadius = 12
        
        let savingsIcon = UIImageView(image: UIImage(systemName: "dollarsign.circle.fill"))
        savingsIcon.tintColor = ConstantsElements.gold
        savings.addSubview(savingsIcon)
        savingsIcon.constraint(width: 40, height: 40)
        savingsIcon.centre(centerX: savings.centerXAnchor, centreY: savings.centerYAnchor)
        
        let savingsTitle = UILabel()
        savingsTitle.text = "Savings"
        savingsTitle.font = ConstantsElements.regularFont(size: 9)
        savingsTitle.textColor = .white
        savings.addSubview(savingsTitle)
        savingsTitle.constraint(equalToBottom: savings.bottomAnchor, paddingBottom: 8)
        savingsTitle.centre(centerX: savings.centerXAnchor)
        
        let quickStack = UIStackView(arrangedSubviews: [transfer, topUp, payBill, savings])
        quickStack.spacing = 4
        quickStack.distribution = .fillEqually
        darkView.addSubview(quickStack)
        quickStack.constraint(equalToTop: quickAccess.bottomAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 16, height: 100)
        
        transfer.layoutIfNeeded()
        transfer.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        topUp.layoutIfNeeded()
        topUp.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        payBill.layoutIfNeeded()
        payBill.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        savings.layoutIfNeeded()
        savings.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        let line4 = UIView()
        line4.backgroundColor = ConstantsElements.logoGrey
        darkView.addSubview(line4)
        line4.constraint(equalToTop: quickStack.bottomAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 32, height: 1)
        
        let explore = UILabel()
        explore.text = "Explore Mintyn"
        explore.font = ConstantsElements.regularFont(size: 15)
        explore.textColor = .white
        darkView.addSubview(explore)
        explore.constraint(equalToTop: line4.bottomAnchor, equalToLeft: darkView.leadingAnchor, paddingTop: 16)
        
        
        let investmentView = UIView()
        //transfer.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        investmentView.layer.cornerRadius = 12
        
        let investment = UIView()
        investmentView.addSubview(investment)
        investment.constraint(equalToLeft: investmentView.leadingAnchor, equalToRight: investmentView.trailingAnchor, paddingLeft: 32, paddingRight: 32)
        investment.centre(centreY: investmentView.centerYAnchor)
        
        let investmentIcon = UIImageView(image: UIImage(systemName: "chart.line.uptrend.xyaxis"))
        investmentIcon.tintColor = ConstantsElements.gold
        investment.addSubview(investmentIcon)
        investmentIcon.constraint(equalToTop: investment.topAnchor, equalToLeft: investment.leadingAnchor, width: 40, height: 40)
        
        let investmentTitle = UILabel()
        investmentTitle.text = "Investment"
        investmentTitle.font = ConstantsElements.regularFont(size: 11)
        investmentTitle.textColor = .white
        investment.addSubview(investmentTitle)
        investmentTitle.constraint(equalToTop: investmentIcon.bottomAnchor, equalToLeft: investment.leadingAnchor, paddingTop: 4)
        
        let investmentdesc = UILabel()
        investmentdesc.text = "Get up to 18% per annum ROI."
        investmentdesc.numberOfLines = 2
        investmentdesc.font = ConstantsElements.regularFont(size: 9)
        investmentdesc.textColor = ConstantsElements.nameColor
        investment.addSubview(investmentdesc)
        investmentdesc.constraint(equalToTop: investmentTitle.bottomAnchor, equalToLeft: investment.leadingAnchor, paddingTop: 4)
        
        let marketPlaceView = UIView()
        //transfer.backgroundColor = UIColor(red: 235/255, green: 42/255, blue: 78/255, alpha: 1)
        marketPlaceView.layer.cornerRadius = 12
        
        let marketPlace = UIView()
        marketPlaceView.addSubview(marketPlace)
        marketPlace.constraint(equalToLeft: marketPlaceView.leadingAnchor, equalToRight: marketPlaceView.trailingAnchor, paddingLeft: 32, paddingRight: 32)
        marketPlace.centre(centreY: marketPlaceView.centerYAnchor)
        
        let marketPlaceIcon = UIImageView(image: UIImage(systemName: "purchased"))
        marketPlaceIcon.tintColor = ConstantsElements.gold
        marketPlace.addSubview(marketPlaceIcon)
        marketPlaceIcon.constraint(equalToTop: marketPlace.topAnchor, equalToLeft: marketPlace.leadingAnchor, width: 40, height: 40)
        
        let marketPlaceTitle = UILabel()
        marketPlaceTitle.text = "Marketplace"
        marketPlaceTitle.font = ConstantsElements.regularFont(size: 11)
        marketPlaceTitle.textColor = .white
        marketPlace.addSubview(marketPlaceTitle)
        marketPlaceTitle.constraint(equalToTop: marketPlaceIcon.bottomAnchor, equalToLeft: marketPlace.leadingAnchor, paddingBottom: 4)
        marketPlaceTitle.centre(centerX: marketPlace.centerXAnchor)
        
        let marketPlacedesc = UILabel()
        marketPlacedesc.text = "Buy household food supplies at cheaper prices"
        marketPlacedesc.numberOfLines = 3
        marketPlacedesc.font = ConstantsElements.regularFont(size: 9)
        marketPlacedesc.textColor = .white
        marketPlace.addSubview(marketPlacedesc)
        marketPlacedesc.constraint(equalToTop: marketPlaceTitle.bottomAnchor, equalToLeft: marketPlace.leadingAnchor, equalToRight: marketPlace.trailingAnchor, paddingTop: 4)
        
        let exploreStack = UIStackView(arrangedSubviews: [investmentView, marketPlaceView])
        darkView.addSubview(exploreStack)
        exploreStack.axis = .horizontal
        exploreStack.spacing = 12
        exploreStack.distribution = .fillEqually
        exploreStack.constraint(equalToTop: explore.bottomAnchor, equalToLeft: darkView.leadingAnchor, equalToRight: darkView.trailingAnchor, paddingTop: 16, height: 120)
        
        investmentView.layoutIfNeeded()
        investmentView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
        
        marketPlaceView.layoutIfNeeded()
        marketPlaceView.verticalGradient(colors: [ConstantsElements.itemGrey.cgColor, UIColor.black.cgColor])
    }
}
