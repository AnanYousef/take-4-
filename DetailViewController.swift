//
//  DetailViewController.swift
//  MemeMe v2 take 4
//
//  Created by Anan Yousef on 9/9/20.
//  Copyright © 2020 Anan Yousef. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var memeToPresent: Meme!
    
    @IBOutlet weak var memeImageView: UIImageView!
        



    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        memeImageView.image = memeToPresent.memedImage
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}
