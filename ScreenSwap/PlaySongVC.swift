//
//  PlaySongVC.swift
//  ScreenSwap
//
//  Created by New on 1/7/17.
//  Copyright © 2017 HSI. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    
    
    //get the detail from the privious string and sets the string on the new view controller. It gets "selected song from other vc and sets it to the new value in the vc that we want.
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong }
            
                set {
                    _selectedSong = newValue
                }
            }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Do it in viewdid load as this function happens before other functions.
        songTitleLbl.text = _selectedSong!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
