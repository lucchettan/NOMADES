//
//  FirstViewController.swift
//  NomadesKiko
//
//  Created by Nicolas Lucchetta on 11/05/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
}

