//
//  FullScreenPhotoViewController.swift
//  lab1_tumblr
//
//  Created by Mike Lin on 2/8/18.
//  Copyright © 2018 Paolo Martinez. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var zoomableImage: UIImageView!
    
    var photoURLString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 359, height: 300)
        if let photoURLString = photoURLString {
            let url = URL(string: photoURLString)
            zoomableImage.af_setImage(withURL: url!)
        }
    }
    
    //Dismiss the view
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return zoomableImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
