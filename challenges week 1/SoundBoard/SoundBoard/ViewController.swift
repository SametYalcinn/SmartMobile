//
//  ViewController.swift
//  SoundBoard
//
//  Created by Student on 20/02/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func aTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "A", withExtension: "m4a")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and playt the sound
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func bTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "B", withExtension: "m4a")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and playt the sound.
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func cTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "C", withExtension: "m4a")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and playt the sound
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }
    
    @IBAction func dTapped(_ sender: Any) {
        
        // Getting the url
        let url = Bundle.main.url(forResource: "D", withExtension: "m4a")
        
        // make sure that we've got the url, otherwise abord
        guard url != nil else {
            return
        }
        
        // Create the audio player and playt the sound
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error")
        }
    }
    
}

