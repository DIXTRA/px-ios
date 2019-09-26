//
//  PXOneTapResultHandlerProtocol.swift
//  MercadoPagoSDK
//
//  Created by Eden Torres on 03/07/2018.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import Foundation

internal protocol PXOneTapResultHandlerProtocol: NSObjectProtocol {
    func finishOneTap(paymentResult: PaymentResult, instructionsInfo: PXInstructions?, pointsAndDiscounts: PointsAndDiscounts?)
    func finishOneTap(businessResult: PXBusinessResult, paymentData: PXPaymentData, splitAccountMoney: PXPaymentData?, pointsAndDiscounts: PointsAndDiscounts?)
    func finishOneTap(paymentData: PXPaymentData, splitAccountMoney: PXPaymentData?, pointsAndDiscounts: PointsAndDiscounts?)
    func cancelOneTap()
    func cancelOneTapForNewPaymentMethodSelection()
    func exitCheckout()
}
