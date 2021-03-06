//
//  FacebookViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/19/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import UIKit

class FacebookViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://www.facebook.com/SaratogaChamberCA/?fref=ts")
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
