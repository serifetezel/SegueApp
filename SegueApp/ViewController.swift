//
//  ViewController.swift
//  SegueApp
//
//  Created by MacbookPro on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle
        print("viewDidLoad function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
        mainText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }


    @IBAction func nextClicked(_ sender: Any) {
        userName = mainText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    // segue olmadan hemen önceki işlemler
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toSecondVC"){
            //as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
    @IBAction func clşckd(_ sender: Any) {
    }
    
    
    @IBAction func function(_ sender: Any) {
    }
    
}

