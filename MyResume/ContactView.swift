//
//  ContactView.swift
//  MyResume
//
//  Created by 許博皓 on 2022/7/13.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        VStack(spacing: 20){
            HStack(spacing: 20){
                Image(systemName: "phone.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.brown))
                Image("linkedin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("line")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("youtube")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Text("OK")
                .font(.title3)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.white))
        .padding()
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
            .background(.yellow)
    }
}
