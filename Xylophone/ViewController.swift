//
//  ViewController.swift
//  Xylophone
//
//  Created by Prince Kumar on 2019/08/15.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else {return}
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error)
        }
        print("Button pressed: ", sender.tag)
    }
}

