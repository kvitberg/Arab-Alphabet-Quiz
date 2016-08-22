//
//  ViewController.swift
//  ArabAlphabetQuiz
//
//  Created by Scott Kvitberg on 22/08/16.
//  Copyright © 2016 Scott Kvitberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadQuizData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        /*
         Todo:
         -Add path and files for Kanji
         -Add path and files for Katakana
         */
        
        
        print(arabAlphabethArray)
        
    
    }



}

