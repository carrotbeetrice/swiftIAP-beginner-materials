//
//  ViewController.swift
//  Add 1
//
//  Created by Caryl Peneyra on 28/12/20.
//

// *****************************************
// STARTER CODE ONLY, DO NOT TRY TO RUN THIS
// *****************************************

import UIKit

class GameViewController: UIViewController {
    
    @IBAction func inputFieldDidChange() {

        
        if timer == nil {
            timerUpdate()
        }
    }
    
    
    func updateTimeLabel() {
        let min = (seconds / 60) % 60
        let sec = seconds % 60
        
        timeLabel?.text = String(format: "%02d", min) + ":" + String(format: "%02d", sec)
    }
    
    
    func timerUpdate() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {timer in
            if self.seconds == 0 {
                self.finishGame()
            } else if self.seconds <= 60 {
                self.seconds -= 1
                self.updateTimeLabel()
            }
        }
    }
    
    
    func finishGame() {
        // Reset timer
        timer?.invalidate()
        timer = nil
        
        let alert = UIAlertController(title: "Time's up!", message: "Your time is up! You scored \(score) points. NOICE!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK, start new game", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
        // Reset score and seconds
        score = 0
        seconds = 60
        
        // Update labels
        updateTimeLabel()
        updateScoreLabel()
        updateNumberLabel()
    }
    
    
}

