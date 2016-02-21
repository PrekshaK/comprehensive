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

   
  
    @IBOutlet weak var showalertbutton: UIButton!
   
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
    
    
    
    

 
    @IBAction func actionalert(sender: AnyObject) {
    
        
        
        let alertController = UIAlertController(title: "Simple Button Alert", message: "Message", preferredStyle: .Alert)
        
        alertController.addTextFieldWithConfigurationHandler(
            {
                (textField: UITextField!) in
                textField.placeholder = "Enter email address"
        })
        
        let OkButton = UIAlertAction(title: "Ok", style: .Default) {  (action) in
            
            if let textFields = alertController.textFields{
                let textFieldArray = textFields as [UITextField]
                let emailaddress = textFieldArray[0].text
                print(emailaddress)
                
            }
            
        }
        
        alertController.addAction(OkButton)
        
        let CancelButton = UIAlertAction(title: "Cancel", style: .Default){(action) in
            print(action)
        }
        alertController.addAction(CancelButton)
        
        
        
        
        self.presentViewController(alertController, animated: true, completion: nil)
        

    }
    
    
    
    
    
    
    
}

