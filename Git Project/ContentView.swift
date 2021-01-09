//
//  ContentView.swift
//  Git Project
//
//  Created by Shane Simpson on 1/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationView{
            Button("Show Modal") {
                self.isPresented = true
            }.sheet(isPresented: $isPresented){
                ModalView()
            }
        }.navigationBarTitle("Xcode and Git") // End Navigation View
        
        
        
    } // End View
} // End Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
