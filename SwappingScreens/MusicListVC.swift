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

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        // going back to the main screen by dismissing this screen
        // It is better to do it programmatically like this than use segue drag/drop controller
        // because it is more efficient (less memory intensive)
        dismiss(animated: true, completion: nil)
    }
    
    // Trigger a segue
    // Let's programatically move to the next page and also pass a value from MusicListVC to
    // PlaySongVC
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Imagine"
        
        // Execute segue to the 'PlayStrongVC' controller and parse the songTitle data
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // I think we are making 'destination' equivalent to the PlaySongVC class
        if let destination = segue.destination as? PlaySongVC {
            // The sender contains the songTite
            if let song = sender as? String {
                // "selectedSong" is a variable in the PlaySongVC class
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
