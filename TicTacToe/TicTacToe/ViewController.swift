//
//  ViewController.swift
//  TicTacToe
//
//  Created by EpiMac on 26/02/2019.
//  Copyright © 2019 EpiMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    var turn = 1

    var grid = ["", "", "", "", "", "", "", "", ""]

    // Label pour indiquer quel joueur doit jouer
    @IBOutlet weak var turnLabel: UILabel!

    // Cette fonction est la boucle de jeu
    // La fonction est éxécutée quand on appuie sur un bouton
    // Sender correspond au bouton sur lequel on a appuyé
    @IBAction func play(_ sender : UIButton)
    {
        //--------
        //--TODO--
        //--------
    }

    // Fonction qui vérifie si quelqu'un a gagné
    // Retourne "" si personne a gagné, "x" si le joueur 1 a gagné, "o" si je joueur 2 a gagné
    func checkWin() -> String
    {
        let l = checkLine()
        if(l != "")
        {
            return l
        }
        let c = checkColumn()
        if(c != "")
        {
            return c
        }
        let d = checkDiagonal()
        if(d != "")
        {
            return d
        }
        return ""
    }

    // Fonction qui vérifie les colomnes de la grille
    // Retourne "" si personne a gagné, "x" si le joueur 1 a gagné, "o" si je joueur 2 a gagné
    func checkColumn() -> String
    {
        //--------
        //--TODO--
        //--------
        return ""
    }

    // Fonction qui vérifie les lignes de la grille
    // Retourne "" si personne a gagné, "x" si le joueur 1 a gagné, "o" si je joueur 2 a gagné
    func checkLine() -> String
    {
        //--------
        //--TODO--
        //--------
        return ""
    }

    // Fonction qui vérifie les diagonales de la grille
    // Retourne "" si personne a gagné, "x" si le joueur 1 a gagné, "o" si je joueur 2 a gagné
    func checkDiagonal() -> String
    {
        if(grid[0] != "" && grid[0] == grid[4] && grid[0] == grid[8])
        {
            return grid[0]
        }

        if(grid[6] != "" && grid[6] == grid[4] && grid[6] == grid[2])
        {
            return grid[6]
        }

        return ""
    }

    // Fonction qui vérifie si la grille de jeu est pleine
    // Return true si la grille est pleine, false sinon
    func isFull() -> Bool
    {
        //--------
        //--TODO--
        //--------
        return false
    }

    // Fonction qui réinitialise la grille de jeu
    func reset()
    {

        for i in 0...8
        {
            let button = view.viewWithTag(i + 1) as! UIButton
            button.setBackgroundImage(nil, for: UIControl.State())

            grid[i] = ""
        }
    }

    // Fonction qui affiche un pop-up avec le résultat de la partie
    // Ne retourne rien
    // Winner correspond au gagnant: "" pour égalité, "x" pour le joueur 1 et "o" pour le joueur 2
    func sendAlert(msg: String)
    {
        let alert = UIAlertController(title: msg, message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Let's continue!", style: .default, handler: { action in self.reset() }))
        self.present(alert, animated: true)
    }
}
