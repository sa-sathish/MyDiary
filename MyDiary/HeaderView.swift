//
//  HeaderView.swift
//  Restaurent
//
//  Created by sathish s on 09/02/2021.
//
import SwiftUI
struct HeaderView : View {
    var body: some View{
        
        VStack{
            HStack {
               Text("My Diary")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                Spacer()
                
                HStack(spacing: 15) {
                Image(systemName: "chevron.left")
                Button(action: {
                    print("Search")
                }) {
                    Label("20 may", systemImage: "calendar")
                        .font(.caption)
                        .foregroundColor(Color.black)
                   
                }
                    Image(systemName: "chevron.right")
                    
                    
                }
            }
            .padding()
        }
    }
}
