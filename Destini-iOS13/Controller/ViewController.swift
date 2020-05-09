//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    let story0 = "You see a fork in the road."
    let opt1 = "Take a left"
    let opt2 = "Take a right"
    var storyBrain = StoryBrain()
    let num = 0
    
    @IBAction func buttonClick(_ sender: UIButton) {
        let currSel = sender.currentTitle!
        let dest = storyBrain.setDestination(currSel)
        choice1.setTitle(storyBrain.getNextChoice1(dest), for: .normal)
        choice1.titleLabel?.numberOfLines = 0
        choice1.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        choice2.setTitle(storyBrain.getNextChoice2(dest), for: .normal)
        choice2.titleLabel?.numberOfLines = 0
        choice2.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        storyLabel.text = storyBrain.getNextStory(dest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = storyBrain.getNextStory(0)
        choice1.setTitle(storyBrain.getNextChoice1(0), for: .normal)
        choice2.setTitle(storyBrain.getNextChoice2(0), for: .normal)
    }


}

