//
//  MainMenuViewController.swift
//  ArabAlphabetQuiz
//
//  Created by Scott Kvitberg on 24/08/16.
//  Copyright © 2016 Scott Kvitberg. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    var quizMode = 0
    @IBOutlet var quizModeButtons: [UIButton]!
    @IBAction func quizModeButtonHandler(sender: UIButton) {
        for button in quizModeButtons {
            if sender != button{
                //If the button was not tapped
                button.alpha = 0.5
            }else{
                button.alpha = 1.0
                quizMode = button.tag
            }
        }
        
    }
    @IBAction func playButtonHandler(sender: UIButton) {
        var vc: UIViewController?
        switch quizMode {
        case 0:
            //Alphabeth multiple choice quiz
            vc = storyboard?.instantiateViewControllerWithIdentifier("alphabethMultipleChoiceViewController") as! AlphabethMultipleChoiceViewController
            break
        case 1:
            //Number mulitple choice quiz
            vc = storyboard?.instantiateViewControllerWithIdentifier("numberMultipleChoiceViewController") as! NumberMultipleChoiceViewController
            break
        default:
            break
        }
        if vc != nil{
            navigationController?.pushViewController(vc!, animated: true)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (idx, button) in quizModeButtons.enumerate() {
            button.tag = idx
            if button.tag != 0{
                button.alpha = 0.5
            }
        }

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
