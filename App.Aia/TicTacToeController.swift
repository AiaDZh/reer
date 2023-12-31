//
//  TicTacToeController.swift
//  App.Aia
//
//  Created by Ainagul Doskazhanova on 28.10.2023.
//

import Foundation

class TicTac {
    var counter = 0
    var XOs:[XO] = []
    var PlayWithAI = false
    var personPlayX =  false
    init () {
        for _ in 0...8 {
            let XO = XO()
            self.XOs.append(XO)
        }
    }
    func choiseXO(index:Int) {
        counter += 1
        if counter%2==0 {
            XOs[index].writeXO = "⭕️"
        }
        else {
            XOs[index].writeXO = "❌"
        }
        XOs[index].isWrite = true
        if PlayWithAI && counter < 9 {
            var randomChoice = Int.random(in: 0...8)
            while XOs[randomChoice].isWrite {
                randomChoice = Int.random(in: 0...8)
            }
            counter += 1
            if counter % 2 == 0 {
                XOs[randomChoice].writeXO = "⭕️"
            } else {
                XOs[randomChoice].writeXO = "❌"
            }
           
            XOs[randomChoice].isWrite = true
        }
    }
    func restart() {
        counter = 0
        for i in XOs.indices {
            XOs[i].isWrite = false
            XOs[i].writeXO = nil
        }
        if personPlayX {
            
            if PlayWithAI {
                let randomChoice = Int.random(in: 0...8)
                counter += 1
                XOs[randomChoice].writeXO = "❌"
                XOs[randomChoice].isWrite = true
            }
        }
        personPlayX.toggle()
    }
    func win() -> String? {
        let winCombination =
        [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
        for i in winCombination {
            if XOs[i[0]].writeXO == XOs[i[1]].writeXO &&
                XOs[i[1]].writeXO == XOs[i[2]].writeXO
                && XOs[i[0]].isWrite {
                return XOs[i[0]].writeXO
            }
        }
        if counter == 9 {
            return "Draw"
        }
        return nil
    }
}
