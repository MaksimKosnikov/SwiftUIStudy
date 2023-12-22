//
//  SidebarViewModel.swift
//  SwiftUIStudy
//
//  Created by USER on 16.11.2023.
//

import Foundation

enum TaskScreens: String {
    case coreData
    case swiftData
    case weather
    case photoCompression
    case liveActivity
    case scheduleNotification
    case getStreamChat
    case geoTrack
    case changeLanguage
    
    func screenTitle() -> String {
        switch self {
        case .coreData:
            return L10n.Sidebar.NavigationRow.coreData
        case .swiftData:
            return L10n.Sidebar.NavigationRow.swiftData
        case .weather:
            return L10n.Sidebar.NavigationRow.weather
        case .photoCompression:
            return L10n.Sidebar.NavigationRow.photoCompression
        case .liveActivity:
            return L10n.Sidebar.NavigationRow.liveActivity
        case .scheduleNotification:
            return L10n.Sidebar.NavigationRow.scheduleNotification
        case .getStreamChat:
            return L10n.Sidebar.NavigationRow.getStreamChat
        case .geoTrack:
            return  L10n.Sidebar.NavigationRow.geoTrack
        case .changeLanguage:
            return L10n.Sidebar.NavigationRow.changeLanguage
        }
    }
}

class SidebarViewModel: ObservableObject {
    @Published var screens: [SidebarListModel] = [SidebarListModel(id: 0, screen: .coreData),
                                                  SidebarListModel(id: 1, screen: .swiftData),
                                                  SidebarListModel(id: 2, screen: .weather),
                                                  SidebarListModel(id: 3, screen: .photoCompression),
                                                  SidebarListModel(id: 4, screen: .liveActivity),
                                                  SidebarListModel(id: 5, screen: .scheduleNotification),
                                                  SidebarListModel(id: 6, screen: .getStreamChat),
                                                  SidebarListModel(id: 7, screen: .geoTrack),
                                                  SidebarListModel(id: 8, screen: .changeLanguage)]
}
