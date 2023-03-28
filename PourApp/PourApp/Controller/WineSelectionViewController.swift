//
//  WineSelectionViewController.swift
//  PourApp
//
//  Created by Евгений Михневич on 06.06.2022.
//

import UIKit

class WineSelectionViewController: UIViewController {
    
    var taster: Taster!
    var selectedWine: Taster.SelectedWine!

    @IBOutlet weak var redWineButton: BorderedButton!
    @IBOutlet weak var whiteWineButton: BorderedButton!
    @IBOutlet weak var roseWineButton: BorderedButton!
    @IBOutlet weak var continueButton: BorderedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taster = Taster()
        selectedWine = Taster.SelectedWine()
        
    }
    
    @IBAction func unwindFromSkillSelectionViewController (unwindSegue: UIStoryboardSegue){
    }
    
    @IBAction func onContinueTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillSelectionViewControllerSegue", sender: self)
    }
    
    func selectWine(wineType: String){
        switch wineType {
        case "Red": selectedWine.red.toggle()
        case "White": selectedWine.white.toggle()
        case "Rose": selectedWine.rose.toggle()
        default: break
        }
        
        if selectedWine.red || selectedWine.white || selectedWine.rose {
            continueButton.isEnabled = true
        } else {
            continueButton.isEnabled = false
        }
        
        if selectedWine.red {
            redWineButton.tintColor = UIColor.red
        } else {
            redWineButton.tintColor = UIColor.white
        }
        if selectedWine.white {
            whiteWineButton.tintColor = UIColor.yellow
        } else {
            whiteWineButton.tintColor = UIColor.white
        }
        if selectedWine.rose {
            roseWineButton.tintColor = UIColor.magenta
        } else {
            roseWineButton.tintColor = UIColor.white
        }
    }
    
    @IBAction func onRedTapped(_ sender: Any) {
        selectWine(wineType: "Red")
    }
    
    @IBAction func onWhiteTapped(_ sender: Any) {
        selectWine(wineType: "White")
    }
    
    @IBAction func onRoseTapped(_ sender: Any) {
        selectWine(wineType: "Rose")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillSelectionViewController = segue.destination as? SkillSelectionViewController{
            skillSelectionViewController.taster = taster
            skillSelectionViewController.selectedWine = selectedWine
        }
    }
    
}
