//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by USER on 15.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isSideBarOpened = false
    
    var body: some View {
        let drag = DragGesture()
            .onEnded { gesture in
                if gesture.location.x < 170 && gesture.translation.width > 30 {
                    withAnimation {
                        isSideBarOpened.toggle()
                    }
                }
            }
        
        NavigationView {
            ZStack {
                NavigationStack {
                    Text("Hello world!")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button {
                                    isSideBarOpened.toggle()
                                } label: {
                                    Image(systemName: "line.3.horizontal")
                                }
                            }
                        }
                }
                .gesture(drag)
                SidebarView(isSidebarOpened: $isSideBarOpened)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
