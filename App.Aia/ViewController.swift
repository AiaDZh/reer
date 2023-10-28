//
//  ViewController.swift
//  App.Aia
//
//  Created by Ainagul Doskazhanova on 19.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var winLabel: UILabel!
    let game = TicTac()
    @IBOutlet var arrayButton: [UIButton]!
    @IBAction func clickbutton(_ sender: UIButton) {
        guard let index = arrayButton.firstIndex(of: sender) else {
            return
        }
        game.choiseXO(index: index)
        updateView()
    }
    func updateView() {
        for i in game.XOs.indices {
            let XO = game.XOs[i]
            let button = arrayButton[i]
            if XO.isWrite{
                button.setTitle(XO.writeXO, for: .normal)
                button.isEnabled = false
            }
            else {
                button.setTitle("", for: .normal)
                button.isEnabled = true
                
            }
        }
        if let win = game.win() {
            winLabel.text = "Winner: \(win)"
        }
    }
    
    
    @IBAction func restart(_ sender: Any) {
        game.restart()
        updateView()
        winLabel.text = ""
    }
}





