//
//  ViewController.swift
//  WebView03
//
//  Created by dit02 on 2019. 9. 5..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
        let request = URLRequest(url: URL(string: "https://www.naver.com")!)
        
        webView.load(request)
    }
    @IBAction func backAction(_ sender: Any) {
        if self.webView.canGoBack{
        self.webView.goBack()
        }
    }
    
    
    @IBAction func forwardAction(_ sender: Any) {
        if self.webView.canGoForward{
            self.webView.goForward()
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let inputURL = searchBar.text!
        let request = URLRequest(url: URL(string: inputURL)!)
        webView.load(request)
        self.view.endEditing(true)
   
    }
    
    
}

