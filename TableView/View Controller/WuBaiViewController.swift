//
//  WuBaiViewController.swift
//  TableView
//
//  Created by Alice on 2022/12/12.
//

import UIKit
import WebKit

class WuBaiViewController: UIViewController {
    
    var video2: WuBai!
    
    @IBOutlet weak var BWebView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = video2.songName2
        
        if let url = URL(string: "\(video2.videoURL)") {
            let request = URLRequest(url: url)
            BWebView.load(request)
            
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
