//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by trevor on 5/6/17.
//  Copyright © 2017 trevor. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var introLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        introLabel.text = "Introduction: \(emoji.introductionYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
