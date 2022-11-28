//
//  CustomTabBar.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/24/22.
//

import UIKit

class CustomTabBar: UITabBar {

    private var shapeLayer: CAShapeLayer?
    
    func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.fillColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 1.0
        
        shapeLayer.shadowOffset = CGSize(width: 0, height: 0)
        shapeLayer.shadowRadius = 10
        shapeLayer.shadowColor = UIColor.black.cgColor
        shapeLayer.shadowOpacity = 3.0
        
        if let oldLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldLayer, with: shapeLayer)
        }else {
            
            self.layer.insertSublayer(shapeLayer, at: 0)
        }
        self.shapeLayer = shapeLayer
        
    }
    
    override func draw(_ rect: CGRect) {
        //self.addShape()
        self.unselectedItemTintColor = UIColor.white
        self.tintColor = ConstantsElements.gold
        
    }
    
    func createPath() -> CGPath {
        
        let centreWidth = self.frame.width/2
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: centreWidth - 25.0, y: 0))
        path.addQuadCurve(to: CGPoint(x: centreWidth - 20, y: 20), controlPoint: CGPoint(x: centreWidth - 20, y: 5))
        path.addQuadCurve(to: CGPoint(x: centreWidth + 20, y: 20), controlPoint: CGPoint(x: centreWidth, y: 25))
        path.addQuadCurve(to: CGPoint(x: centreWidth + 25, y: 0), controlPoint: CGPoint(x: centreWidth + 20, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.width))
        path.close()
        return path.cgPath
    }

}
