//
//  UITextField+Validations.swift
//  Validation
//
//  Created by Gohar on 12/07/2019.
//  Copyright © 2019 FTL Soft. All rights reserved.
//

import UIKit

extension UITextField {
    func validatedText(validationType: ValidatorType) throws -> String {
        let validator = VaildatorFactory.validatorFor(type: validationType)
        return try validator.validated(self.text!)
    }
}
