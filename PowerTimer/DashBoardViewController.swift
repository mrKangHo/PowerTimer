//
//  DashBoardViewController.swift
//  PowerTimer
//
//  Created by DevLee on 2021/05/12.
//

import UIKit
import BouncyLayout

class DashBoardViewController: UIViewController {
    var viewModel:DashBoardViewModel = DashBoardViewModel()
    @IBOutlet weak var timerListView:UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        itemCell.lbTitle.text = info.title
        itemCell.lbRegDate.text = info.regiDate
        itemCell.lbRemainTime.text = info.remainTime
        itemCell.backgroundColor = info.bgColor
        
        
        return itemCell
    }
    
    
}
