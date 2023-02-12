//
//  JayMVViewController.swift
//  TableView
//
//  Created by Alice on 2022/12/9.
//

import UIKit
import WebKit

class JayMVViewController: UIViewController {
    
    var video: Jay!

    @IBOutlet weak var JWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigation title會顯示歌曲名稱
        navigationItem.title = video.songName
        
        if let url = URL(string: "\(video.videoURL)"){
            let request = URLRequest(url: url)
            JWebView.load(request)
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
