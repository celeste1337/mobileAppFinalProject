//
//  SplashPageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct QuestionPageView: View {
    @State private var question1 = true
    @State var showPicker = false
    @State var height = 65
    var body: some View {
//        GeometryReader{geometry in
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Before you get started...")
//                        .position(x: (geometry.size.width / 2) - 50, y: 125)
                        .offset(x: -60, y: -200)
                    Text(question1 ? "How tall are you?" : "How much do you weigh?")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .semibold))
                        .offset(y: -70)
//                        .position(x: (geometry.size.width / 2), y: -200)
//                    Text("\(height) inches")
//                            Picker("", selection: $height){
//                                ForEach(0...100, id:\.self){
//                                    Text("\($0)")
//                                }
//                            }.pickerStyle(WheelPickerStyle())

                    Button(action: {
                        showPicker = true
                    }, label: {
                        Text("\(height) in.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 11/255, green: 231/255, blue: 251/255))
                    })
//                    .position(x: geometry.size.width / 2)
                        }
                
                if showPicker{
                    PickerPopover(showPicker: $showPicker, height: $height)
                        .offset(y: 200)
                        
                }

                }
                
//            }
        }

    }

struct PickerPopover: View{
    @Binding var showPicker: Bool
    @Binding var height: Int
    @State var localState: Int = 0
    
    func selectOption() {
      self.height = localState //<< Sync the binding with the local State
      withAnimation {
        showPicker.toggle()
      }
    }
    func cancel() {
      //<< do nothing here
      withAnimation {
        showPicker.toggle()
      }
    }
    var body: some View{
        VStack{
            Picker(
              selection: $localState,
              label: Text("")
            ) {
                ForEach(0...100, id:\.self){
                    Text("\($0)")
                        .foregroundColor(.white)
                }
            }
            .pickerStyle(WheelPickerStyle())
            
            HStack{
                Button(action: cancel) {
                  Text("Cancel")
                }
                Spacer()
                    .frame(width: 30)
                Button(action: selectOption) {
                  Text("Select")
                }
            }

          }
          .transition(.move(edge: .bottom))
          .onAppear {
              self.localState = height // << set inital value here
          }
        }
    }


struct QuestionPageView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionPageView()
    }
}
