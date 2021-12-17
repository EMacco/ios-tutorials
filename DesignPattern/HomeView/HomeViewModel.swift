//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 13/12/2021.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
    
}
