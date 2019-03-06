//
//  ViewController.swift
//  Rock Paper Scissors
//
// Main Screen: Displays three options to choose a move from

import UIKit

class MainViewController: UIViewController {

    var myMove: Moves!
    
    @IBAction func rockPressed(_ sender: Any) {
        myMove = .Rock
        nextMove()
    }
    
    @IBAction func paperPressed(_ sender: Any) {
        myMove = .Paper
        nextMove()
    }
    
    @IBAction func scissorsPressed(_ sender: Any) {
        myMove = .Scissors
        nextMove()
    }

    func nextMove() {
        let resultsViewController = self.storyboard!.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsViewController
        resultsViewController.prevMove = myMove
        self.show(resultsViewController, sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

