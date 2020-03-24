//
//  TweetViewController.swift
//  Twitter
//
//  Created by user167669 on 3/23/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var TweetTextView: Tweet!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func tweet(_ sender: Any) {
        if (!TweetTextView.text.isEmpty){
            TwiiterAPICaller.client?.postTweet(TweetString: TweetTextView.text, success: {
                dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Error posting tweet",\(error)"),
                dismiss(animated: true, completion: nil)
            })
        }else {
            dismiss(animated: true, completion: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
