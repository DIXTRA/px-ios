//
//  PXCheckoutPreference+AdditionalInfo.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 4/8/19.
//

import Foundation

internal extension PXCheckoutPreference {
    internal func populateAdditionalInfoModel() {
        if let str = self.additionalInfo, let additionInfoData = str.data(using: .utf8) {
            do {
                self.pxAdditionalInfo = try JSONDecoder().decode(PXAdditionalInfo.self, from: additionInfoData)
            } catch {
                self.pxAdditionalInfo = nil
            }
        }
    }

    internal func getAdditionalInfoModel() -> PXAdditionalInfo? {
        return pxAdditionalInfo
    }
}
