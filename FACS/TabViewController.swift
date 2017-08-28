//
//  TabViewController.swift
//  FACS
//
//  Created by Aditya Garg on 8/16/17.
//  Copyright © 2017 garg. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let pdfVC = self.viewControllers![0] as! PDFViewController
        let picVC = self.viewControllers![1] as! PictureViewController
        let videoVC = self.viewControllers![2] as! VideoViewController
        
        pdfVC.navigationItem.title = masterList[masterSection][masterRow].pdf
        picVC.navigationItem.title = masterList[masterSection][masterRow].pdf
        videoVC.navigationItem.title = masterList[masterSection][masterRow].pdf
        
        
        self.title = masterList[masterSection][masterRow].name
        
        pdfVC.pdfString = masterList[masterSection][masterRow].pdf
        picVC.imageArray = masterList[masterSection][masterRow].pictures
        videoVC.videoArray = masterList[masterSection][masterRow].videos
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
