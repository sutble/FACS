//
//  VideoViewController.swift
//  FACS
//
//  Created by Aditya Garg on 8/14/17.
//  Copyright © 2017 garg. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var playerArray = [AVPlayer?]()
    var playerLayerArray = [AVPlayerLayer]()
    var counter:Int = 0
    var videoArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("LENGTH: ", videoArray.count)
        print("WIDTH: ", self.view.frame.width)
        self.edgesForExtendedLayout = []
        initPlayers()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: playerArray[0].currentItem)
        print("REMOVED")
        deinitPlayers()
        
    }
    
    func initPlayers(){
        for i in 0..<videoArray.count {
            
            //Video URL
            let urlString = "MP4/" + videoArray[i]
            let videoURL: NSURL = Bundle.main.url(forResource: urlString, withExtension: "mp4")! as NSURL
            
            //Initialize Player and append
            var player : AVPlayer?  = AVPlayer(url: videoURL as URL)
            player!.actionAtItemEnd = .none
            player!.isMuted = true
            playerArray.append(player)
            
            //Setup playerlayer
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
            playerLayer.zPosition = -1
            let xPosition = self.view.frame.width * CGFloat(floor(Double(i/2)))
            let yPosition = self.view.frame.height/2.3 * CGFloat(i%2)
            //let xPosition = self.view.frame.width * CGFloat(i)
            //let yPosition : CGFloat = 0
            playerLayer.frame = CGRect(x: xPosition, y: yPosition, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height/2)
            playerLayerArray.append(playerLayer)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(floor(Double((i+2)/2)))
            mainScrollView.layer.addSublayer(playerLayer)
            
            player!.play()
            
        }
        mainScrollView.backgroundColor = UIColor.black
        
        if playerArray.count != 0 {
            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: playerArray[0]!.currentItem, queue: nil)
            { notification in
                let t1 = CMTimeMake(1, 100);
                for i in 0..<self.playerArray.count{
                    self.playerArray[i]!.seek(to: t1)
                    self.playerArray[i]!.play()
                }
            }
        }
        
    }
    
    func checkVid(){
        if(videoArray.count == 0){
            imageView.alpha = 1
        }
        
    }
    
    func deinitPlayers(){
        
        for i in 0..<self.playerArray.count {
            if self.playerArray.count != 0{
                self.playerArray[i]!.pause()
                self.playerArray[i] = nil
                playerLayerArray[i].removeFromSuperlayer()
            }
        }
        playerArray.removeAll()
        playerLayerArray.removeAll()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ADDED")
        //initPlayers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Going to be added")
        initPlayers()
    }
    
}
