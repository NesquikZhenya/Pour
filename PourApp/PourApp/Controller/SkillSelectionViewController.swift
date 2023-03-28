//
//  SkillSelectionViewController.swift
//  PourApp
//
//  Created by Евгений Михневич on 06.06.2022.
//

import UIKit

class SkillSelectionViewController: UIViewController {

    var taster: Taster!
    var selectedWine: Taster.SelectedWine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(selectedWine.red)
        print(selectedWine.white)
        print(selectedWine.rose)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
