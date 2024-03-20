//
//  ViewController.swift
//  sample
//
//  Created by mymac on 06/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    var firstvalue=""
    let operater=""
    var act=""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func number(_ sender: UIButton) {
        var show = label.text!
        if sender.tag == 31{
            label.text = show + "1"
        } else if sender.tag == 32{
            label.text = show + "2"
        } else if sender.tag == 33{
            label.text = show + "3"
        }else if sender.tag == 34{
            label.text = show + "4"
        }else if sender.tag == 35{
            label.text = show + "5"
        }else if sender.tag == 36{
            label.text = show + "6"
        }else if sender.tag == 37{
            label.text = show + "7"
        }else if sender.tag == 38{
            label.text = show + "8"
        }else if sender.tag == 39{
            label.text = show + "9"
        }else if sender.tag == 40{
            label.text = show + "0"
        }else if sender.tag == 41{
            label.text = show + "00"
        }
        
    }
    
    @IBAction func percentage(_ sender: UIButton) {
        if sender.tag == 11 {
            firstvalue = label.text!
            label.text = ""
            act = "%"
        }
        else if sender.tag == 12 {
            firstvalue = label.text!
            label.text = ""
            act = "/"
        }
        else if sender.tag == 13 {
            firstvalue = label.text!
            label.text = ""
            act = "*"
        }
        else if sender.tag == 14 {
            firstvalue = label.text!
            label.text = ""
            act = "-"
        }
        else if sender.tag == 15 {
            firstvalue = label.text!
            label.text = ""
            act = "+"
        }
        else if sender.tag == 16 {
            firstvalue = label.text!
            label.text = ""
            act = "."
        }
        else if sender.tag == 52 {
            firstvalue = label.text!
            label.text = ""
            act = "AC"
        }
        else if sender.tag == 51 {
            firstvalue = label.text!
            label.text = ""
            act = "DEL"
        }
    }
    
    @IBAction func ans(_ sender: UIButton) {
        if act == "+"{
            let result = Int(firstvalue)! + Int(label.text!)!
            label.text! = String(result)
        }
        else if act == "-"{
            let result = Int(firstvalue)! - Int(label.text!)!
            label.text! = String(result)
        }
        else if act == "*"{
            let result = Int(firstvalue)! * Int(label.text!)!
            label.text! = String(result)
        }
        else if act == "/"{
            let result = Int(firstvalue)! / Int(label.text!)!
            label.text! = String(result)
        }
        
        
        func allclear(_ sender: UIButton) {
            label.text = ""
        }
    }
    
}

