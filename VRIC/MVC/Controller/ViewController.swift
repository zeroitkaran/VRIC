//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 13/12/21.
//

import UIKit
import FacebookLogin
import FBSDKLoginKit

@available(iOS 13.0, *)
class ViewController: UIViewController {
    let loginButton = FBLoginButton()
    @IBOutlet var BGView: UIView!
    @IBOutlet weak var BtnContinue: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.BGView.addBackgroundImage(imgUrl: "", placeHolder: "Background.png")
        self.BtnContinue.layer.shadowColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 0.25)
        self.BtnContinue.layer.shadowOffset = CGSize.init(width: 0, height: 2.0)
        self.BtnContinue.layer.shadowOpacity = 0.5
        self.BtnContinue.layer.shadowRadius = 0.0
        self.BtnContinue.layer.masksToBounds = false
        loginButton.permissions = ["public_profile", "email"]
        if let token = AccessToken.current,
           !token.isExpired {
            // User is logged in, do work such as go to next view controller.
        }
        
        
        
        
    }
    
    @IBAction func ActionGoogleLogin(_ sender: Any) {
    }
    @IBAction func ActionFacebookLogin(_ sender: UIButton) {
        let login = LoginManager()
        login.logIn(permissions: ["email"], from: self) { (result, error) -> Void in
            if (error != nil) {
                print(error!)
            }
            else if (result?.isCancelled)! {
            }
            else {
                if (AccessToken.current != nil) {
                    GraphRequest(graphPath: "me", parameters: ["fields":"id,interested_in,gender,birthday,email,age_range,first_name,last_name,picture.width(480).height(480)"]).start(completionHandler: { (connection, result, error) -> Void in
                        
                        let SocialID = ((result as? NSDictionary)?.value(forKey: "id") as? String)!
                        var Email = ""
                        if (result as? NSDictionary)?.value(forKey: "email") as? String != nil
                        {
                            Email = ((result as? NSDictionary)?.value(forKey: "email") as? String)!
                        }
                        let FirstName = ((result as? NSDictionary)?.value(forKey: "first_name") as? String)
                        let LastName = ((result as? NSDictionary)?.value(forKey: "last_name") as? String)
                        let ImageURL = ((((result as? NSDictionary)?.value(forKey: "picture") as? NSDictionary)?.value(forKey: "data") as? NSDictionary)?.value(forKey: "url") as? String)
                        print(Email)
                        print(FirstName)
                        print(LastName)
                        print(ImageURL)
                        print(SocialID)
                        
//                        self.socialLogin(name: FirstName ?? "", age_range: "0", email: SocialID, password: "\(AccessToken.current!)", profile_image: ImageURL ?? "", type: "0", gender: "")
                        
                        
                    })
                }
            }
            
        }
    }
   





    @IBAction func ActionAppleLogin(_ sender: Any) {
    }
}
