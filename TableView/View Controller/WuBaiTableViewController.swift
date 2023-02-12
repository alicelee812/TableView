//
//  WuBaiTableViewController.swift
//  TableView
//
//  Created by Alice on 2022/10/27.
//

import UIKit

class WuBaiTableViewController: UITableViewController {
    
    let wuConcert = [
        WuBai(albumPic2: "B1", songName2: "愛上別人是快樂的事", albumName2: "專輯：愛上別人是快樂的事", videoURL: URL(string: "https://www.youtube.com/watch?v=ySFvr_Xl6R4")!),
        WuBai(albumPic2: "B2", songName2: "浪人情歌", albumName2: "專輯：浪人情歌", videoURL: URL(string: "https://www.youtube.com/watch?v=OPkqtboFFYI")!),
        WuBai(albumPic2: "B3", songName2: "挪威的森林", albumName2: "專輯：愛情的盡頭", videoURL: URL(string: "https://www.youtube.com/watch?v=gPpZJlE0Ca8")!),
        WuBai(albumPic2: "B4", songName2: "樹枝孤鳥", albumName2: "專輯：樹枝孤鳥", videoURL: URL(string: "https://www.youtube.com/watch?v=ObSPLQ-1fJI")!),
        WuBai(albumPic2: "B5", songName2: "與妳到永久", albumName2: "專輯：白鴿", videoURL: URL(string: "https://www.youtube.com/watch?v=ZjCPy66w0Ng")!),
        WuBai(albumPic2: "B6", songName2: "翅膀", albumName2: "專輯：夢的河流", videoURL: URL(string: "https://www.youtube.com/watch?v=36_k2tjw9a0")!),
        WuBai(albumPic2: "B7", songName2: "淚橋", albumName2: "專輯：淚橋", videoURL: URL(string: "https://www.youtube.com/watch?v=x-pCAngjeOw")!),
        WuBai(albumPic2: "B8", songName2: "厲害", albumName2: "專輯：雙面人", videoURL: URL(string: "https://www.youtube.com/watch?v=DaQaXd8V8yE")!),
        WuBai(albumPic2: "B9", songName2: "不過是愛上你", albumName2: "專輯：純真年代", videoURL: URL(string: "https://www.youtube.com/watch?v=QQCBZ_6EhRE")!),
        WuBai(albumPic2: "B10", songName2: "時尚狗", albumName2: "專輯：太空彈", videoURL: URL(string: "https://www.youtube.com/watch?v=xjPMzhp6W9k")!),
        WuBai(albumPic2: "B11", songName2: "夢醒時分", albumName2: "專輯：單程車票", videoURL: URL(string: "https://www.youtube.com/watch?v=zC_jePO5sCA")!),
        WuBai(albumPic2: "B12", songName2: "無盡閃亮的哀愁", albumName2: "專輯：無盡閃亮的哀愁", videoURL: URL(string: "https://www.youtube.com/watch?v=pSRq81PE0-4")!),
        WuBai(albumPic2: "B13", songName2: "釘子花", albumName2: "專輯：釘子花", videoURL: URL(string: "https://zh.m.wikipedia.org/zh-tw/%E9%87%98%E5%AD%90%E8%8A%B1")!),
        WuBai(albumPic2: "B14", songName2: "我想飛", albumName2: "專輯：讓水倒流", videoURL: URL(string: "https://www.youtube.com/watch?v=ch2TsbZNX2s")!),]

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
        return wuConcert.count
    }

    //回傳哪一個cell，可從參數 indexPath 得到 section & row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BaiTableViewCell", for: indexPath) as! BaiTableViewCell
        print(cell)
        let wuConcert = wuConcert[indexPath.row]
        cell.baiAlbumPic.image = UIImage(named: wuConcert.albumPic2)
        cell.songLabel?.text = wuConcert.songName2
        cell.albumLabel?.text = wuConcert.albumName2
        
        return cell
    }
    

    //點選儲存格後，將該儲存格的資料傳至下一頁
    @IBSegueAction func playMV2(_ coder: NSCoder) -> WuBaiViewController? {
        if let section = tableView.indexPathForSelectedRow?.section,
           let row = tableView.indexPathForSelectedRow?.row {
            let controller = WuBaiViewController(coder: coder)
            controller?.video2 = wuConcert[row]
            return controller
        }
        return nil
    }
    

}
