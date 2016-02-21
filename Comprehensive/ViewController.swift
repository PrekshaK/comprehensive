//
//  ViewController.swift
//  Comprehensive
//
//  Created by Preksha Koirala on 2/20/16.
//  Copyright © 2016 Preksha Koirala. All rights reserved.
//



import UIKit

var words = [Objects]()

var currentIndex: Int?

var seg = ""

var sendingtext = ""

let BLANK_NOTE:String = "(New Note)"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    
    var detailViewController:DetailViewController?
    
    @IBOutlet weak var editToogleButton: UIBarButtonItem!
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
//     
//        let newobject = Objects(text: "HELLO");
//        words.append(newobject)
        //        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
      
        
       // save()
        self.tableView.reloadData();
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    
    @IBAction func actionEdit(sender: UIBarButtonItem) {
        
        
        tableView.setEditing(!tableView.editing, animated:true)
        
        sender.title = tableView.editing ? "Stop Editing": "Edit"
        

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "cellseg",  let destination = segue.destinationViewController as? DetailViewController {

            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                currentIndex = indexPath.row
                seg = "cellseg"
                let senttext = words[currentIndex!].text;
                
                destination.senttext = senttext;
                
                print (detailViewController?.senttext)
                
               
                
            }
            
            
        }
        
        if segue.identifier == "addseg"{
         currentIndex = words.count
        }
        
    }
    
    
 
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("cellseg", sender: self)
    }
    
    
    
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if (tableView.editing){
            return .Delete
        }
        return .None
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete{
            words.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        }else if (editingStyle == .Insert){
            //Add insert code
        }
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "id")
        
        cell.textLabel?.text = words[indexPath.row].text;
        return cell
        
    }
    
    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    
    
    
    
    
    
    
}

