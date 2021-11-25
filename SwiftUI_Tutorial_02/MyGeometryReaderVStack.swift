//
//  MyGeometryReaderVStack.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/25.
//

import SwiftUI

enum Index {
    case first, second, third
}

struct MyGeometryReaderVStack: View {
    @State var index: Index = .first
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                Button(action: {
                    print("Clicked 1")
                    withAnimation {
                        self.index = .first
                    }
                }) {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 50, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .first ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                Button(action: {
                    print("Clicked 2")
                    withAnimation {
                        self.index = .second
                    }
                }) {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 50, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .second ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                }
                Button(action: {
                    print("Clicked 3")
                    withAnimation {
                        self.index = .third
                    }
                }) {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 50, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .third ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
            }.frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.yellow)
    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
