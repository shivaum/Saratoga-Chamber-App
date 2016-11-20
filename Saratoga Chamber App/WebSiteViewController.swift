//
//  WebSiteViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/19/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import UIKit

class WebSiteViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://www.saratogachamber.org/index.php")
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
