//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//

import Foundation


var baseUrl = "https://carnivalraffles.com/api/mobile/"
class APIList: NSObject  {
    static let shared = APIList()
    

    var signup = baseUrl + "user_register"
    var login = baseUrl + "user_login"
    var forgetpassword = baseUrl + "forgot_password"
    var Country = baseUrl + "get_all_countries"
    var get_slider_contest = baseUrl + "get_slider_contest"
    var get_Contest_by_id = baseUrl + "get_contest_by_id"
    var Cart_Data = baseUrl + "get_cart_data"
    var Cart_Checkout = baseUrl + "get_cart_checkout"
    var Wipay_trans = baseUrl + "get_wipay_transaction"
    var Post_Cart = baseUrl + "postCart"
    var ClearCart = baseUrl + "clearCart"
    var Delete_Cart = baseUrl + "deleteCart"
    var Add_wipay_payment = baseUrl + "add_wipay_payment"
    var Share_contact_detail = baseUrl + "share_your_contact_details"
    var Save_Favourite_post = baseUrl + "saveFavourite_post"
    var Send_Email = baseUrl + "sendemail"
    var get_Cart_Data = baseUrl + "get_cart_data"
    var get_Cart_Checkout = baseUrl + "get_cart_checkout"
    var get_User_Data_By_Id = baseUrl + "get_user_data_by_id"
    var Get_Wipay_Transaction = baseUrl + "get_wipay_transaction"
    var Get_User_Favourite = baseUrl + "get_user_favourite"
    var Get_Tickets_By_User_Id = baseUrl + "get_tickets_by_user_id"
    var Change_Password = baseUrl + "change_password"
    var profileUpdate = baseUrl + "profile_update"
    var GetContestByCategoriesId = baseUrl + "get_contest_by_categories_id"
    var ContestDetail = baseUrl + "contestDetail"
    var PostCart = baseUrl + "postCart"
    var SaveFavouritePost = baseUrl + "save_Favourite"
    
    
    
    
    
   
}

