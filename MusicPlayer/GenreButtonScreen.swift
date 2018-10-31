//
//  GenreButtonScreen.swift
//  MusicPlayer
//
//  Created by Xavier La Rosa on 10/30/18.
//  Copyright © 2018 Xavier La Rosa. All rights reserved.
//

import UIKit
import MediaPlayer //now we have access to media player controls

//this is where we connect our buttons
    //go to buttomn > control drag > designated line on code
class GenreButtonScreen: UIViewController {

     var musicPlayer = MPMusicPlayerController.applicationMusicPlayer
    //created a var under an object with method applicationMusicPlayer() which closes music player if exit app
    
    //this is a function
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func genreButtonTapped(_ sender: UIButton) {
        MPMediaLibrary.requestAuthorization{(status) in
            if status == .authorized {
            self.playGenre(genre: sender.currentTitle!)//takes in the button that was tapped and gets the genre tapped and connects to musicPlayer
            }
            
        }
        
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        musicPlayer.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        musicPlayer.skipToNextItem()
    }
    
    //function when you tap the button, take in a parameter of what genera to play so genre: String
    func playGenre(genre: String){
        
        //first stop music player in case a song is already playing or else they play over each other
        musicPlayer.stop()
        
        //create query of that media and get genre of what we want
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value: genre, forProperty: MPMediaItemPropertyGenre) //prediactes are kind of like filters, and forProperty: gets properties of genre for val genre
        
        query.addFilterPredicate(predicate)
        musicPlayer.setQueue(with: query) //give back the playlist of genre chosen
        musicPlayer.shuffleMode = .songs
        musicPlayer.play() //plays song
        
        
    }
}
