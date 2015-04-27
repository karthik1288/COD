
import Foundation
import UIKit

class ValidationRule {
    var textField:UITextField
    var errorLabel:UILabel?
    var rules:[Rule] = []
    
    init(textField: UITextField, rules:[Rule], errorLabel:UILabel?){
        self.textField = textField
        self.errorLabel = errorLabel
        self.rules = rules
    }
    
    func validateField() -> ValidationError? {
        for rule in rules {
            var isValid:Bool = rule.validate(textField.text)
            if !isValid {
                return ValidationError(textField: self.textField, error: rule.errorMessage())
            }
        }
        return nil
    }
    
}