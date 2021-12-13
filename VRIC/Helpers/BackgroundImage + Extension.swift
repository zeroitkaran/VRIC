//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//

import Foundation
import UIKit
import Kingfisher

extension UIView {

func addBackgroundImage(imgUrl: String, placeHolder: String){
    let backgroundImage = UIImageView(frame: self.bounds)
    backgroundImage.kf.setImage(with: URL(string: imgUrl), placeholder: UIImage(named: placeHolder))
    backgroundImage.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    
    // In case if your bgView frames increases
    backgroundImage.clipsToBounds = true
    backgroundImage.contentMode = .scaleToFill
    backgroundImage.alpha = 0.2
    //UIView.ContentMode.scaleAspectFill
    self.insertSubview(backgroundImage, at: 0)

}
}

// MARK:- Usage  :-

 /*
UIViewName.addBackgroundImage(imgUrl: "nil/image Name", placeHolder: "image Name")
 /**/*/
