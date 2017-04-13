//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Harris Novljakovic on 2017-04-09.
//  Copyright © 2017 Harris Novljakovic. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    // de olika outletsen som är kopplade till där emojin ska visas och dens beskrivelse
   
    
    @IBOutlet weak var birthYearLable: UILabel!
    @IBOutlet weak var categoryLable: UILabel!
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var definationLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EmojiLabel.text = emoji
        /// här är de olika emoji med deras definition och jag har stavat fel på "Definition"
        if emoji == "😀" {
            definationLabel.text = "Glad Gubbe!"
            categoryLable.text = "Category: Smiley"
            birthYearLable.text = "BirthYear: 2009"
        }
        if emoji == "😇" {
            definationLabel.text = "Änglen!"
        }
        if emoji == "😋" {
            definationLabel.text = "Tror han är söt med sin lilla tunga!"
        }
        if emoji == "👾" {
            definationLabel.text = "Alien skepp!"
        }
        if emoji == "😡" {
            definationLabel.text = "Arg Gubbe!"
        }
        if emoji == "☠️" {
            definationLabel.text = "Död Gubbe!"
            categoryLable.text = "Category: Döskalle"
            birthYearLable.text = "BirthYear: 2008"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
