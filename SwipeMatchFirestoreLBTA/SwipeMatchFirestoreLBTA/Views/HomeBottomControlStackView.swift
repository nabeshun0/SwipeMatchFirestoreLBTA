//
//  HomeBottomControlStackView.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by member on 2020/05/18.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class HomeBottomControlStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true

        let subviews = [#imageLiteral(resourceName: "refresh_circle"), #imageLiteral(resourceName: "dismiss_circle"), #imageLiteral(resourceName: "super_like_circle"), #imageLiteral(resourceName: "like_circle"), #imageLiteral(resourceName: "boost_circle")].map { (img) -> UIView in
            let button = UIButton()
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }

        subviews.forEach { (v) in
            addArrangedSubview(v)
        }
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
