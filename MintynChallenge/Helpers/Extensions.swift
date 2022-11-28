//
//  Extensions.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/23/22.
//

import Foundation
import UIKit

extension UIView {
    
    func properlyRemove() {
        
        for view in self.subviews {
            
            view.removeFromSuperview()
        }
        self.removeFromSuperview()
    }
    
    func addCordinateSubviewToCentre(view : UIView, width : Double, height : Double) {
        
        view.frame = CGRect(x: (frame.width/2.0) - (width/2.0), y: (frame.height/2.0) - (height/2.0), width: width, height: width)
        addSubview(view)
        
    }
    
    func centreHorizontally(view : UIView, y : Double, height : Double, width: Double) {
        
        view.frame = CGRect(x: (frame.width/2.0) - (width/2.0), y: y, width: width, height: height)
        
        addSubview(view)
        
    }
    
    func centreVertically(view : UIView, x : Double, height : Double, width: Double) {
        
        view.frame = CGRect(x: x, y: (frame.height/2.0) - (height/2.0), width: width, height: height)
        
        addSubview(view)
        
    }
    
    func centerVertInSuperView(x: Double, height: Double) {
        
        frame.origin.y = (frame.height/2.0) - (height/2.0)
    }
    
    func constraint (equalToTop: NSLayoutYAxisAnchor? = nil,
                     equalToBottom: NSLayoutYAxisAnchor? = nil,
                     equalToLeft: NSLayoutXAxisAnchor? = nil,
                     equalToRight: NSLayoutXAxisAnchor? = nil,
                     paddingTop: CGFloat = 0,
                     paddingBottom: CGFloat = 0,
                     paddingLeft: CGFloat = 0,
                     paddingRight: CGFloat = 0,
                     width: CGFloat? = nil,
                     height: CGFloat? = nil
    ) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let equalToTop = equalToTop {
            
            topAnchor.constraint(equalTo: equalToTop, constant: paddingTop).isActive = true
        }
        
        if let equalTobottom = equalToBottom {
            
            bottomAnchor.constraint(equalTo: equalTobottom, constant: -paddingBottom).isActive = true
        }
        
        if let equalToLeft = equalToLeft {
            
            leadingAnchor.constraint(equalTo: equalToLeft, constant: paddingLeft).isActive = true
        }
        
        if let equalToRight = equalToRight {
            
            trailingAnchor.constraint(equalTo: equalToRight, constant: -paddingRight).isActive = true
        }
        
        if let width = width {
            
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func centre (centerX: NSLayoutXAxisAnchor? = nil, centreY: NSLayoutYAxisAnchor? = nil) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let centerx = centerX {
            
            centerXAnchor.constraint(equalTo: centerx).isActive = true
        }
        
        if let centery = centreY {
            
            centerYAnchor.constraint(equalTo: centery).isActive = true
        }
    }
    
    func showtoast(message2: String) {
        
        DispatchQueue.main.async {
            let toastView = UIView()
            toastView.alpha = 0
            self.addSubview(toastView)
            self.bringSubviewToFront(toastView)
            toastView.backgroundColor = .black
            toastView.constraint(equalToBottom: self.bottomAnchor, equalToLeft: self.leadingAnchor, equalToRight: self.trailingAnchor, paddingBottom: 60, paddingLeft: 30, paddingRight: 30)
            toastView.layer.cornerRadius = 10
            
            let message = UILabel()
            toastView.addSubview(message)
            message.text = message2
            message.textColor = .white
            message.font = UIFont(name: "Roboto-Regular", size: 13)
            message.textAlignment = .center
            message.numberOfLines = 0
            message.constraint(equalToTop: toastView.topAnchor, equalToBottom: toastView.bottomAnchor, equalToLeft: toastView.leadingAnchor, equalToRight: toastView.trailingAnchor, paddingTop: 15, paddingBottom: 15, paddingLeft: 5, paddingRight: 5, width: nil)
            
            
            UIView.animate(withDuration: 0.5, animations: {toastView.alpha = 1})
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                UIView.animate(withDuration: 0.2, animations: {toastView.alpha = 0})
            })
        }
    }
    
    func shadowBorder (){
        
        //layer.cornerRadius = 4
        layer.shadowColor = UIColor.white.cgColor//self.backgroundColor?.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.75)
        layer.shadowRadius = 15
        layer.shadowOpacity = 1.0
    }
    
    func shadowBorderBlack (){
        
        //layer.cornerRadius = 4
        layer.shadowColor = UIColor.black.cgColor//self.backgroundColor?.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.75)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.3
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        if #available(iOS 11.0, *) {
                    clipsToBounds = true
                    layer.cornerRadius = radius
                    layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
                } else {
                    let path = UIBezierPath(
                        roundedRect: bounds,
                        byRoundingCorners: corners,
                        cornerRadii: CGSize(width: radius, height: radius)
                    )
                    let mask = CAShapeLayer()
                    mask.path = path.cgPath
                    layer.mask = mask
                }
    }
    
    func wrap(view: UIView, padTop: CGFloat, padBottom: CGFloat, padLeft: CGFloat, padRight: CGFloat) {
        
        addSubview(view)
        view.constraint(equalToTop: self.topAnchor, equalToBottom: self.bottomAnchor, equalToLeft: leadingAnchor, equalToRight: self.trailingAnchor, paddingTop: padTop, paddingBottom: padBottom, paddingLeft: padLeft, paddingRight: padRight)
    }
    
    func verticalGradient(colors: [CGColor]) {
        
        let newLayer = CAGradientLayer()
        newLayer.frame = self.bounds
        newLayer.colors = colors
        layer.insertSublayer(newLayer, at: 0)
        clipsToBounds = true
        
    }
    
    func horizontalGradient(colors: [UIColor], points: [CGPoint]) {
        
        let gradientView = GradientView(frame: bounds)
        gradientView.color1 = colors[0]
        gradientView.color2 = colors[1]
        gradientView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.insertSubview(gradientView, at: 0)
        clipsToBounds = true
        
    }
    
}
