//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Harris Novljakovic on 2017-04-09.
//  Copyright © 2017 Harris Novljakovic. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var definationLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EmojiLabel.text = emoji
        
        if emoji == "😀" {
            definationLabel.text = "Glad Gubbe!"
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
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
