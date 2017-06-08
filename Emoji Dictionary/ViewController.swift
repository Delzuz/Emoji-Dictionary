//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Harris Novljakovic on 2017-04-09.
//  Copyright © 2017 Harris Novljakovic. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dacooltv: UITableView!
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltv.dataSource = self
        dacooltv.delegate = self
        emojis = makeEmojiArry()
        
    }
    /// det som avgör hur många rader det ska finnas i tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    /// Detta är de som utgör vad som är i de olika raderna
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    /// Delen som skickar över dig till nästa skärm och visa emojin du valt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defHN = segue.destination as! DefinitionViewController
        
        defHN.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.defination = "A laughing Guy"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😇"
        emoji2.birthYear = 2008
        emoji2.category = "Smiley"
        emoji2.defination = "An Angel from the sky"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😋"
        emoji3.birthYear = 2009
        emoji3.category = "Smiley"
        emoji3.defination = "A smileing Guy"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😡"
        emoji4.birthYear = 2011
        emoji4.category = "Smiley"
        emoji4.defination = "A very Angry guy"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👾"
        emoji5.birthYear = 2015
        emoji5.category = "Unknown Creater"
        emoji5.defination = "An Unknown creater that looks like an Alien"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "☠️"
        emoji6.birthYear = 2017
        emoji6.category = "Death"
        emoji6.defination = "The Face of Death"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

