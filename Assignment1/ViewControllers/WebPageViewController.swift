//
//  AboutUsViewController.swift
//  Assignment1
//
//  Created by Giriraj Bhagat on 2019-01-27.
//  Copyright © 2019 Giriraj Bhagat. All rights reserved.
//

import UIKit
import WebKit


class WebPageViewController: UIViewController, WKNavigationDelegate {
    
   

    @IBOutlet var acitivities:UIActivityIndicatorView!
    @IBOutlet var wbPage:WKWebView!
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
        acitivities.isHidden = false;
        acitivities.startAnimating();
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        acitivities.isHidden = true;
        acitivities.stopAnimating();
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlAddress = URL(string:"https://www.chess.com");
        let url = URLRequest(url: urlAddress!)
        wbPage.load(url)
        wbPage.navigationDelegate = self;
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
