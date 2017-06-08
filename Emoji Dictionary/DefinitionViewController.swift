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
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EmojiLabel.text = emoji.stringEmoji
        birthYearLable.text = "Origination Date: \(emoji.birthYear)"
        categoryLable.text = "Category: \(emoji.category)"
        definationLabel.text = emoji.defination

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
