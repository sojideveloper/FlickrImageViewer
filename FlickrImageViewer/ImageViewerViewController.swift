//
//  ImageViewerViewController.swift
//  FlickrImageViewer
//
//  Created by iwritecode on 4/17/17.
//  Copyright © 2017 iwritecode. All rights reserved.
//

import UIKit


// MARK: - ImageViewerViewController

class ImageViewerViewController: UIViewController {
    
    @IBOutlet weak var recentPhotosButton: UIButton!
    @IBOutlet weak var searchPhotosButton: UIButton!
    @IBOutlet weak var showImageButton: UIButton!
    @IBOutlet weak var keywordField: UITextField!
    
    var selectedMethod: FlickrMethod?
    
    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    // MARK: Layout
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        updateLayout()
        
    }
    
    // Custom UI function(s)
    
    func updateLayout() {
        showImageButton.layer.cornerRadius = showImageButton.bounds.height / 2.0
    }
    
    
    // MARK: IBActions
    
    @IBAction func methodButtonPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            selectedMethod = .GetRecentPhotos
        case 1:
            selectedMethod = .GetPhotos
        default:
            break
        }
        
    }
    
    @IBAction func showImageButtonPressed(_ sender: UIButton) {
        print("Show imaeg button pressed")
        
        
    }

}
