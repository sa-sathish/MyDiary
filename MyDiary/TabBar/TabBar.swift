
//
//  TabBar.swift
//  TabBar
//
//  Created by sathish s on 20/04/2021.
//

import SwiftUI

struct TabBar: View {
    let darkBackground = UIColor(red: 0.189, green: 0.187, blue: 0.256, alpha: 1.0)

    @ObservedObject var tabItems = TabItems.shared
    
    @State private var circleSize: CGFloat = 50
    @State private var iconeSize: CGFloat = 25
    @State var index = 0
    var body: some View {
        ZStack {
           
            if self.index == 0 {
                HomeView()
//                Color.red.edgesIgnoringSafeArea(.top)
            } else if self.index == 1 {
                Color.red.edgesIgnoringSafeArea(.top)
            } else if self.index == 2 {
                Color.yellow.edgesIgnoringSafeArea(.top)
            } else if self.index == 3 {
                Color.orange.edgesIgnoringSafeArea(.top)
            }else if self.index == 4 {
                Color.orange.edgesIgnoringSafeArea(.top)
            }
            
            
            VStack {
                Spacer()
                ZStack {
                    Bar(tab: tabItems.selectedTabIndex)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width, height: 100)
                    HStack(spacing: (UIScreen.main.bounds.width - (CGFloat(TabItems.shared.items.count + 1) * self.circleSize)) / (CGFloat(TabItems.shared.items.count) + 1)) {
                        ForEach(0..<tabItems.items.count, id: \.self) { index in
                            ZStack {
                                Circle()
                                    .frame(width: self.circleSize, height: self.circleSize)
                                    .foregroundColor(.white)
                                    .onTapGesture {
                                        self.tabItems.select(index)
                                        self.index = index
                                    }
                                Image(systemName: self.tabItems.items[index].imageName)
                                    .resizable()
                                    .foregroundColor(Color(self.darkBackground))
                                    .frame(width: self.iconeSize, height: self.iconeSize)
                                    .opacity(self.tabItems.items[index].opacity)
                            }
                            .offset(y: self.tabItems.items[index].offset)
                            
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
