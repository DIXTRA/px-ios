//
//  PXAdvancedConfiguration.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 30/7/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import Foundation

@objcMembers
open class PXAdvancedConfiguration: NSObject {
    open var theme: PXTheme?
    open var escEnabled: Bool = false
    open var binaryMode: Bool = false
    open var bankDealsEnabled: Bool = true
    open var reviewConfirmConfiguration: PXReviewConfirmConfiguration = PXReviewConfirmConfiguration()
    open var paymentResultConfiguration: PXPaymentResultConfiguration = PXPaymentResultConfiguration()
}
