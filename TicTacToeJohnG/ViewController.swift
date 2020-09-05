//
//  ViewController.swift
//  TicTacToeJohnG
//
//  Created by John Grasser on 9/4/20.
//  Copyright © 2020 John Grasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var resetButton: UIButton!
    @IBOutlet weak var winText: UITextView!
    
    
    
    
    var playerTurn = 0
    var winningState = 0
    var ticTacToeBoard: [[Int]] = [[0,0,0],[0,0,0],[0,0,0]]
    var spotCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPress1(_ sender: UIButton) {
        
        if playerTurn == 0
        {
            button1.setTitle("X", for: UIControl.State.normal)
            ticTacToeBoard[0][0] = 1
            
            playerOneWin()
            winCheck()
            playerTurn = 1
            
            
            
        }
        else{
            
            button1.setTitle("O", for: UIControl.State.normal)
            ticTacToeBoard[0][0] = 2
            playerTwoWin()
            winCheck()
            playerTurn = 0
            
            
        }
        
        button1.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func buttonPress2(_ sender: UIButton) {
        if playerTurn == 0
        {
            button2.setTitle("X", for:UIControl.State.normal)
            ticTacToeBoard[0][1] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
            
            
        }
        else{
            button2.setTitle("O", for:UIControl.State.normal)
            ticTacToeBoard[0][1] = 2
            playerTwoWin()
            winCheck()
            playerTurn = 0
            
        }
        
        button2.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func buttonPress3(_ sender: UIButton) {
        if playerTurn == 0
        {
            button3.setTitle("X", for:UIControl.State.normal)
            ticTacToeBoard[0][2] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
        }
        else{
            button3.setTitle("O", for:UIControl.State.normal)
            ticTacToeBoard[0][2] = 2
            playerTwoWin()
            winCheck()
            playerTurn = 0
            
        }
        
        button3.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func buttonPress4(_ sender: UIButton) {
        if playerTurn == 0
        {
            button4.setTitle("X", for:UIControl.State.normal)
            ticTacToeBoard[1][0] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
            
        }
        else{
            button4.setTitle("O", for:UIControl.State.normal)
            ticTacToeBoard[1][0] = 2
            playerTwoWin()
            winCheck()
            playerTurn = 0
            
        }
        button4.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    
    
    @IBAction func buttonPress5(_ sender: UIButton) {
        
                if playerTurn == 0
        {
            button5.setTitle("X", for:UIControl.State.normal)
            ticTacToeBoard[1][1] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
           
            
        }
        else{
            button5.setTitle("O", for:UIControl.State.normal)
            
            ticTacToeBoard[1][1] = 2
            
            playerTwoWin()
            winCheck()
            playerTurn = 0
                
            
            
        }
        button5.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
        
    }
    
    
    
    

    
    @IBAction func buttonPress6(_ sender: UIButton) {
        
         if playerTurn == 0
        {
           button6.setTitle("X", for:UIControl.State.normal)
            
            ticTacToeBoard[1][2] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
            
            
        }
        else{
            button6.setTitle("O", for:UIControl.State.normal)
            
            ticTacToeBoard[1][2] = 2
            playerTwoWin()
            
            winCheck()
            playerTurn = 0
            
            
        }
        
        button6.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func buttonPress7(_ sender: UIButton) {
        
        if playerTurn == 0
        {
              button7.setTitle("X", for:UIControl.State.normal)

            ticTacToeBoard[2][0] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
            
        }
        else{
              button7.setTitle("O", for:UIControl.State.normal)
            
            ticTacToeBoard[2][0] = 2
            playerTwoWin()
            winCheck()
            playerTurn = 0
            
        }
        button7.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func buttonPress8(_ sender: UIButton) {
        if playerTurn == 0
        {
            button8.setTitle("X", for:UIControl.State.normal)
            
            ticTacToeBoard[2][1] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
            
        }
        else{
            button8.setTitle("O", for:UIControl.State.normal)
            
            ticTacToeBoard[2][1] = 2
            playerTwoWin()
            winCheck()
            playerTurn = 0
            
        }
        button8.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func buttonPress9(_ sender: UIButton) {
        if playerTurn == 0
        {
             button9.setTitle("X", for:UIControl.State.normal)
            
            ticTacToeBoard[2][2] = 1
            playerOneWin()
            winCheck()
            playerTurn = 1
            
        }
        else{
              button9.setTitle("O", for:UIControl.State.normal)
            ticTacToeBoard[2][2] = 2
            playerTwoWin()
            winCheck()
  
            playerTurn = 0
            
        }
        
        button9.isEnabled = false
        spotCount = spotCount + 1
        drawGame()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        button1.setTitle("", for:UIControl.State.normal)
        button1.isEnabled = true
        button2.setTitle("", for:UIControl.State.normal)
        button2.isEnabled = true
        button3.setTitle("", for:UIControl.State.normal)
        button3.isEnabled = true
        button4.setTitle("", for:UIControl.State.normal)
        button4.isEnabled = true
        button5.setTitle("", for:UIControl.State.normal)
        button5.isEnabled = true
        button6.setTitle("", for:UIControl.State.normal)
        button6.isEnabled = true
        button7.setTitle("", for:UIControl.State.normal)
        button7.isEnabled = true
        button8.setTitle("", for:UIControl.State.normal)
        button8.isEnabled = true
        button9.setTitle("", for:UIControl.State.normal)
        button9.isEnabled = true
        playerTurn = 0
        winningState = 0
        spotCount = 0
        winText.text = ""
        ticTacToeBoard = [[0,0,0],[0,0,0],[0,0,0]]
    }
    
    func playerOneWin()
    {
        if ticTacToeBoard[0][0] == 1 && ticTacToeBoard[0][1] == 1 && ticTacToeBoard[0][2] == 1
        {
            
            winningState = 1
        }
        else if ticTacToeBoard[0][0] == 1 && ticTacToeBoard[1][0] == 1 && ticTacToeBoard[2][0] == 1
        {
            
            winningState = 1
        }
        
        else if ticTacToeBoard[0][0] == 1 && ticTacToeBoard[1][1] == 1 && ticTacToeBoard[2][2] == 1
        {
            winningState = 1
        }
        
        else if ticTacToeBoard[0][1] == 1 && ticTacToeBoard[1][1] == 1 && ticTacToeBoard[2][1] == 1
        {
            
            winningState = 1
        }
        else if ticTacToeBoard[0][2] == 1 && ticTacToeBoard[1][1] == 1 && ticTacToeBoard[2][0] == 1
        {
            
            winningState = 1
        }
        else if ticTacToeBoard[0][2] == 1 && ticTacToeBoard[1][2] == 1 && ticTacToeBoard[2][2] == 1
        {
            
            winningState = 1
        }
            
        else if ticTacToeBoard[1][0] == 1 && ticTacToeBoard[1][1] == 1 && ticTacToeBoard[1][2] == 1
        {
            winningState = 1
            
        }
        
        else if ticTacToeBoard[2][0] == 1 && ticTacToeBoard[2][1] == 1 && ticTacToeBoard[2][2] == 1{
            
            winningState = 1
        }
 
    }
    
    func playerTwoWin()
    {
        if ticTacToeBoard[0][0] == 2 && ticTacToeBoard[0][1] == 2 && ticTacToeBoard[0][2] == 2
        {
            
            winningState = 2
        }
        else if ticTacToeBoard[0][0] == 2 && ticTacToeBoard[1][0] == 2 && ticTacToeBoard[2][0] == 2
        {
            
            winningState = 2
        }
        
        else if ticTacToeBoard[0][0] == 2 && ticTacToeBoard[1][1] == 2 && ticTacToeBoard[2][2] == 2
        {
            winningState = 2
        }
        
        else if ticTacToeBoard[0][1] == 2 && ticTacToeBoard[1][1] == 2 && ticTacToeBoard[2][1] == 2
        {
            
            winningState = 2
        }
        else if ticTacToeBoard[0][2] == 2 && ticTacToeBoard[1][1] == 2 && ticTacToeBoard[2][0] == 2
        {
            
            winningState = 2
        }
        else if ticTacToeBoard[0][2] == 2 && ticTacToeBoard[1][2] == 2 && ticTacToeBoard[2][2] == 2
        {
            
            winningState = 2
        }
            
        else if ticTacToeBoard[1][0] == 2 && ticTacToeBoard[1][1] == 2 && ticTacToeBoard[1][2] == 2
        {
            winningState = 2
            
        }
        
        else if ticTacToeBoard[2][0] == 2 && ticTacToeBoard[2][1] == 2 && ticTacToeBoard[2][2] == 2{
            
            winningState = 2
        }
    }
    
    func winCheck()
    {
            if winningState == 1
            {
                winText.text = "Player One Wins!"
                button1.isEnabled = false
                button2.isEnabled = false
                button3.isEnabled = false
                button4.isEnabled = false
                button5.isEnabled = false
                button6.isEnabled = false
                button7.isEnabled = false
                button8.isEnabled = false
                button9.isEnabled = false
            }
            else if winningState == 2
            {
                winText.text = "Player Two Wins!"
                button1.isEnabled = false
                button2.isEnabled = false
                button3.isEnabled = false
                button4.isEnabled = false
                button5.isEnabled = false
                button6.isEnabled = false
                button7.isEnabled = false
                button8.isEnabled = false
                button9.isEnabled = false
                
            }
    }
    
    func drawGame()
    {
        if spotCount == 9
        {
            
            winText.text = "Draw Game!"
        }
        
    }
}

