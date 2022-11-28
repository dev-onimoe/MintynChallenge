//
//  CountryViewController.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/28/22.
//

import UIKit
import CountryPickerView

class CountryViewController: UIViewController {
    
    var delegate: CountrySelected?
    
    lazy var countryView: CountryPickerView = {
        let countryPicker = CountryPickerView()
        countryPicker.delegate = self
        countryPicker.dataSource = self
        return countryPicker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
        //self.view.backgroundColor = .black
    }
    
    func setup() {
        
        self.view.backgroundColor = .black
        guard let view = self.view else {return}
        
        self.navigationController?.isNavigationBarHidden = true
        
        /*let notView = UIView()
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
        welcome.text = "Choose your country"
        welcome.textColor = .white
        welcome.font = ConstantsElements.serifFont(size: 18)
        view.addSubview(welcome)
        welcome.centre(centerX: view.centerXAnchor, centreY: notView.centerYAnchor)
        
        view.addSubview(countryView)
        countryView.constraint(equalToTop: welcome.bottomAnchor, equalToBottom: view.bottomAnchor, equalToLeft: view.leadingAnchor, equalToRight: view.trailingAnchor, paddingTop: 12, paddingBottom: 16, paddingLeft: 8, paddingRight: 8)*/
        countryView.showCountriesList(from: self)
    }
    
    @objc func backAction() {
        
        self.navigationController?.popViewController(animated: true)
    }

}

extension CountryViewController : CountryPickerViewDelegate, CountryPickerViewDataSource {
    
    func countryPickerView(_ countryPickerView: CountryPickerView, didSelectCountry country: Country) {
        delegate?.countrySelected(image: country.flag, code: country.phoneCode)
        self.navigationController?.popViewController(animated: true)
    }
    
}

protocol CountrySelected {
    
    func countrySelected(image: UIImage, code: String)
}
