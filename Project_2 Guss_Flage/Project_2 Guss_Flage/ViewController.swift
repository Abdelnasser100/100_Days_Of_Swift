//
//  ViewController.swift
//  Project_2 Guss_Flage
//
//  Created by Abdelnasser on 07/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var corectAnswer = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        askQuitions()
    }
    
    func askQuitions(action:UIAlertAction! = nil){
        
        countries.shuffle()
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        corectAnswer = Int.random(in: 0...2)
        title = countries[corectAnswer].uppercased()
    }
    


    @IBAction func ButtonTaped(_ sender: UIButton) {
        
        var title : String
        
        if sender.tag == corectAnswer{
            title = "Correct"
            score += 1
        }else{
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "You Score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuitions))
        present(ac, animated: true)
        
    }
}

