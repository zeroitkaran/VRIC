//
//  TimeCollectionVIewCell.swift
//  VRIC
//
//  Created by zeroit01 on 16/12/21.
//

import UIKit


class TimeCollectionVIewCell: UICollectionViewCell {
    
    @IBOutlet weak var LblNext: UILabel!
    @IBOutlet weak var LblCity: UILabel!
    @IBOutlet weak var LblTime: UILabel!
    @IBOutlet var ViewTime: TimeView!
    @IBOutlet var timeleft: UILabel!
    @IBOutlet var sessionName: UILabel!
}



class EventsCollectionVIewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgCover: UIImageView!
}


class TrendingCollectionVIewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgThumbnail: UIImageView!
    @IBOutlet weak var LblTitle: UILabel!
    @IBOutlet weak var ImgYoutubeIcon: UIImageView!
}

class LiveCollectionVIewCell: UICollectionViewCell {
    @IBOutlet weak var ImgThumbnail: UIImageView!
    @IBOutlet weak var LblTitle: UILabel!
}


class PodcastCollectionVIewCell: UICollectionViewCell {
    @IBOutlet weak var ImgThumbnail: UIImageView!
    @IBOutlet weak var LblTitle: UILabel!
    @IBOutlet weak var LblDescription: UILabel!
}

class RamadanCollectionVIewCell: UICollectionViewCell {
    @IBOutlet weak var ImgThumbnail: UIImageView!
    @IBOutlet weak var LblTitle: UILabel!
}


class LikeCollectionVIewCell: UICollectionViewCell {
    @IBOutlet weak var ImgThumbnail: UIImageView!
    @IBOutlet weak var LblTitle: UILabel!
}
