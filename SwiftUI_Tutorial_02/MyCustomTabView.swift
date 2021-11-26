//
//  MyCustomTabView.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/26.
//

import SwiftUI

enum TabIndex {
    case home, cart, profile
}

struct MyCustomTabView: View {
    @State var tabIndex: TabIndex
    
    func changeMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "Home", bgColor: Color.green)
        case .cart:
            return MyView(title: "Cart", bgColor: Color.purple)
        case .profile:
            return MyView(title: "Profile", bgColor: Color.blue)
        }
    }
    
    func calcCirclePosition(tabIndex: TabIndex, proxy: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(proxy.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return proxy.size.width / 3
        }
    }
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .bottom) {
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: calcCirclePosition(tabIndex: self.tabIndex, proxy: proxy), y: UIApplication.shared.windows[0].safeAreaInsets.bottom == 0 ? 15 : 5)
                    .foregroundColor(Color.white)
                
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Button(action: {
                            print("Home Clicked")
                            withAnimation {
                                self.tabIndex = .home
                            }
                        }) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? 1.4 : 1.0)
                                .foregroundColor(self.tabIndex == .home ? Color.green : Color.gray)
                                .frame(width: proxy.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }.background(Color.white)
                        Button(action: {
                            print("Cart Clicked")
                            withAnimation {
                                self.tabIndex = .cart
                            }
                        }) {
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? 1.4 : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? Color.purple : Color.gray)
                                .frame(width: proxy.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                        }.background(Color.white)
                        Button(action: {
                            print("Profile Clicked")
                            withAnimation {
                                self.tabIndex = .profile
                            }
                        }) {
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? 1.4 : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? Color.blue : Color.gray)
                                .frame(width: proxy.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }.background(Color.white)
                    }
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(height: UIApplication.shared.windows[0].safeAreaInsets.bottom == 0 ? 0 : 10)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
