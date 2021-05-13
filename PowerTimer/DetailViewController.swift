//
//  DetailViewController.swift
//  PowerTimer
//
//  Created by Lee on 2021/05/13.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var contentView:UIView!
    @IBOutlet weak var lbRegDate:UILabel!
    @IBOutlet weak var lbTitle:UILabel!
    @IBOutlet weak var lbRemainTime:UILabel!
    
    var model:TimerInfo?
    var index:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let viewModel = self.model {
            self.lbTitle.text = viewModel.title
            self.lbRegDate.text = viewModel.regiDate
            self.lbRemainTime.text = viewModel.remainTime
            self.contentView.heroID = "view\(index)"
            self.contentView.backgroundColor = viewModel.bgColor
            
            self.lbTitle.heroID = "title\(index)"
            self.lbRegDate.heroID = "date\(index)"
            self.lbRemainTime.heroID = "time\(index)"

        }
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backPress(_ sender:Any) {
        self.navigationController?.popViewController(animated: true)
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
