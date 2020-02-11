//
//  NewsViewController.swift
//  BBC
//
//  Created by Proshenjit kumar on 11/2/20.
//  Copyright © 2020 Proshenjit kumar. All rights reserved.
//

import UIKit
import WebKit

class NewsViewController: UIViewController, WKNavigationDelegate {

    var btnNO : Int!
    var WB: String!
    var web: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        web = WKWebView()
        web.navigationDelegate = self
        view = web
        showingWebsit()
        // Do any additional setup after loading the view.
    }
    

    
    
    func showingWebsit(){
        
        switch btnNO {
        case 1:
            WB = "https://www.bbc.com/"
        case 2:
            WB = "https://edition.cnn.com/"
        case 3:
            WB = "https://www.aljazeera.com/"
        default:
            print("Error")
        }
        
        let url = URL(string: WB)!
        web.load(URLRequest(url: url))
        
    }
    
    
    
    
    

}
