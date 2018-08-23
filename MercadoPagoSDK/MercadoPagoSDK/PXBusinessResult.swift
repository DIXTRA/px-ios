//
//  PXBusinessResult.swift
//  MercadoPagoSDK
//
//  Created by Demian Tejo on 8/3/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import UIKit

@objc public enum PXBusinessResultStatus: Int {
    case APPROVED
    case REJECTED
    case PENDING
    case IN_PROGRESS

    func getDescription() -> String {
        switch self {
        case .APPROVED : return "APPROVED"
        case .REJECTED  : return "REJECTED"
        case .PENDING   : return "PENDING"
        case .IN_PROGRESS : return "IN PROGRESS"
        }
    }
}

/*
 Esta clase representa un resultado de pago de negocio.
 Por ejemplo, cuando hay un error al momento de realizar un pago que tiene que ver con el negocio y no con el payment method.
 */
@objcMembers open class PXBusinessResult: NSObject {

    private let status: PXBusinessResultStatus // APPROVED REJECTED PENDING
    private let title: String // Titluo de Congrats
    private let subtitle: String? // Sub Titluo de Congrats
    private let icon: UIImage?  // Icono de Congrats
    private let mainAction: PXAction? // Boton principal (Azul)
    private let secondaryAction: PXAction? // Boton secundario (link)
    private let helpMessage: String? // Texto
    private let showPaymentMethod: Bool // Si quiere que muestre la celda de PM
    private let statementDescription: String?
    private let imageUrl: String?
    private let topCustomView: UIView?
    private let bottomCustomView: UIView?
    private var receiptId: String?
    let paymentStatus: String
    let paymentStatusDetail: String

    public init(receiptId: String? = nil, status: PXBusinessResultStatus, title: String, subtitle: String? = nil, icon: UIImage? = nil, mainAction: PXAction? = nil, secondaryAction: PXAction?, helpMessage: String? = nil, showPaymentMethod: Bool = false, statementDescription: String? = nil, imageUrl: String? = nil, topCustomView: UIView? = nil, bottomCustomView: UIView? = nil, paymentStatus: String, paymentStatusDetail: String) {
        self.receiptId = receiptId
        self.status = status
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
        self.mainAction = mainAction
        self.secondaryAction = secondaryAction
        self.helpMessage = helpMessage
        self.showPaymentMethod = showPaymentMethod
        self.statementDescription = statementDescription
        self.imageUrl = imageUrl
        self.topCustomView = topCustomView
        self.bottomCustomView = bottomCustomView
        self.paymentStatus = paymentStatus
        self.paymentStatusDetail = paymentStatusDetail
        super.init()
    }
}

// MARK: Getters
internal extension PXBusinessResult {

    func getStatus() -> PXBusinessResultStatus {
        return self.status
    }
    func getTitle() -> String {
        return self.title
    }
    func getStatementDescription() -> String? {
        return self.statementDescription
    }
    func getTopCustomView() -> UIView? {
        return self.topCustomView
    }
    func getBottomCustomView() -> UIView? {
        return self.bottomCustomView
    }
    func getImageUrl() -> String? {
        return self.imageUrl
    }
    func getReceiptId() -> String? {
        return self.receiptId
    }
    func getSubTitle() -> String? {
        return self.subtitle
    }
    func getHelpMessage() -> String? {
        return self.helpMessage
    }
    func getIcon() -> UIImage? {
        return self.icon
    }
    func getMainAction() -> PXAction? {
        return self.mainAction
    }
    func getSecondaryAction() -> PXAction? {
        return self.secondaryAction
    }
    func mustShowPaymentMethod() -> Bool {
        return self.showPaymentMethod
    }
    func isApproved() -> Bool {
        return self.paymentStatus == PXPaymentStatus.APPROVED
    }
}

extension PXBusinessResult {
    internal func isAccepted() -> Bool {
        return self.status == .APPROVED
    }

    internal func isWarning() -> Bool {
        return self.status == .PENDING || self.status == .IN_PROGRESS
    }

    internal func isError() -> Bool {
        return self.status == .REJECTED
    }
}
