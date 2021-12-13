//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//

//import Foundation
//
//
//enum localStoreKeys: String {
//    
//    case loginData = "loginData"
//    
//}
//
//
//var D_Get_LoginData: GetUserData?{
//    get{
//        return getLoginDetails(.loginData)
//    }
//}
//
//var D_Save_LoginData: GetUserData?{
//    didSet{
//        saveLoginData(D_Save_LoginData!, .loginData)
//    }
//}
//
//
//
//
//
//func getLoginDetails (_ key: localStoreKeys) -> GetUserData? {
//    if let data = UserDefaults.standard.value(forKey: key.rawValue) as? Data{
//        let userDetails = try? PropertyListDecoder().decode(GetUserData.self, from: data)
//        return userDetails!
//    }
//    return nil
//}
//
//private func saveLoginData (_ value: GetUserData, _ Key: localStoreKeys){
//    UserDefaults.standard.set(try? PropertyListEncoder().encode(value), forKey: Key.rawValue)
//    UserDefaults.standard.synchronize()
//}
//
//
//
