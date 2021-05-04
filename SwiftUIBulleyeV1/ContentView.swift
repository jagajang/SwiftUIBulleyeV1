//
//  ContentView.swift
//  SwiftUIBulleyeV1
//
//  Created by Releas	e on 2021/05/04.
//

import SwiftUI

struct ContentView: View {

    @State var alertIsVisible: Bool = false

    var body: some View {
        VStack{
            Text("Welcom to my first App")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            
            Button(
                action: {
                print("Button pressed")
                self.alertIsVisible = true
                })
            {
                Text("Hit me")
            }
            
            .alert(isPresented: self.$alertIsVisible) {
                Alert(
                    title: Text("Hello there!"),
                    message: Text("This is my first pop-up"),
                    dismissButton: .default(Text("Awesome"))
                )
            }
            
        } // End of Stack
    } // End of body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

