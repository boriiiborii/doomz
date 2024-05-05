//
//  BulluetinBoardCollectionViewCell.swift
//  dormitoryFamiles
//
//  Created by leehwajin on 2024/01/27.
//

import UIKit
import Kingfisher

final class BulluetinBoardCollectionViewCell: UICollectionViewCell {
    var articleId: Int?
    var profileUrl: String? {
            didSet {
                updateProfileImage()
            }
        }
    var status: String?
    var createdDate: String?
    var thumbnailUrl: String? {
            didSet {
                updateThumbnailImage()
            }
        }
    
    @IBOutlet weak var categoryTag: RoundButton!
    @IBOutlet weak var statusTag: RoundButton!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var nickName: UILabel!
    
    @IBOutlet weak var viewCount: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    @IBOutlet weak var wishCount: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    
    //모집완료일경우 색상 변경
    func changeFinish() {
        statusTag.backgroundColor = .gray0
        statusTag.tintColor = .gray5
    }

    private func updateProfileImage() {
           guard let profileUrl = profileUrl, let url = URL(string: profileUrl) else {
               return
           }
        print("ddd",profileUrl)
           profileImageView.kf.setImage(with: url)
       }
       
       private func updateThumbnailImage() {
           guard let thumbnailUrl = thumbnailUrl, let url = URL(string: thumbnailUrl) else {
               return
           }
           thumbnailImageView.kf.setImage(with: url)
       }
}
