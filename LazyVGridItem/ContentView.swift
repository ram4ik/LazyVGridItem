//
//  ContentView.swift
//  LazyVGridItem
//
//  Created by ramil on 01.07.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var minSpacing: CGFloat = 30
    @State private var maxSpacing: CGFloat = 50
    
    var body: some View {
        VStack(spacing: 20) {
            let gridItem = [GridItem(.adaptive(minimum: minSpacing, maximum: maxSpacing))]
            
            Text("LazyVGrid")
            
            LazyVGrid(columns: gridItem, spacing: 20) {
                ForEach(0..<40) { index in
                    Image(systemName: "\(index).circle")
                        .frame(width: 20, height: 20)
                }
                Image(systemName: "arrow.right.circle")
            }
            .frame(maxHeight: .infinity)
            .border(Color.blue)
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            VStack {
                Slider(value: $minSpacing, in: 10...40, step: 5, minimumValueLabel: Text("10"), maximumValueLabel: Text("40")) {
                    Text("Minimum Spacing")
                }
                Slider(value: $maxSpacing, in: 20...50, step: 5, minimumValueLabel: Text("20"), maximumValueLabel: Text("50")) {
                    Text("Minimum Spacing")
                }
            }.padding(.all, 10)
            
        }
        .animation(.default)
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
