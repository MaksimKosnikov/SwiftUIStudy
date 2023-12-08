//
//  SidebarViewModel.swift
//  SwiftUIStudy
//
//  Created by USER on 16.11.2023.
//

import Foundation

enum TaskScreens: String {
    case coreData = "Core Data"
    case swiftData = "Swift Data"
    case weather = "Weather"
    case photoCompression = "Photo Compression"
    case liveActivity = "Live Activity"
}

class SidebarViewModel: ObservableObject {
    @Published var screens: [SidebarListModel] = [SidebarListModel(id: 0, screen: .coreData),
                                                  SidebarListModel(id: 1, screen: .swiftData),
                                                  SidebarListModel(id: 2, screen: .weather),
                                                  SidebarListModel(id: 3, screen: .photoCompression),
                                                  SidebarListModel(id: 4, screen: .liveActivity)]
}
