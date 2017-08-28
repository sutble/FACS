//
//  PDFViewController.swift
//  FACS
//
//  Created by Aditya Garg on 8/14/17.
//  Copyright © 2017 garg. All rights reserved.
//

import UIKit

class PDFViewController: UIViewController {

    var pdfString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        let webview = UIWebView()
        webview.autoresizingMask = .flexibleWidth
        webview.frame = CGRect(x: 0, y: 60, width: self.view.frame.width, height: self.view.frame.height-60)
        webview.scalesPageToFit = true
        
        
        self.view.addSubview(webview)
        if let fileURL = Bundle.main.path(forResource: pdfString, ofType: "pdf") {
            let theFileURL = NSURL(fileURLWithPath: fileURL)
            webview.loadRequest(NSURLRequest(url:theFileURL as URL) as URLRequest)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
