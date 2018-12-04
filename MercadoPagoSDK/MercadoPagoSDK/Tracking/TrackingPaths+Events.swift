//
//  TrackingPaths+Events.swift
//  MercadoPagoSDK
//
//  Created by Eden Torres on 29/10/2018.
//

import Foundation

// MARK: Events
extension TrackingPaths {
    internal struct Events {
        static func getErrorPath() -> String {
            return "/friction"
        }

        static func getConfirmPath() -> String {
            return TrackingPaths.pxTrack + "/review/confirm"
        }

        static func getBackPath(screen: String) -> String {
            return screen + "/back"
        }

        static func getAbortPath(screen: String) -> String {
            return screen + "/abort"
        }

        static func getRecognizedCardPath(paymentTypeId: String) -> String {
            return TrackingPaths.pxTrack + TrackingPaths.addPaymentMethod + "/" + paymentTypeId + "/number" + "/recognized_card"
        }
    }
}

extension TrackingPaths.Events {
    internal struct OneTap {

        static func getSwipePath() -> String {
            return TrackingPaths.pxTrack + "/review/one_tap/swipe"
        }

        static func getConfirmPath() -> String {
            return TrackingPaths.pxTrack + "/review/confirm"
        }
    }
}

extension TrackingPaths.Events {
    internal struct ReviewConfirm {

        static func getChangePaymentMethodPath() -> String {
            return TrackingPaths.pxTrack + "/review/traditional/change_payment_method"
        }

        static func getConfirmPath() -> String {
            return TrackingPaths.pxTrack + "/review/confirm"
        }
    }
}
