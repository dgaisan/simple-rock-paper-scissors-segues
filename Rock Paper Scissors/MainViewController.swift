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
        performSegue(withIdentifier: "mysegue", sender: self)
    }
    
    @IBAction func paperPressed(_ sender: Any) {
        myMove = .Paper
        performSegue(withIdentifier: "mysegue", sender: self)
    }
    
    @IBAction func scissorsPressed(_ sender: Any) {
        myMove = .Scissors
        performSegue(withIdentifier: "mysegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsViewController = segue.destination as! ResultsViewController
        resultsViewController.prevMove = myMove
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
