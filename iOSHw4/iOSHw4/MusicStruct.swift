//
//  MusicStruct.swift
//  iOSHw4
//
//  Created by Bodour Alrashidi on 9/19/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import Foundation

struct Song{
    var songTitle : String
    var songImage : String
    var songSinger : String
    var songDetailsImage : String
}

var songList = [Song(songTitle: "Stitches ", songImage: "stitches", songSinger: "by Shawn Mendes", songDetailsImage: "stitches2"), Song(songTitle: "Speechless", songImage: "speechless", songSinger: "by Naomi Scott", songDetailsImage: "speechless2"), Song(songTitle: "Headspace", songImage: "headspace", songSinger: "by Thomston", songDetailsImage: "headspace2"), Song(songTitle: "Shape of you", songImage: "shapeofyou", songSinger: "by Ed Sheeran", songDetailsImage: "shapeofyou2"), Song(songTitle: "Golden", songImage: "golden", songSinger: "by Harry Styles", songDetailsImage: "golden2")]
