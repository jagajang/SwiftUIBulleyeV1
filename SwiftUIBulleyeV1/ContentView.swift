//
//  ContentView.swift
//  SwiftUIBulleyeV1
//
//  Created by Releas    e on 2021/05/04.
//

import SwiftUI

struct ContentView: View {

    
    // stage for user interface views
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0

    var body: some View {
        VStack{
            Spacer()
            HStack{
                Text("Put the bull eye as close as you can do:")
                Text("100")
            }
            
            Spacer()
            
            // Slider row
            // TODO: add view for the slide row here
            HStack{
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            Spacer()
            
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
                    message: Text("The slider's value is \(Int(self.sliderValue.rounded()))."),
                    dismissButton: .default(Text("Awesome"))
                )
            }
            
            Spacer()
            
            // Score row
            HStack{
                Button(action:{}) {
                    Text("Start over")
                }

                Spacer()
                Text("Score:")
                Text("999999")
                
                Spacer()
                Text("Round:")
                Text("999")

                Spacer()
                Button(action:{}) {
                    Text("Inform")
                }
            }.padding(.bottom, 20)
            
        } // End of Stack
    } // End of body
    
    
}

// preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

