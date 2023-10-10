//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Akhil on 10/10/23.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    var cards: [UIImage] = Card.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        // Handle stop button tap
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        // Handle restart button tap
        timer.invalidate()
        startTimer()
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
        // Handle rules button tap
    }
}
