//
//  ViewController.swift
//  story teller
//
//  Created by MoHaMeD MoStAfA on 3/14/20.
//  Copyright © 2020 MoHaMeD MoStAfA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.currentTitle == storyBrain.getChoice1() {
            storyBrain.updatingTrackNumber(answer: 1)
            updateUI()
        }else{
            storyBrain.updatingTrackNumber(answer: 2)
            updateUI()
        }
        storyBrain.reset()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice1Button.titleLabel?.adjustsFontSizeToFitWidth = true
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        choice2Button.titleLabel?.adjustsFontSizeToFitWidth = true
    }


}

