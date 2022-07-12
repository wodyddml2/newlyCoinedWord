//
//  ViewController.swift
//  newlyCoinedWord
//
//  Created by J on 2022/07/08.
//

import UIKit

enum hashTagDefault: String {
    case 만반잘부
    case 꾸안꾸
    case 볼매
    case 인싸
}

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet var hashTag: [UIButton]!
    
    @IBOutlet weak var textLabel: UILabel!
    
    let newWord: [String:[String]] = ["hi":["안녕","1","2","3","4"],"bye":["잘가","1","2","5","4"],"hello":["안녕ㅇ","1","2","6","4"],"good":["좋다","1","2","7","4"],"king":["왕","1","2","8","4"]]
    
//    let hashTagNomalName: [String] = ["만반잘부", "꾸안꾸", "볼매", "인싸"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        //        resultHash(hashTagNomalName)
        resultHash(hashTagDefault.꾸안꾸.rawValue, 0)
        resultHash(hashTagDefault.볼매.rawValue, 1)
        resultHash(hashTagDefault.만반잘부.rawValue, 2)
        resultHash(hashTagDefault.인싸.rawValue, 3)
    }
    
    func resultHash(_ a: String, _ b: Int) { // a: [String]
        for i in 0...hashTag.count - 1 {
            hashTag[i].layer.borderWidth = 2
            hashTag[i].layer.borderColor = UIColor.black.cgColor
            hashTag[i].layer.masksToBounds = true
            hashTag[i].layer.cornerRadius = 8
//            hashTag[i].setTitle(a[i], for: .normal)
            hashTag[i].setTitleColor(.black, for: .normal)
            hashTag[i].setTitleColor(.clear, for: .highlighted)
        }
        hashTag[b].setTitle(a, for: .normal)
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
    
    
    func showAlert() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
        let impormation = UIAlertAction(title: "정보", style: .destructive, handler: nil)
        let cancle = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(impormation)
        alert.addAction(copy)
        alert.addAction(cancle)
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func hashTagButton(_ sender: UIButton) {
        showAlert()
    }
    
}

