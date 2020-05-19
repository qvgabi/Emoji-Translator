//
//  ViewController.swift
//  HelloWorld
//
//  Created by supergabi on 19/05/2020.
//  Copyright © 2020 qvgabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor=UIColor.systemGray2
    }
    
    
    
    @IBAction func sendMessage(sender: UIButton){
        let emojiDict: [String: String]=["🐼": "Panda",
                                         "😈": "Cheeky",
                                         "💩": "Poop",
                                         "👻": "Ghost",
                                         "👽": "Allien"]
        
        var meaning: String? = " "
        let selectedButton=sender
        if let wordToLookup=selectedButton.titleLabel?.text{
            meaning=emojiDict[wordToLookup]
            
        }
        
        let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController,animated: true,completion: nil)
    }
}

