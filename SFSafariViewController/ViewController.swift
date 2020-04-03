//
//  ViewController.swift
//  SFSafariViewController
//
//  Created by Mayur Mori on 17/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    // MARK: - IB ACTIONS -
    @IBAction func btnOpenWebPage_Clicked(_ sender: UIButton) {
        
        // check if website exists
        guard let url = URL(string: "https://apple.com") else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
        
        safariVC.delegate = self
    }
}

extension ViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}
