//
//  ViewController.swift
//  PourApp
//
//  Created by Евгений Михневич on 05.06.2022.
//

import UIKit

class WelcomeScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindFromWineSelectionViewController(undindSegue: UIStoryboardSegue){
    }

    @IBAction func onStartNowTapped(_ sender: Any) {
        performSegue(withIdentifier: "WineSelectionViewControllerSegue", sender: self)
    }
}

