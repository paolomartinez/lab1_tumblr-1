//
//  PhotosDetailViewController.swift
//  lab1_tumblr
//
//  Created by Mike Lin on 2/7/18.
//  Copyright © 2018 Paolo Martinez. All rights reserved.
//

import UIKit

class PhotosDetailViewController: UIViewController {

//    var post: [[String: Any]]?
    var photo: [String: Any]?
    
    
    
    @IBOutlet weak var detailPhotoView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photo = photo {
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            detailPhotoView.af_setImage(withURL: url!)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
