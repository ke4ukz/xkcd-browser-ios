//
//  VersionTableViewCell.swift
//  XKCD Reader
//
//  Created on 3/11/26.
//

import UIKit

/// Table cell displaying the app version
class VersionTableViewCell: SettingTableViewCell {
    private var versionLabel: UILabel?

    override func commonInit() {
        super.commonInit()
        label = UILabel()
        versionLabel = UILabel()
        secondaryView = versionLabel
    }

    override func setupViews() {
        super.setupViews()
        label!.text = "Version"

        if let versionLabel = versionLabel {
            let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
            versionLabel.text = version
            versionLabel.font = UIFont(name: "xkcdScript", size: 18)
        }
    }
}
