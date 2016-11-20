//
//  SecondViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/18/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var Webview: UIWebView!
    
    @IBOutlet weak var navigationTitle: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://business.saratogachamber.org/events/")
        let request = NSURLRequest(URL: url!)
        
        Webview.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

