//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by trevor on 5/6/17.
//  Copyright © 2017 trevor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArry()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😆"
        emoji1.introductionYear = 2012
        emoji1.category = "Smiley"
        emoji1.definition = "Squinting emiley"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.introductionYear = 1201
        emoji2.category = "Smiley"
        emoji2.definition = "Sunglasses Smiley"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🙃"
        emoji3.introductionYear = 13
        emoji3.category = "Smiley"
        emoji3.definition = "Upside down smiley"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤗"
        emoji4.introductionYear = 2014
        emoji4.category = "Smiley"
        emoji4.definition = "Hugging smiley"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐧"
        emoji5.introductionYear = 2010
        emoji5.category = "Animal"
        emoji5.definition = "Penguin"

        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐶"
        emoji6.introductionYear = 2015
        emoji6.category = "Aniaml"
        emoji6.definition = "Puppy emoji"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]

    }
    


}

