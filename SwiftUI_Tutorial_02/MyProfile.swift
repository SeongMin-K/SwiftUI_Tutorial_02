//
//  MyProfile.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/24.
//

import SwiftUI

struct MyProfile: View {
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        VStack {
            Image("Shark")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(lineWidth: 12)
                        .foregroundColor(Color.green)
                }
            
            Text("SeongMin-K")
                .font(.system(size: 30))
                .foregroundColor(Color.black)
                .padding(.vertical, 20)
            
            Text("구독 / 좋아요 부탁드립니다!")
                .font(.system(size: 25))
                .foregroundColor(Color.black)
            
            HStack {
                Text("Subcribe")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(15)
                
                Text("OpenChat")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(15)
            }
        }
        .navigationBarTitle("My Profile")
        .navigationBarItems(trailing:
            NavigationLink(destination:
                Text("Setting")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
            ) {
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
            }
        )
        .onAppear {
            self.isNavigationBarHidden = false
        }
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
