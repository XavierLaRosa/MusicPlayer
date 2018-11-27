//
//  SoundWaveViewController.swift
//  MusicPlayer
//
//  Created by Xavier La Rosa on 10/30/18.
//  Copyright © 2018 Xavier La Rosa. All rights reserved.
//

import UIKit
import MediaPlayer //now we have access to media player controls

class SoundWaveViewController: UIViewController {

     var musicPlayer = MPMusicPlayerController.applicationMusicPlayer
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func nextButtonTappedSoundWave(_ sender: UIButton) {
        musicPlayer.skipToNextItem()
    }
    
}
