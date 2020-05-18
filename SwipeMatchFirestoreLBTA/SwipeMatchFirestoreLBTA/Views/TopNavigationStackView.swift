//
//  TopNavigationStackView.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by member on 2020/05/18.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {

    let settingButton = UIButton(type: .system)
    let messegeButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "app_icon"))

    override init(frame: CGRect) {
        super.init(frame: frame)

        heightAnchor.constraint(equalToConstant: 80).isActive = true
        fireImageView.contentMode = .scaleAspectFit

        settingButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messegeButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)

        [settingButton, UIView(), fireImageView, UIView(), messegeButton].forEach { (v) in
            addArrangedSubview(v)
        }

        distribution = .equalCentering

        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }

    required init(coder: NSCoder) {
        fatalError()
    }
}
