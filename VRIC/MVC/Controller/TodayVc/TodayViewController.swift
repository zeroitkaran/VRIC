//
//  TodayViewController.swift
//  VRIC
//
//  Created by zeroit01 on 14/12/21.
//

import UIKit

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
    
    // @IBOutlet weak var BtnPodcastMore: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TodaySearchbar.isHidden = true
        
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
        
        if  collectionView == TimeCollectionVIew {  let TimeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeCollectionVIewCell", for: indexPath) as! TimeCollectionVIewCell
            return TimeCell}
        
        else if   collectionView == EventsCollectionVIew {  let EventsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCollectionVIewCell", for: indexPath) as! EventsCollectionVIewCell
            return EventsCell}
        
        else if  collectionView == TrendingCollectionVIew {  let TrendingCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCollectionVIewCell", for: indexPath) as! TrendingCollectionVIewCell
            
            return TrendingCell
            
        }
        
            else if   collectionView == LiveCollectionVIew {  let LiveCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LiveCollectionVIewCell", for: indexPath) as! LiveCollectionVIewCell
                return LiveCell}
            
            else if  collectionView == PodcastCollectionVIew {  let PodcastCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PodcastCollectionVIewCell", for: indexPath) as! PodcastCollectionVIewCell
                return PodcastCell
                
            }
            
                else if   collectionView == RamadanCollectionVIew {  let RamadanCell = collectionView.dequeueReusableCell(withReuseIdentifier: "RamadanCollectionVIewCell", for: indexPath) as! RamadanCollectionVIewCell
                    return RamadanCell}
                
                else if  collectionView == LikeCollectionVIew {  let LikeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LikeCollectionVIewCell", for: indexPath) as! LikeCollectionVIewCell
                    
                    return LikeCell
                    
                }
                    
                    
                    
                    
                    
                    
                  
                
                return UICollectionViewCell()
                
            }
            
            
        }




