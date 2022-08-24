//
//  SoundPlayer.swift
//  Devote
//
//  Created by Samroz Javed on 21/08/2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String ){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            print("file found", path)
        }
        catch {
            print("Could not find and play the sound file")
        }
    }
}
