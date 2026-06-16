//
//  CountryPickerUI.swift
//  ManicaChunksOnline
//
//  Created by Manyuchi, Carrington C on 2026/06/16.
//

import SwiftUI
import CountryPicker


struct CountryPickerUI: UIViewControllerRepresentable {
@Binding var country: Country?
    
    
    class Coordinator: NSObject, CountryPickerDelegate {
        var parent: CountryPickerUI
        
        init(parent: CountryPickerUI) {
            self.parent = parent
        }
        
        func countryPicker(didSelect country: Country) {
            parent.country = country
        }
        
    }
    
    func makeUIViewController(context: Context) -> some CountryPickerViewController {
        let countryPicker = CountryPickerViewController()
        countryPicker.selectedCountry = "IN"
        countryPicker.delegate = context.coordinator
        
        return countryPicker
        
    }

    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
