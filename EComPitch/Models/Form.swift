//
//  FormModel.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import Foundation
import UIKit

protocol FormItem {
    var id: UUID { get }
}

protocol FormSectionItem {
    var id: UUID { get }
    var items: [FormComponent] { get }
    init(items: [FormComponent])
}

final class FormSectionComponent: FormSectionItem, Hashable {
    var id: UUID = UUID()
    var items: [FormComponent]
    
    init(items: [FormComponent]) {
        self.items = items
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: FormSectionComponent, rhs: FormSectionComponent) -> Bool {
        lhs.id == rhs.id
    }
}


class FormComponent: FormItem, Hashable {
    var id: UUID = UUID()
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: FormComponent, rhs: FormComponent) -> Bool {
        lhs.id == rhs.id
    }
}

final class TextFormComponent: FormComponent {
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    init(placeholder: String, keyboardType: UIKeyboardType = .default) {
        self.placeholder = placeholder
        self.keyboardType = keyboardType
    }
}

final class ButtonFormComponent: FormComponent {
    let title: String
    init(title: String) {
        self.title = title 
    }
}
