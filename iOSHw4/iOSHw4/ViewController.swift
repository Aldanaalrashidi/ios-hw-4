//
//  ViewController.swift
//  iOSHw4
//
//  Created by Bodour Alrashidi on 9/19/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit
var songList = shawnMendesSong
var songselected = Song(songTitle: "", songImage: "", songSinger: "", songDetailsImage: "")
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        songImage()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var song4Label: UILabel!
    @IBOutlet weak var song3Label: UILabel!
    @IBOutlet weak var song2Label: UILabel!
    @IBOutlet weak var song1Label: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
   
    
    
    func songImage()
    {
        button1.setBackgroundImage(UIImage(named: songList[0].songImage), for: .normal)
        button2.setBackgroundImage(UIImage(named: songList[1].songImage), for: .normal)
        button3.setBackgroundImage(UIImage(named: songList[2].songImage), for: .normal)
        button4.setBackgroundImage(UIImage(named: songList[3].songImage), for: .normal)
        song1Label.text = songList[0].songTitle
        song2Label.text = songList[1].songTitle
        song3Label.text = songList[2].songTitle
        song4Label.text = songList[3].songTitle
    }
    
    
    @IBAction func press(_ sender: UIButton) {
        songselected = shawnMendesSong[sender.tag]
        performSegue(withIdentifier: "gosong", sender: nil)
    }
}
