//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//

import Foundation
import UIKit
//import AlertToast

class CarnivalRaffleSingleton : NSObject{
    
    static let sharedInstance = CarnivalRaffleSingleton()
    
    let appName = "Carnival Raffle"
    
    let HeaderKey = ["Token_key" : "ZGSWl3bgsk19cdk3DS"]
    let GetHeaderKey = ["token_key" : "ZGSWl3bgsk19cdk3DS"]
    let deviceType = "iOS"
    
    func showAlert(title: String, msg: String, VC: UIViewController, cancel_action: Bool)
    {
        let alert = UIAlertController.init(title: title, message: msg, preferredStyle: .alert)
        let OK_action = UIAlertAction.init(title: "OK", style: .default)
        alert.addAction(OK_action)
        if cancel_action
        {
            let Cancel_action = UIAlertAction.init(title: "Cancel", style: .default)
            alert.addAction(Cancel_action)
        }
        VC.present(alert, animated: true, completion: nil)
    }
}




//Create an ObservableObject:
//class AlertViewModel: ObservableObject{
//    
//    @Published var show = false
//    @Published var alertToast = AlertToast(type: .regular, title: "SOME TITLE"){
//        didSet{
//            show.toggle()
//        }
//    }
//
//}
