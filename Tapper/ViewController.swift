//
//  ViewController.swift
//  Tapper
//
//  Created by Ridwan Al-Mansur on 01/02/2016.
//  Copyright © 2016 Ridwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var starBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    // Actions
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if inputTxt.text != nil && inputTxt.text != "" {
            play()
        }
    }
    
    @IBAction func tapsPressed(sender: UIButton!) {
        currentTaps++
        updateTapsTxt(currentTaps)
        
        if isGameOver() {
            restartGame()
        }
    }
    
    // Functions
    
    func play() {
        logoImage.hidden = true
        inputTxt.hidden = true
        playBtn.hidden = true
        
        starBtn.hidden = false
        tapsLabel.hidden = false
        
        maxTaps = Int(inputTxt.text!)!
        currentTaps = 0
        updateTapsTxt(currentTaps)
    }
    
    func updateTapsTxt(currentTaps: Int) {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        maxTaps = 0
        tapsLabel.text = ""
        logoImage.hidden = false
        inputTxt.hidden = false
        playBtn.hidden = false
        
        starBtn.hidden = true
        tapsLabel.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

