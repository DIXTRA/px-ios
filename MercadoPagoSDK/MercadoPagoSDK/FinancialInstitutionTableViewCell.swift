//
//  FinancialInstitutionTableViewCell.swift
//  MercadoPagoSDK
//
//  Created by AUGUSTO COLLERONE ALFONSO on 3/9/17.
//  Copyright © 2017 MercadoPago. All rights reserved.
//

import UIKit
import MercadoPagoServicesV4

class FinancialInstitutionTableViewCell: UITableViewCell {

    @IBOutlet weak var financialInstitutionImage: UIImageView!

    func fillCell(financialInstitution: PXFinancialInstitution, bundle: Bundle) {
        if let image = UIImage(named: "financial_institution_\(financialInstitution.id!)", in: bundle, compatibleWith: nil) {
            financialInstitutionImage.image = image
        } else {
            financialInstitutionImage.image = nil
            textLabel?.text = financialInstitution.id
            textLabel?.textAlignment = .center
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    func addSeparatorLineToBottom(width: Double, height: Double) {
        let lineFrame = CGRect(origin: CGPoint(x: 0, y: Int(height)), size: CGSize(width: width, height: 0.5))
        let line = UIView(frame: lineFrame)
        line.alpha = 0.6
        line.backgroundColor = UIColor.px_grayLight()
        addSubview(line)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
