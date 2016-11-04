//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Sergiy Blednov on 11/3/16.
//  Copyright © 2016 Sergiy Blednov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberButton: UIButton!
    var game: Game?
    var gameScore: Int? {
        didSet {
            numberButton.setTitle("1", for: .normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: String) {
        guard let unwrapedGame = game else {
            print("Game is nil")
            return
        }
        let response = unwrapedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        play(move: "1")
    }

}

