//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 13/12/21.
//

import UIKit
import FacebookLogin
import FBSDKLoginKit
import LocalAuthentication
import GoogleSignIn

@available(iOS 13.0, *)
class ViewController: UIViewController {
    let signInConfig = GIDConfiguration.init(clientID: "17721132124-c5vdopknh45hd3mad1e7q3h07rlcheaf.apps.googleusercontent.com")

    @IBOutlet var BGView: UIView!
    @IBOutlet weak var BtnContinue: UIButton!
    @IBOutlet weak var BtnGoogle: UIButton!
    @IBOutlet weak var BtnFacebook: UIButton!
    @IBOutlet weak var BtnApple: UIButton!
    @IBOutlet weak var BtnTouchId: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.BGView.addBackgroundImage(imgUrl: "", placeHolder: "Background.png")
        self.BtnContinue.layer.shadowColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 0.25)
        self.BtnContinue.layer.shadowOffset = CGSize.init(width: 0, height: 2.0)
        self.BtnContinue.layer.shadowOpacity = 0.5
        self.BtnContinue.layer.shadowRadius = 0.0
        self.BtnContinue.layer.masksToBounds = false
        if let token = AccessToken.current,
           !token.isExpired {
            // User is logged in, do work such as go to next view controller.
        }}
    
    func TouchId(){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
            let reason = "Identify yourself!"
            
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) {
                [weak self] success, authenticationError in
                
                DispatchQueue.main.async {
                    if success {
                        //self?.unlockSecretMessage()
                        print("unlock")
                    } else {
                        // error
                        VRICSingleton.sharedInstance.showAlert(title: "Authentication failed", msg: "You could not be verified; please try again.", VC: self! , cancel_action: false)}
                    
                    if (authenticationError != nil) {
                        print("failss")
                    } else {
                        VRICSingleton.sharedInstance.showAlert(title: "Success", msg: "Logged In", VC: self!, cancel_action: false)
                    }
                }
            }
        } else {
            // no biometry
            let ac = UIAlertController(title: "Biometry unavailable", message: "Your device is not configured for biometric authentication.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(ac, animated: true)
        }
    }
    
    
    
    
    
    @IBAction func ActionGoogleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
          guard error == nil else { return }

            GIDSignIn.sharedInstance.signIn(with: self.signInConfig, presenting: self) { user, error in
                guard error == nil else { return }
                guard let user = user else { return }

                let emailAddress = user.profile?.email

                let fullName = user.profile?.name
                let givenName = user.profile?.givenName
                let familyName = user.profile?.familyName

                let profilePicUrl = user.profile?.imageURL(withDimension: 320)
                
                print("fullName \(fullName!)" + "emailAddress \(emailAddress!)" + "givenName \(givenName!)" + "familyName \(familyName!)" + "profilePicUrl \(profilePicUrl!)" )
            }
            
            VRICSingleton.sharedInstance.showAlert(title: "Success", msg: "Logged In", VC: self, cancel_action: false)
        }
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
                        print(FirstName!)
                        print(LastName!)
                        print(ImageURL!)
                        print(SocialID)
                        
//                        self.socialLogin(name: FirstName ?? "", age_range: "0", email: SocialID, password: "\(AccessToken.current!)", profile_image: ImageURL ?? "", type: "0", gender: "")
                        
                        
                    })
                }
            }
            
        }
    }
   





    @IBAction func ActionAppleLogin(_ sender: Any) {
    }
    @IBAction func ActionGuestLogin(_ sender: Any) {
        
        
    }
    @IBAction func ActionTouchId(_ sender: Any) {
        TouchId()
    }
    
}
