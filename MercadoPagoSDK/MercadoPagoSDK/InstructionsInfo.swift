//
//  InstructionsInfo.swift
//  MercadoPagoSDK
//
//  Created by Maria cristina rodriguez on 29/7/16.
//  Copyright © 2016 MercadoPago. All rights reserved.
//

import UIKit

@objcMembers open class InstructionsInfo: NSObject {

    var amountInfo: AmountInfo!
    var instructions: [Instruction]!

    open func hasSecundaryInformation() -> Bool {
        if instructions.isEmpty {
            return false
        } else {
            return instructions[0].hasSecondaryInformation()
        }
    }

    open func hasSubtitle() -> Bool {
        if instructions.isEmpty {
            return false
        } else {
            return instructions[0].hasSubtitle()
        }
    }

    open func getInstruction() -> Instruction? {
        if instructions.isEmpty {
            return nil
        } else {
            return instructions[0]
        }
    }
}
