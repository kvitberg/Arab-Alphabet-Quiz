//
//  ViewController.swift
//  ArabAlphabetQuiz
//
//  Created by Scott Kvitberg on 22/08/16.
//  Copyright © 2016 Scott Kvitberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //TODO: Add Score and Highscore

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadQuizData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        let score = NSUserDefaults.standardUserDefaults().integerForKey("score")
        let highscore = NSUserDefaults.standardUserDefaults().integerForKey("highscore")
        
        scoreLabel.text = "Score: \(score)"
        highscoreLabel.text = "Highscore: \(highscore)"
        
        
    }
    func loadQuizData(){

        //Alphabeth Data
        let pathArabicAbjad = NSBundle.mainBundle().pathForResource("ArabicAbjad", ofType: "plist")
        let dictArabicAbjad = NSDictionary(contentsOfFile: pathArabicAbjad!)
        arabAlphabethArray = dictArabicAbjad!["Questions"]!.mutableCopy() as? Array
        
        //Number Data
        let pathArabicNumbers = NSBundle.mainBundle().pathForResource("ArabicNumbers", ofType: "plist")
        let dictArabicNumbers = NSDictionary(contentsOfFile: pathArabicNumbers!)
        arabNumbersArray = dictArabicNumbers!["Questions"]!.mutableCopy() as? Array
       
        print(arabAlphabethArray)
        
    
    }



}

