//
//  MyTabView.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/26.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            MyView(title: "Home", bgColor: Color.green)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            MyView(title: "Cart", bgColor: Color.purple)
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
                .tag(1)
            MyView(title: "Profile", bgColor: Color.blue)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
                .tag(2)
        }.background(Color.white)
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
