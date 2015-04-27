import Foundation
import UIKit

class ConfirmationRule: Rule {
    
    let confirmField: UITextField
    
    init(confirmField: UITextField) {
        self.confirmField = confirmField
    }
    
    func validate(value: String) -> Bool {
        if self.confirmField.text == value {
            return true
        } else {
            return false
        }
    }
    
    func errorMessage() -> String {
        return "This field does not match"
    }
    
}