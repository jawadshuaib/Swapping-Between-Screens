//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Jawad Shuaib on 2016-10-13.
//  Copyright © 2016 Jawad Shuaib. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        // going back to the main screen by dismissing this screen
        dismiss(animated: true, completion: nil)
    }
    
    // Trigger a segue
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Imagine"
        
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
