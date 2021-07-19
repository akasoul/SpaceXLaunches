//
//  File.swift
//  SpaceXLaunches
//
//  Created by Anton Voloshuk on 19.07.2021.
//

import Foundation
import UIKit
import WebKit


class DetailVC: UIViewController, WKUIDelegate {
    
    let webView = WKWebView()
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loadFromUrl(url: URL){
        let request = URLRequest(url: url)
        webView.load(request)
        
    }
}
