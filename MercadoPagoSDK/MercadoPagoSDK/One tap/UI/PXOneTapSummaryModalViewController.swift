//
//  PXOneTapSummaryModalViewController.swift
//  MercadoPagoSDK
//
//  Created by Juan sebastian Sanzone on 18/5/18.
//  Copyright © 2018 MercadoPago. All rights reserved.
//

import UIKit

class PXOneTapSummaryModalViewController: UIViewController {

    private var props: [PXSummaryRowProps]?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setProps(summaryProps: [PXSummaryRowProps]?) {
        props = summaryProps
    }

    func setupView() {
        if let summaryProps = props, let smallSummaryView = PXSmallSummaryView(withProps: summaryProps, backgroundColor: .white).oneTapRender() as? PXSmallSummaryView {
            view.addSubview(smallSummaryView)
            PXLayout.pinTop(view: smallSummaryView).isActive = true
            PXLayout.pinBottom(view: smallSummaryView).isActive = true
            PXLayout.pinLeft(view: smallSummaryView).isActive = true
            PXLayout.pinRight(view: smallSummaryView).isActive = true
        }
    }
}
