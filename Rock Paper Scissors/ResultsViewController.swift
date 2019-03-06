//
//  ResultsViewController.swift
//  Rock Paper Scissors
//
// Result Screen: Making a random move, and then displaying results compared to prevoius move

import Foundation
import UIKit

class ResultsViewController: UIViewController {
    public var prevMove: Moves!
    
    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var announcementLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomMove = Moves.random()
        
        displayGameResults(prevMove, randomMove)
        announceDecision(Match.decide(prevMove, randomMove))
    }
    
    private func displayGameResults(_ moveOne: Moves, _ moveTwo: Moves) {
        resultsLabel.text = "\(moveOne.toString()) vs \(moveTwo.toString())"
    }
    
    private func announceDecision(_ match: Match) {
        var textColor = UIColor.white
        switch match {
        case .Win:
            textColor = .green
        case .Loss:
            textColor = .red
        case .Tie:
            textColor = .white
        }
        announcementLabel.textColor = textColor
        announcementLabel.text = "It's a \(match.toString())"
    }
    
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
