//
//  DetailsViewController.swift
//  iOSHw4
//
//  Created by Bodour Alrashidi on 9/19/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit
import AVFoundation
var bombSoundEffect: AVAudioPlayer?
class DetailsViewController: UIViewController {
    @IBOutlet weak var songTitleLabel: UILabel!
    
    @IBOutlet weak var songSingerLabel: UILabel!
    @IBOutlet weak var songImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLabel.text = songselected.songTitle
        songSingerLabel.text = songselected.songSinger
        songImage.image = UIImage(named: songselected.songDetailsImage)
    }
    
    
    @IBAction func press(_ sender: Any) {
        let path = Bundle.main.path(forResource: "\(songselected.songImage).mp3", ofType:nil)!
            let url = URL(fileURLWithPath: path)

            do {
                bombSoundEffect = try AVAudioPlayer(contentsOf: url)
                bombSoundEffect?.play()
            } catch {
                // couldn't load file :(
            }
        }
    
    

}
