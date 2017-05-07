//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by trevor on 5/6/17.
//  Copyright © 2017 trevor. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "🐧" {
            definitionLabel.text = "A penguin, I like to think this is Tux :)"
        }
        if emoji == "🐶" {
            definitionLabel.text = "This is a pupper. A pupper is a smol Doggo"
        }
        if emoji == "😎" {
            definitionLabel.text = "Cool guy wearing sunglasses"
        }
        if emoji == "😆" {
            definitionLabel.text = "squinty eyes smiling"
        }
        if emoji == "🤗" {
            definitionLabel.text = "Happy face with hugging hands"
        }
        if emoji == "🙃" {
            definitionLabel.text = "Upside down smiley face"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
