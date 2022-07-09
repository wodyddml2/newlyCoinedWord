//
//  ViewController.swift
//  newlyCoinedWord
//
//  Created by J on 2022/07/08.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet var hashTag: [UIButton]!
    
    @IBOutlet weak var textLabel: UILabel!
    
    let newWord: [String:[String]] = ["hi":["안녕","1","2","3","4"],"bye":["잘가","1","2","5","4"],"hello":["안녕ㅇ","1","2","6","4"],"good":["좋다","1","2","7","4"],"king":["왕","1","2","8","4"]]
    
    let hashTagNomalName: [String] = ["만반잘부", "꾸안꾸", "볼매", "인싸"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        resultHash(hashTagNomalName)
    }
    
    func resultHash(_ a: [String]) {
        for i in 0...hashTag.count - 1 {
            hashTag[i].layer.borderWidth = 2
            hashTag[i].layer.borderColor = UIColor.black.cgColor
            hashTag[i].layer.masksToBounds = true
            hashTag[i].layer.cornerRadius = 8
            hashTag[i].setTitle(a[i], for: .normal)
            hashTag[i].setTitleColor(.black, for: .normal)
            hashTag[i].setTitleColor(.clear, for: .highlighted)
        }
    }
    
    func resultText() {
        for i in newWord {
            if searchBar.text == i.key {
                textLabel.text = i.value[0]
                for s in 1...i.value.count-1 {
                    hashTag[s-1].setTitle(i.value[s], for: .normal)
                }
            }
        }
        
        
    }

    @IBAction func searchClicked(_ sender: UIButton) {
        resultText()
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchBar.resignFirstResponder()
        resultText()
        return true
    }
    
    @IBAction func gestureKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

