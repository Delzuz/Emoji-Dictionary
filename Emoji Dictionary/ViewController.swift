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
    
    
    var emojis = ["😀","😇","😋","😡","👾","☠️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltv.dataSource = self
        dacooltv.delegate = self
        
    }
    /// det som avgör hur många rader det ska finnas i tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    /// Detta är de som utgör vad som är i de olika raderna
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
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
        
        defHN.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

