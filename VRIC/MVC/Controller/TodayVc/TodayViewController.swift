//
//  TodayViewController.swift
//  VRIC
//
//  Created by zeroit01 on 14/12/21.
//

import UIKit
import MBCircularProgressBar

class TodayViewController: UIViewController {
    
    @IBOutlet var BgView: UIView!
    @IBOutlet weak var BtnNotification: UIButton!
    @IBOutlet weak var BtnSearch: UIButton!
    @IBOutlet weak var BtnPrayerTime: UIButton!
    @IBOutlet weak var BtnArQibla: UIButton!
    @IBOutlet weak var BtnPrayerRequest: UIButton!
    @IBOutlet weak var BtnQutranRadio: UIButton!
    @IBOutlet weak var BtnMore: UIButton!
    @IBOutlet weak var BtnTrendingVideoMore: UIButton!
    @IBOutlet weak var BtnLiveBroadcastMore: UIButton!
    @IBOutlet weak var TimeCollectionVIew: UICollectionView!
    @IBOutlet weak var EventsCollectionVIew: UICollectionView!
    @IBOutlet weak var TrendingCollectionVIew: UICollectionView!
    @IBOutlet weak var TodaySearchbar: UISearchBar!
    @IBOutlet weak var LiveCollectionVIew: UICollectionView!
    @IBOutlet weak var PodcastCollectionVIew: UICollectionView!
    @IBOutlet weak var RamadanCollectionVIew: UICollectionView!
    @IBOutlet weak var LikeCollectionVIew: UICollectionView!
    @IBOutlet weak var BtnPodcastMore: UIButton!
    @IBOutlet weak var BtnDonateNow: UIButton!
    @IBOutlet weak var BtnJoinNow: UIButton!
    @IBOutlet weak var BtnSignup: UIButton!
    @IBOutlet weak var BtnLikeMore: UIButton!
    @IBOutlet weak var TimePageVIew: UIPageControl!
    @IBOutlet weak var UpcomingPageVIew: UIPageControl!
    @IBOutlet weak var RamadanPageView: UIPageControl!
    @IBOutlet weak var ImgJoinNow: UIImageView!
    @IBOutlet weak var ImgNewsLetter: UIImageView!
   
    var endTime: Date?    
    var timer = Timer()
    var timeLeft: TimeInterval = 60.00
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TodaySearchbar.isHidden = true
        
        endTime = Date().addingTimeInterval(timeLeft)
    
        
       
 }
   

    
    @IBAction func ActionSearchBar(_ sender: Any) {
        self.TodaySearchbar.isHidden = false
        
        
    }
    
    @IBAction func ActionNotifications(_ sender: Any) {
        self.TodaySearchbar.isHidden = true
        
    }
    
    
    @IBAction func ActionTrendMore(_ sender: Any) {
       
        
    }
    @IBAction func ActionLiveMore(_ sender: Any) {
       
        
    }
    @IBAction func ActionPodcastMore(_ sender: Any) {
       
        
    }
    @IBAction func ActionDonateNow(_ sender: Any) {
       
        
    }
    @IBAction func ActionJoinNow(_ sender: Any) {
       
        
    }
    @IBAction func ActionSignup(_ sender: Any) {
       
        
    }
    @IBAction func ActionLikeNow(_ sender: Any) {
       
        
    }
    
}

extension TodayViewController : UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
             if   collectionView == TimeCollectionVIew {return 10}
        else if   collectionView == EventsCollectionVIew {return 10}
        else if   collectionView == TrendingCollectionVIew {return 10}
        else if   collectionView == LiveCollectionVIew {return 10}
        else if   collectionView == PodcastCollectionVIew {return 10}
        else if   collectionView == RamadanCollectionVIew {return 10}
        else if   collectionView == LikeCollectionVIew {return 10}
        return 0}
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if  collectionView == TimeCollectionVIew {
            let TimeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeCollectionVIewCell", for: indexPath) as! TimeCollectionVIewCell
            
            
            TimeCell.ViewTime.trackColor = UIColor.init(named: "CAShapeColor")!
            TimeCell.ViewTime.progressColor = UIColor.white
            TimeCell.timeleft.text = timeLeft.startFromTimeInterval()
            TimeCell.sessionName.font = UIFont(name: "Roboto-Medium", size: 14)
            TimeCell.sessionName.text = "Next Salah in"
            TimeCell.sessionName.numberOfLines = 0
            TimeCell.ViewTime.setProgressWithAnimation(duration: timeLeft * 2 , value: 0.999)
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [unowned self] timer in
                if self.timeLeft > 0 {
                    timeLeft = endTime?.timeIntervalSinceNow ?? 0
                   
                    TimeCell.timeleft.font = UIFont(name: "Roboto-Medium", size: 14)
                    TimeCell.timeleft.text = timeLeft.startFromTimeInterval()
                    TimeCell.LblTime.text = timeLeft.startFromTimeInterval()
                   
                }
                else{
                    TimeCell.timeleft.text = "00:00:00"
                    timer.invalidate()
            }
            
            }
    return TimeCell
  }
        
        else if   collectionView == EventsCollectionVIew {  let EventsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCollectionVIewCell", for: indexPath) as! EventsCollectionVIewCell
            
            
            EventsCell.dropShadow(color: .darkGray, opacity: 0.5, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
            EventsCell.ImgCover.layer.cornerRadius = 15
            EventsCell.ImgCover.layer.masksToBounds = true
            
            
            return EventsCell}
        
        else if  collectionView == TrendingCollectionVIew {  let TrendingCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCollectionVIewCell", for: indexPath) as! TrendingCollectionVIewCell
            
            TrendingCell.dropShadow(color: .darkGray, opacity: 0.5, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
            TrendingCell.ImgThumbnail.layer.cornerRadius = 15
            TrendingCell.ImgThumbnail.layer.masksToBounds = true
            
            return TrendingCell
            
        }
        
            else if   collectionView == LiveCollectionVIew {  let LiveCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionVIewCell", for: indexPath) as! LiveCollectionVIewCell
                
                LiveCell.dropShadow(color: .darkGray, opacity: 0.5, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
                
                LiveCell.ImgThumbnail.layer.cornerRadius = 15
                LiveCell.ImgThumbnail.layer.masksToBounds = true
                
                
                return LiveCell}
            
            else if  collectionView == PodcastCollectionVIew {  let PodcastCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PodcastCollectionVIewCell", for: indexPath) as! PodcastCollectionVIewCell
                
                PodcastCell.dropShadow(color: .darkGray, opacity: 0.5, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
                PodcastCell.ImgThumbnail.layer.cornerRadius = 15
                PodcastCell.ImgThumbnail.layer.masksToBounds = true
                
                return PodcastCell
                
            }
            
                else if   collectionView == RamadanCollectionVIew {  let RamadanCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RamadanCollectionVIewCell", for: indexPath) as! RamadanCollectionVIewCell
                    
                    
                    RamadanCell.dropShadow(color: .darkGray, opacity: 0.5, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
                    
                    RamadanCell.ImgThumbnail.layer.cornerRadius = 15
                    RamadanCell.ImgThumbnail.layer.masksToBounds = true
                    
                    return RamadanCell}
                
                else if  collectionView == LikeCollectionVIew {  let LikeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LikeCollectionVIewCell", for: indexPath) as! LikeCollectionVIewCell
                    
                    
                    LikeCell.dropShadow(color: .darkGray, opacity: 0.5, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
                    
                    LikeCell.ImgThumbnail.layer.cornerRadius = 15
                    LikeCell.ImgThumbnail.layer.masksToBounds = true
                    
                    return LikeCell
                    
                }

                
                return UICollectionViewCell()
                
            }
            
            
        }


extension TimeInterval {
    var time: String {
        return String(format:"%0.2d:%0.2d:%0.2d", Int(self/60),  Int(ceil(truncatingRemainder(dividingBy: 60))) )
    }
}


extension TimeInterval{

        func startFromTimeInterval() -> String {

            let time = NSInteger(self)

                        let ms = Int((self.truncatingRemainder(dividingBy: 1)) * 1000)
                        let seconds = time % 60
                        let minutes = (time / 60) % 60
                        let hours = (time / 3600)

                        return String(format: "%0.2d:%0.2d:%0.2d",hours,minutes,seconds)

                  }
    }


