//
//  TPCCategoryViewCell.swift
//  GanHuo
//
//  Created by tripleCC on 16/3/5.
//  Copyright © 2016年 tripleCC. All rights reserved.
//

import UIKit

class TPCCategoryViewCell: UICollectionViewCell {
    static func cellHeightWithGanHuo(ganhuo: GanHuoObject) -> CGFloat {
        if let desc = ganhuo.desc {
            return desc.heightWithFont(UIFont(name: UIFont.avenirBookFontName(), size: TPCConfiguration.themeCellBFontSize)!, width: TPCScreenWidth - 20) + 40
        }
        return 0
    }
    
    var ganhuo: GanHuoObject! {
        didSet {
            contentLabel.text = ganhuo.desc
            readedView.readed = ganhuo.read?.boolValue ?? false
        }
    }
    @IBOutlet weak var readedView: TPCMarkReadView!
    @IBOutlet weak var contentLabel: UILabel! {
        didSet {
            contentLabel.font = UIFont(name: UIFont.avenirBookFontName(), size: TPCConfiguration.themeCellBFontSize)
            contentLabel.textColor = UIColor.grayColor()
            contentLabel.numberOfLines = 0
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        contentView.backgroundColor = UIColor.randomColor()
    }
}
