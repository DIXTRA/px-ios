//
//  PXDefaultTheme.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 10/1/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import Foundation
import MLUI

class PXDefaultTheme: NSObject {

    var primaryColor: UIColor?

    override init() {
        super.init()
    }

    public init(withPrimaryColor: UIColor) {
        self.primaryColor = withPrimaryColor
    }
}

// MARK: - Theme styles.
extension PXDefaultTheme: PXTheme {

    public func navigationBar() -> PXThemeProperty {
        var themeProperty = PXThemeProperty(backgroundColor: #colorLiteral(red: 0, green: 0.5411764706, blue: 0.8392156863, alpha: 1), tintColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), selectedColor: .clear)
        if let customColor = primaryColor {
           themeProperty = PXThemeProperty(backgroundColor: customColor, tintColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), selectedColor: .clear)
        }
        return themeProperty
    }

    public func loadingComponent() -> PXThemeProperty {
        var themeProperty = PXThemeProperty(backgroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), tintColor: #colorLiteral(red: 0, green: 0.5411764706, blue: 0.8392156863, alpha: 1), selectedColor: .clear)
        if let customColor = primaryColor {
            themeProperty = PXThemeProperty(backgroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), tintColor: customColor, selectedColor: .clear)
        }
        return themeProperty
    }

    public func highlightBackgroundColor() -> UIColor {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    public func detailedBackgroundColor() -> UIColor {
        return #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
    }

    public func statusBarStyle() -> UIStatusBarStyle {
        return .lightContent
    }
}
