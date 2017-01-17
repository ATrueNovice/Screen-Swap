//
//  MusicListVC.swift
//  ScreenSwap
//
//  Created by New on 1/7/17.
//  Copyright © 2017 HSI. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBOutlet weak var backbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

        // Do any additional setup after loading the view.
    }

    //Dismisses view controller. Drops it without adding code or slowing up app
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    //Loads next screen based on identifier (What we called the segue. Check the Newspaper attribute)
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "Song Cry"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    
    //Sends song title information to the Playlist page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
        
        
    
    }
    

}
