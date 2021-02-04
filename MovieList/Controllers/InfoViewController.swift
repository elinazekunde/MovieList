//
//  InfoViewController.swift
//  MovieList
//
//  Created by Elīna Zekunde on 03/02/2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0: InfoLabel.text = "This application shows list of movies that were released in year 2020. In an upcoming version more movies will be added."
        case 1: InfoLabel.text = "1.0.0"
        default: break
        }
    }
    
    @IBAction func doneButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
