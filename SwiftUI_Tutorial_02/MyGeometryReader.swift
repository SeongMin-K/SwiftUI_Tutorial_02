//
//  MyGeometryReader.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/25.
//

import SwiftUI

struct MyGeometryReader: View {
    let centerPosition: (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        GeometryReader { proxy in
            HStack(spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: proxy.size.width / 5)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: proxy.size.width / 5)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: proxy.size.width / 5)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                Text("4")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: proxy.size.width / 5)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                Text("5")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: proxy.size.width / 5)
                    .foregroundColor(Color.white)
                    .background(Color.purple)
            }.position(centerPosition(proxy))
        }.background(Color.black)
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
