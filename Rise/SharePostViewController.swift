//
//  SharePostViewController.swift
//  Rise
//
//  Created by Ayesha Khan on 8/10/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import Foundation
import UIKit

class SharePostViewController: ViewController {
    @IBOutlet weak var cameraIcon: UIImageView!
    @IBOutlet weak var videoIcon: UIImageView!
    @IBOutlet weak var attachIcon: UIImageView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewDidLoad() {
        self.tabBarController?.tabBar.isHidden = true
        self.hideKeyboardWhenTappedAround()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

    }

    @objc func keyboardWillShow(sender: NSNotification) {
        if let keyboardSize = (sender.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {

            self.cameraIcon.frame.origin.y -= 250
            self.videoIcon.frame.origin.y -= 250
            self.attachIcon.frame.origin.y -= 250
        }
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        if let keyboardSize = (sender.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            
            self.cameraIcon.frame.origin.y += 250
            self.videoIcon.frame.origin.y += 250
            self.attachIcon.frame.origin.y += 250
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
