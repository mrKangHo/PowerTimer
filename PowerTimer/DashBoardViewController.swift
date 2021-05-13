//
//  DashBoardViewController.swift
//  PowerTimer
//
//  Created by DevLee on 2021/05/12.
//

import UIKit
import Hero
import BouncyLayout

class DashBoardViewController: UIViewController {
    var viewModel:DashBoardViewModel = DashBoardViewModel()
    @IBOutlet weak var timerListView:UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isHeroEnabled = true
        self.navigationController?.heroNavigationAnimationType = .selectBy(presenting: .fade, dismissing: .fade)
        
        self.timerListView.register(UINib(nibName: "TimerItemCell", bundle: nil), forCellWithReuseIdentifier: "itemCell")
        let layout = BouncyLayout(style: .prominent)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        self.timerListView.collectionViewLayout = layout
        self.timerListView.reloadData()
        // Do any additional setup after loading the view.
    }


}

extension DashBoardViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.row == 0 {
            return CGSize(width: self.view.bounds.width, height: 180)
        }
        
        return CGSize(width: self.view.bounds.width, height: 136)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel.dataSource().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! TimerItemCell
        let info = self.viewModel.dataSource()[indexPath.row]
        itemCell.heroID = "view\(indexPath.row)"
        itemCell.lbTitle.text = info.title
        itemCell.lbTitle.heroID = "title\(indexPath.row)"
    
        itemCell.lbRegDate.text = info.regiDate
        itemCell.lbRegDate.heroID = "date\(indexPath.row)"
        itemCell.lbRemainTime.text = info.remainTime
        itemCell.lbRemainTime.heroID = "time\(indexPath.row)"
        itemCell.backgroundColor = info.bgColor
        return itemCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let info = self.viewModel.dataSource()[indexPath.row]
        
        let detailVC = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detailVC.model = info
        detailVC.index = indexPath.row
        
        detailVC.isHeroEnabled = true
        
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
        
        
        
        
    }
    
    
    
}
