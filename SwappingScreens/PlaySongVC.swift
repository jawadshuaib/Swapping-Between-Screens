//
//  PlaySondVC.swift
//  SwappingScreens
//
//  Created by Jawad Shuaib on 2016-10-13.
//  Copyright © 2016 Jawad Shuaib. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong:String!
    // getter and setters
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
    }
}
