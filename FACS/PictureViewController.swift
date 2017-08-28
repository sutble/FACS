//
//  PictureViewController.swift
//  FACS
//
//  Created by Aditya Garg on 8/14/17.
//  Copyright © 2017 garg. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        self.edgesForExtendedLayout = []
        
        
        for i in 0..<imageArray.count {
            
            let imageView = UIImageView()
            imageView.image = UIImage(named: imageArray[i])
            imageView.contentMode = .scaleAspectFit
            
            let label = UILabel()
            label.text = imageArray[i]
            label.font = UIFont(name: "ScienceFair", size: 30)
            label.textAlignment = .center
            label.textColor = UIColor.white

            let width = UIScreen.main.nativeBounds.width/2
            let xPosition = width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: -34, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            label.frame = CGRect(x: xPosition, y: 10, width: self.mainScrollView.frame.width, height: 30)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i+1)
            mainScrollView.addSubview(label)
            mainScrollView.addSubview(imageView)
            mainScrollView.autoresizingMask = .flexibleHeight
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
