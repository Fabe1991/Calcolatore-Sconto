//
//  ViewController.swift
//  CalcolatoreSconto
//
//  Created by fabio margoni on 08/02/2019.
//  Copyright © 2019 fabio margoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RisultatoView: UIView!
    @IBOutlet weak var CalcolaButton: UIButton!
    var PrezzoDaScontare : Double?
    var PercentualeSconto : Double?
    @IBOutlet weak var RisultatoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.RisultatoView.isHidden = true
        self.CalcolaButton.isHidden = true
    }
    @IBAction func PrezzoDaScontareTextfield_EditingChanged(_ sender: UITextField) {
        let number = Double.init(sender.text!)
        if number == nil {
            self.RisultatoView.isHidden = true
            self.CalcolaButton.isHidden = true
            print("inserisci il prezzo")
        } else {
            self.PrezzoDaScontare = number
        }
        
    }
    
    @IBAction func ScontoPercentualeTextfield_EditingChanged(_ sender: UITextField) {
        let number1 = Double.init(sender.text!)
        if number1 == nil {
            self.RisultatoView.isHidden = true
            self.CalcolaButton.isHidden = true
            print("inserisci il prezzo")
        } else {
            self.CalcolaButton.isHidden = false
            self.PercentualeSconto = number1
        }
        
    }
    
    @IBAction func CalcoatoreButton_touchUpInside(_ sender: UIButton) {
        
        let PrezzoFinale = (PrezzoDaScontare! * PercentualeSconto!) / 100
        print(PrezzoFinale)
        self.RisultatoLabel.text = "\(PrezzoFinale)"
        self.RisultatoView.isHidden = false
        
    }
    
}

