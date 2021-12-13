//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//

import Foundation
import UIKit

extension UIView {

    //MARK:- Usage ---> ViewName.applyGradient(isVertical: true, colorArray: [.systemPurple, .systemPink] )
    
    func applyGradient(isVertical: Bool, colorArray: [UIColor]) {
        layer.sublayers?.filter({ $0 is CAGradientLayer }).forEach({ $0.removeFromSuperlayer() })
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colorArray.map({ $0.cgColor })
        if isVertical {
            //top to bottom
            gradientLayer.locations = [0.0, 1.0]
        } else {
            //left to right
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        
        backgroundColor = .clear
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    func backgroundGradient(){
     
        // Create a gradient layer.
           let gradientLayer = CAGradientLayer()
           // Set the size of the layer to be equal to size of the display.
           gradientLayer.frame = self.bounds
           // Set an array of Core Graphics colors (.cgColor) to create the gradient.
           // This example uses a Color Literal and a UIColor from RGB values.
           gradientLayer.colors = [UIColor(red: 154/255, green: 61/255, blue: 245/255, alpha: 1).cgColor, UIColor(red: 202/255, green: 62/255, blue: 246/255, alpha: 1).cgColor]
           // Rasterize this static layer to improve app performance.
           gradientLayer.shouldRasterize = true
           self.layer.insertSublayer(gradientLayer, at:0)
       
    }
    
    
    

}


