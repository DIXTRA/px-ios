//
//  PXCustomComponentsHelper.swift
//  MercadoPagoSDK
//
//  Created by Eden Torres on 1/5/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import Foundation

/** :nodoc: */
extension PXResultViewModel {
    open func buildTopCustomView() -> UIView? {
        if let customView = preference.getTopCustomView(), self.paymentResult.isApproved() {
            return buildComponentView(customView)
        } else {
            return nil
        }
    }

    open func buildBottomCustomView() -> UIView? {
        if let customView = preference.getBottomCustomView(), self.paymentResult.isApproved() {
            return buildComponentView(customView)
        } else {
            return nil
        }
    }

    private func buildComponentView(_ customView: UIView) -> UIView {
        let componentView = UIView()
        componentView.translatesAutoresizingMaskIntoConstraints = false
        customView.translatesAutoresizingMaskIntoConstraints = false
        PXLayout.setHeight(owner: customView, height: customView.frame.height).isActive = true
        componentView.addSubview(customView)
        PXLayout.centerHorizontally(view: customView).isActive = true
        PXLayout.pinTop(view: customView).isActive = true
        PXLayout.pinBottom(view: customView).isActive = true
        PXLayout.matchWidth(ofView: customView).isActive = true
        return componentView
    }
}
