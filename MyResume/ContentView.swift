//
//  ContentView.swift
//  MyResume
//
//  Created by 許博皓 on 2022/7/12.
//

import SwiftUI

struct ContentView: View {
    let me = Resume.shared
    
    @State private var showAlert = false
    
    var body: some View {
        ScrollView{
            VStack(spacing: 30){
                HStack{
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 200)
                    
                    VStack(spacing: 20) {
                        Text(me.name)
                            .font(.title)
                            .bold()
                        Text(me.title)
                        Label(me.location, systemImage: "location.fill")
                            .foregroundColor(.secondary)
                    }
                }
                Text(me.bio)
                    .font(.title3)
                    .lineSpacing(10)
                
                let alertTitle = "Not available yet"
                
                Button{
                    showAlert = true
                }label:{
                    Text("Contact Me")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.blue))
                }
                .alert(alertTitle, isPresented: $showAlert, actions: {
                    Button("OK") { }
                },message: {
                    Text("Sorry, this feature is not available yet. Please retry later.")
                })
                                
                
                Text("Skills")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(spacing: 40){
                    VStack{
                        Image("swift")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        Text(me.skills[0])
                    }
                    VStack{
                        Image("SwiftUI")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        Text(me.skills[1])
                    }
                    VStack{
                        Image("UIKit")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        Text(me.skills[2])
                    }
                    VStack{
                        Image("Git")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        Text(me.skills[3])
                    }
                }//.frame(width: 80)
            
                Text("Experience")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(spacing: 30){
                    Circle()
                        .frame(width: 10)
                        .background(Rectangle().frame(width: 5))
                    
                    VStack(spacing: 8){
                        Group{
                            HStack{
                                Text(me.experiences[0].start)
                                Text(" - ")
                                Text(me.experiences[0].end)
                            }.foregroundColor(.secondary)
                            Text(me.experiences[0].title)
                                .bold()
                                .font(.title2)
                            Text(me.experiences[0].company)
                                .padding(.bottom, 30)
                            HStack{
                                Text(me.experiences[1].start)
                                Text(" - ")
                                Text(me.experiences[1].end)
                            }.foregroundColor(.secondary)
                            Text(me.experiences[1].title)
                                .bold()
                                .font(.title2)
                            Text(me.experiences[1].company)
                                .padding(.bottom, 30)
                            HStack{
                                Text(me.experiences[2].start)
                                Text(" - ")
                                Text(me.experiences[2].end)
                            }.foregroundColor(.secondary)
                            Text(me.experiences[2].title)
                                .bold()
                                .font(.title2)
                            Text(me.experiences[2].company)
                                .padding(.bottom, 30)
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
