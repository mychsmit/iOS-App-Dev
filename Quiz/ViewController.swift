//
//  ViewController.swift
//  Quiz
//
//  Created by Mychal Smith on 8/23/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        questionLabel.text = questions[currentQuestionIndex];
    }

    @IBOutlet var questionLabel: UILabel!;
    @IBOutlet var answerLabel: UILabel!;
    
    let questions: [String] = [
        "What is 7+7",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ];
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ];
    
    var currentQuestionIndex: Int = 0;
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1;
        
        if currentQuestionIndex == questions.count{
            
            currentQuestionIndex = 0;
        
        };
        
        let questions: String = questions[currentQuestionIndex];
        
        questionLabel.text = questions;
        
        answerLabel.text = "???";
        
    };
    
    @IBAction func showAnswer(_ sender: UIButton) {
       
        let answer: String = answers[currentQuestionIndex];
        
        answerLabel.text = answer;
        
    };


}

