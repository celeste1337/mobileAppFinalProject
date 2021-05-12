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
    @State var weight = 135
    var body: some View {
//        GeometryReader{geometry in
        NavigationView{
            
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Before you get started...")
//                        .position(x: (geometry.size.width / 2) - 50, y: 125)
                        .offset(x: -60, y: -250)
                    Text(question1 ? "How tall are you?" : "How much do you weigh?")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .semibold))
                        .offset(y: -150)
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
                        Text(question1 ? "\(height) in." : "\(weight) lbs.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 11/255, green: 231/255, blue: 251/255))
                    })
                    .offset(y: -100)
//                    .position(x: geometry.size.width / 2)
                        }
                
                if showPicker{
                    PickerPopover(showPicker: $showPicker, question1: $question1, height: $height, weight: $weight)
                        .offset(y: 150)
                        
                }
                else{
//                    Button(action: {
//                        question1.toggle()
//                    }, label: {
//                        Image("Next")
//                    })
                    
                        NavigationLink(
                            destination: ContentView(user: User())){
                                Image("Next")
                        }
                    
                    .offset(y: 150)
                }

        } //ZStack
    }

        } //Body

} //View

struct PickerPopover: View{
    @Binding var showPicker: Bool
    @Binding var question1: Bool
    @Binding var height: Int
    @Binding var weight: Int
    @State var localHeightState: Int = 0
    @State var localWeightState: Int = 0
    
    func selectOption() {
        if question1{
            self.height = localHeightState //<< Sync the binding with the local State
        }
        else{
            self.weight = localWeightState
        }

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
            if question1{
                Picker(
                  selection: $localHeightState,
                  label: Text("")
                ) {
                    ForEach(12...100, id:\.self){
                        Text("\($0)")
                            .foregroundColor(.white)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding()
            }
            else{
                Picker(
                  selection: $localWeightState,
                  label: Text("")
                ) {
                    ForEach(50...300, id:\.self){
                        Text("\($0)")
                            .foregroundColor(.white)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .padding()
            }

            Button(action: selectOption) {
              Image("SaveButton")
            }
            Spacer()
                .frame(height: 10)
                Button(action: cancel) {
                  Text("Cancel")
                    .foregroundColor(Color(red: 234/255, green: 99/255, blue: 144/255))
                }


          }
          .transition(.move(edge: .bottom))
          .onAppear {
            if question1{
                self.localHeightState = height // << set inital value here
            }
            else{
                self.localWeightState = weight
            }
              
          }
        }
    }


struct QuestionPageView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionPageView()
    }
}
