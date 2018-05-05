//
//  ViewController.swift
//  MentionsDisplayer
//
//  Created by macmini on 05/05/18.
//  Copyright © 2018 self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtView: UITextView!
    
    var isProfileList : Bool! {
        didSet {
            if isProfileList {
                MyDropDown.shared.ConfigureCoustomMentionList(viewDropDown: txtView, successBlock: { (index, arrResult, strSearchKey) in
                    let strName = arrResult[index]
                    if  strSearchKey == "@" {
                        self.txtView.text.append("\(strName) ")
                    }else{
                        self.txtView.text = self.txtView.text.replacingOccurrences(of: strSearchKey, with: "")
                        self.txtView.text.append("@\(strName) ")
                    }
                }) {
                    
                }
            }else{
                MyDropDown.shared.ConfigureMentionList(viewDropDown: txtView, successBlock: { (index, arrResult, strSearchKey) in
                    let strName = arrResult[index]
                    if  strSearchKey == "@" {
                        self.txtView.text.append("\(strName) ")
                    }else{
                        self.txtView.text = self.txtView.text.replacingOccurrences(of: strSearchKey, with: "")
                        self.txtView.text.append("@\(strName) ")
                    }
                    
                }) {
                    
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtView.delegate = self
        isProfileList = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func sgmChagneValue(_ sender: Any) {
        self.isProfileList = !isProfileList
    }
    
    @IBAction func btnDoneClick(_ sender: Any) {
        
    }
   
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        MyDropDown.shared.SearchMentionsTextFieldShowChagne(text: text, strFullString: textView.text ?? "")
        return true
    }
}
