//
//  ViewController.swift
//  monkeySee
//
//  Created by Shinan Liu on 10/27/18.
//  Copyright © 2018 Shinan Liu. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {

    @IBAction func onClick(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4"){
            let video =  AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

