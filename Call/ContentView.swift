//
//  ContentView.swift
//  Call
//
//  Created by namnguyen on 20/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        VStack{
           
            HStack{
                ExpandableFab(show: $show)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ExpandableFab : View {
    @Binding var show : Bool
    var body: some View{
        VStack{
            if self.show{
                callUI(viewBubble: $show)
            }
            HStack {
                Button(action: {
                    self.show.toggle()
                }, label: {
                    Image(systemName: "chevron.backward").resizable().frame(width: 15, height: 15).padding(10)
            }).background(Color.blue).foregroundColor(.white).clipShape(Circle()).rotationEffect(.init(degrees: self.show ? 180 : 0))
                if self.show{
                    VStack{
                        Text("User").font(.title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "phone.down.circle.fill").resizable().frame(width: 30, height: 30).foregroundColor(.blue).padding(.bottom,10)
                            })
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "speaker.wave.2.circle.fill").resizable().frame(width: 30, height: 30).foregroundColor(.blue).padding(.bottom,10).padding(.horizontal,10)
                            })
                        }
                    }
                }
                else{
                    VStack{
                        Text("User").font(.title)
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "phone.down.circle.fill").resizable().frame(width: 30, height: 30).foregroundColor(.red).padding(.bottom,10)
                            })
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image(systemName: "speaker.wave.2.circle.fill").resizable().frame(width: 30, height: 30).foregroundColor(.white).padding(.bottom,10).padding(.horizontal,10)
                            })
                        }
                    }
                }
               
                
            }
            
        }.animation(.spring()).background(Color.blue).cornerRadius(10)
    }
}
struct callUI:View {
    @Binding var viewBubble: Bool
    var body: some View {
        Color(.systemBlue).edgesIgnoringSafeArea(.all).overlay(
            VStack{
            Image(systemName: "person.fill").resizable().frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("User").font(.title)
            HStack{
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "speaker.wave.2.circle.fill").resizable().frame(width: 50, height: 50).foregroundColor(Color(.white)).font(.system(size: 30)).padding(.all,30)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        
                        Image(systemName: "phone.down.circle.fill").resizable().frame(width: 50, height: 50).foregroundColor(Color(.red)).font(.system(size: 30)).padding(.all,30)
                    })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "mic.circle.fill").resizable().frame(width: 50, height: 50).foregroundColor(Color(.white)).font(.system(size: 30)).padding(.all,30)
                    })
                }
            }.padding([.bottom,.leading,.top],10).padding(.horizontal,10)
            })
    }
}
