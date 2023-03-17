//
//  FormContentBuilderImpl.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import Foundation

final class FormContentBuilderImpl {
    var content: [FormSectionComponent] {
        return [
            FormSectionComponent(items: [
                TextFormComponent(placeholder: "Tittel"),
                TextFormComponent(placeholder: "Detalj"),
                TextFormComponent(placeholder: "Pris", keyboardType: .numbersAndPunctuation),
                ButtonFormComponent(title: "Klikk for å legge til hovedbilde"),
                TextFormComponent(placeholder: "Beskrivelse"),
                TextFormComponent(placeholder: "Adresse"),
                TextFormComponent(placeholder: "Kategori"),
                ButtonFormComponent(title: "Publiser tise")
            ])
        ]
    }
}
