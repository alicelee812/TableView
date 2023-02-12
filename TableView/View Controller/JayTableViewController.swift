//
//  JayTableViewController.swift
//  TableView
//
//  Created by Alice on 2022/10/27.
//

import UIKit

class JayTableViewController: UITableViewController {
    
    let jayConcert = [
        Jay(albumPic: "J1", songName: "可愛女人", albumName: "專輯：Jay", videoURL: URL(string: "https://www.youtube.com/watch?v=87VUC4J_0Ps")!),
        Jay(albumPic: "J2", songName: "愛在西元前", albumName: "專輯：范特西", videoURL: URL(string: "https://www.youtube.com/watch?v=5XK2C9w6oVk")!),
        Jay(albumPic: "J3", songName: "半島鐵盒", albumName: "專輯：八度空間", videoURL: URL(string: "https://www.youtube.com/watch?v=duZDsG3tvoA")!),
        Jay(albumPic: "J4", songName: "晴天", albumName: "專輯：葉惠美", videoURL: URL(string: "https://www.youtube.com/watch?v=DYptgVvkVLQ")!),
        Jay(albumPic: "J5", songName: "七里香", albumName: "專輯：七里香", videoURL: URL(string: "https://www.youtube.com/watch?v=Bbp9ZaJD_eA")!),
        Jay(albumPic: "J6", songName: "夜曲", albumName: "專輯：11月的蕭邦", videoURL: URL(string: "https://www.youtube.com/watch?v=6Q0Pd53mojY")!),
        Jay(albumPic: "J7", songName: "聽媽媽的話", albumName: "專輯：依然范特西", videoURL: URL(string: "https://www.youtube.com/watch?v=_B8RaLCNUZw")!),
        Jay(albumPic: "J8", songName: "陽光宅男", albumName: "專輯：我很忙", videoURL: URL(string: "https://www.youtube.com/watch?v=qQ7g1tfEGFc")!),
        Jay(albumPic: "J9", songName: "稻香", albumName: "專輯：魔杰座", videoURL: URL(string: "https://www.youtube.com/watch?v=sHD_z90ZKV0")!),
        Jay(albumPic: "J10", songName: "跨時代", albumName: "專輯：跨時代", videoURL: URL(string: "https://www.youtube.com/watch?v=-WkecBaA4z8")!),
        Jay(albumPic: "J11", songName: "公主病", albumName: "專輯：驚嘆號", videoURL: URL(string: "https://www.youtube.com/watch?v=S-p4gXbIifo")!),
        Jay(albumPic: "J12", songName: "大笨鐘", albumName: "專輯：12新作", videoURL: URL(string: "https://www.youtube.com/watch?v=-u4sPnpaFEA")!),
        Jay(albumPic: "J13", songName: "聽爸爸的話", albumName: "專輯：哎呦，不錯哦", videoURL: URL(string: "https://www.youtube.com/watch?v=eS2T9IiOYbc")!),
        Jay(albumPic: "J14", songName: "告白氣球", albumName: "專輯：周杰倫的床邊故事", videoURL: URL(string: "https://www.youtube.com/watch?v=bu7nU9Mhpyo")!),
        Jay(albumPic: "J15", songName: "等你下課", albumName: "專輯：等你下課", videoURL: URL(string: "https://www.youtube.com/watch?v=kfXdP7nZIiE")!),
        Jay(albumPic: "J16", songName: "粉色海洋", albumName: "專輯：最偉大的作品", videoURL: URL(string: "https://www.youtube.com/watch?v=F_dGEjzRG_Y")!),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        //固定row的高度
        tableView.rowHeight = 120
        //分隔線
        tableView.separatorStyle = .singleLine
    }

    // MARK: - Table view data source

    //table 顯示時，呼叫 dataSource 的 function 取得 cell 的個數和顯示的 cell
    //表格有幾段
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //每一段表格有幾列
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jayConcert.count
    }

    //回傳哪一個cell，可從參數 indexPath 得到 section & row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

      
        let cell = tableView.dequeueReusableCell(withIdentifier: "JayTableViewCell", for: indexPath) as! JayTableViewCell
        print(cell)
        let jayConcert = jayConcert[indexPath.row]
        cell.jayAlbumPic?.image = UIImage(named: jayConcert.albumPic)
        cell.songLabel?.text = jayConcert.songName
        cell.albumLabel?.text = jayConcert.albumName

        return cell
    }
    

    
    //點選儲存格後，將該儲存格的資料傳至下一頁
   
    @IBSegueAction func playMV(_ coder: NSCoder) -> JayMVViewController? {
        if let section = tableView.indexPathForSelectedRow?.section,
            let row = tableView.indexPathForSelectedRow?.row{
            let controller = JayMVViewController(coder: coder)
            controller?.video = jayConcert[row]
            return controller
        }
        return nil
    }
    
}
