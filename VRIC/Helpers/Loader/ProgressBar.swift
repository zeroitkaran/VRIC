//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//


import Foundation
import UIKit
import NVActivityIndicatorView


class Helper {
   static func getLoaderViews()->(UIView,NVActivityIndicatorView){
        let activityIndicatorView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 100, height: 100), type: NVActivityIndicatorType.ballScaleMultiple, color: UIColor.purple, padding: 0)
        let blurView = UIView()
        // create your components,customise and return
        return (blurView,activityIndicatorView)
    }
}

extension UIViewController {

    func addLoaderToView(view:UIView,blurView:UIView ,activityIndicatorView:NVActivityIndicatorView) {

                blurView.isHidden = false
                blurView.frame = view.frame
                blurView.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.5)
                view.addSubview(blurView)
                activityIndicatorView.center = blurView.center
                view.addSubview(activityIndicatorView)
                activityIndicatorView.startAnimating()
    }

    func removeLoader(activityIndicatorView:NVActivityIndicatorView,blurView:UIView)  {
        activityIndicatorView.stopAnimating()
        blurView.isHidden = true
    }
}


//Declare
//let (blurView,activityIndicatorView) = Helper.getLoaderViews()

// show Loader
//self.addLoaderToView(view:self.view,blurView:blurView ,activityIndicatorView:activityIndicatorView)




//stop Loader
//self.removeLoader(activityIndicatorView:self.activityIndicatorView,blurView:self.blurView)
