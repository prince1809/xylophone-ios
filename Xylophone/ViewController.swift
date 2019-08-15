//
//  ViewController.swift
//  Xylophone
//
//  Created by Prince Kumar on 2019/08/15.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer?
    let soundArray = ["note1", "note2","note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        let selectedSoundFile : String = soundArray[sender.tag - 1]
        playSound(selectedSoundFile)
    }
    
    func playSound(_ selectedFile: String) {
        let url = Bundle.main.url(forResource: selectedFile, withExtension: "wav")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else {return}
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error)
        }
    }
}

