//
//  ViewController.swift
//  iOSHw4
//
//  Created by Bodour Alrashidi on 9/19/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit
var songselected = Song(songTitle: "", songImage: "", songSinger: "", songDetailsImage: "")
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        songImage()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    
    
    func songImage()
    {
        button1.setBackgroundImage(UIImage(named: songList[0].songImage), for: .normal)
        button2.setBackgroundImage(UIImage(named: songList[1].songImage), for: .normal)
        button3.setBackgroundImage(UIImage(named: songList[2].songImage), for: .normal)
        button4.setBackgroundImage(UIImage(named: songList[3].songImage), for: .normal)
        button5.setBackgroundImage(UIImage(named: songList[4].songImage), for: .normal)
    }
    
    
    @IBAction func press(_ sender: UIButton) {
        songselected = songList[sender.tag]
        performSegue(withIdentifier: "gosong", sender: nil)
    }
}
