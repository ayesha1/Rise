//
//  CommunityVC.swift
//  Rise
//
//  Created by Ayesha Khan on 8/11/19.
//  Copyright © 2019 Ayesha Khan. All rights reserved.
//

import Foundation

class CommunityVC: ViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabBarController?.tabBar.isHidden = false

    }
    override func viewDidLoad() {
        self.tabBarController?.tabBar.isHidden = false
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

}
