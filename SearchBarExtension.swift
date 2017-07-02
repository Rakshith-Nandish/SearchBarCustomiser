
import Foundation
import UIKit

extension UISearchBar {
    
    var SEARCH_BAR_SEARCH_FIELD_KEY: String {
        get {
            return "searchField"
        }
    }

    var SEARCH_BAR_PLACEHOLDER_TEXT_KEY: String {
        get {
            return "_placeholderLabel.textColor"
        }
    }
    
    var CANCEL_BUTTON: String {
        get {
            return "cancelButton"
        }
    }

    var textFieldSearchBar: UITextField {
        get {
           return self.value(forKey: SEARCH_BAR_SEARCH_FIELD_KEY) as! UITextField
        }
    }
    
    func setBackGroundOnSearchBar(color: UIColor) {
        self.backgroundImage =  UIImage.imageWithColor(color: color, size: CGSize(width: self.frame.width,height: self.frame.height))
    }
    
    func setBackGroundColorOnTextField(toColor: UIColor) {
        //modify textfield font and color attributes
        let textFieldSearchBar = self.value(forKey: SEARCH_BAR_SEARCH_FIELD_KEY) as? UITextField
        textFieldSearchBar?.backgroundColor = toColor
    }
    
    func setSearchBarFont(fontName: String,fontSize: CGFloat) {
        textFieldSearchBar.font = UIFont(name: fontName, size: fontSize)
    }
    
    func setDefaultSearchIconColor(color:UIColor) {
        let imageViewMagnifyingIcon = textFieldSearchBar.leftView as? UIImageView
        imageViewMagnifyingIcon?.image = imageViewMagnifyingIcon!.image!.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        imageViewMagnifyingIcon?.tintColor = color
    }
    
    func setSearchBarIcon(icon:UIImage) {
        let imageViewMagnifyingIcon = textFieldSearchBar.leftView as? UIImageView
        imageViewMagnifyingIcon?.image = icon
    }
    
    func setTextFieldPlaceHolderColor(color: UIColor) {
        textFieldSearchBar.setValue(UIColor.yellow, forKeyPath: SEARCH_BAR_PLACEHOLDER_TEXT_KEY)
    }
    
    func setCancelButtonColor(color: UIColor) {
        let cancelButtonSearchButton = self.value(forKeyPath: CANCEL_BUTTON) as? UIButton
        cancelButtonSearchButton?.tintColor = color
    }
}
