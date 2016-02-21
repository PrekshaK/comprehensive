//
//  DetailViewController.swift
//  Comprehensive
//
//  Created by Preksha Koirala on 2/20/16.
//  Copyright © 2016 Preksha Koirala. All rights reserved.
//



import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var myTextView: UITextView!

    var viewController:ViewController?
    var masterView:ViewController?
    
    var senttext: String?
    
    
    //    var detailItem: AnyObject? {
    //        didSet {
    //            // Update the view.
    //            self.configureView()
    //        }
    //    }
    //
    

    
    override func viewDidLoad() {
        
        print (senttext)
        self.myTextView.text = senttext;
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, \
    }
    
    
  
  
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textViewDidChange(textView: UITextView) {
        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if var edit = senttext{
            
            print (currentIndex)
            
            words[currentIndex!] = Objects(text: myTextView.text)
            for i in words{
                print (i.text)
            }
            
            
        }
        
        else{
            
            if let addelement = myTextView.text{
                 words.append(Objects(text: myTextView.text));
                print (words)
            }
            
        }
        
    }
    
    
    
    
    
}

