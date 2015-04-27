
import Foundation
import UIKit

@objc protocol ValidationDelegate {
    func validationWasSuccessful()
    func validationFailed(errors:[UITextField:ValidationError])
}

class Validator {
    var errors:[UITextField:ValidationError] = [:]
    var validations:[UITextField:ValidationRule] = [:]
    
    init(){}
    
    
    func registerField(textField:UITextField, rules:[Rule]) {
        validations[textField] = ValidationRule(textField: textField, rules: rules, errorLabel: nil)
    }
    
    /*func registerField(textField:UITextField, errorLabel:UILabel, rules:[Rule]) {
        validations[textField] = ValidationRule(textField: textField, rules:rules, errorLabel:errorLabel)
    }*/
    
    func validateAll(delegate:ValidationDelegate) {
        
        for field in validations.keys {
            if let currentRule:ValidationRule = validations[field] {
                if var error:ValidationError = currentRule.validateField() {
                    if (currentRule.errorLabel != nil) {
                        error.errorLabel = currentRule.errorLabel
                    }
                    errors[field] = error
                } else {
                    errors.removeValueForKey(field)
                }
            }
        }
        
        if errors.isEmpty {
            delegate.validationWasSuccessful()
        } else {
            delegate.validationFailed(errors)
        }
    }
    
    func clearErrors(){
        self.errors = [:]
    }
    
}