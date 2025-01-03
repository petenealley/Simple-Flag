//
//  FlagView.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import SwiftUI

struct FlagView: View {
    @State private var showAlert1 = false
    var body: some View {
        VStack {
            
            //Country Code
            Text(answer)
                .font(.system(size: 48))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top, 30)
            
            //leftFlagButton
            Button(action: {
                showAlert1.toggle()
            }, label: {
                Text(flag)
                    .font(.system(size: 300))
                    .padding(.vertical, -55)
                    .padding(.horizontal, 5)
                    .background(.black.opacity(0.5))
                    .cornerRadius(40)
            })
            .alert("System Alert", isPresented: $showAlert1) {
                
            }
            
            //Country Name
            Text(country)
                .font(.system(size: 48))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top, 30)
            
        }
        .padding()
    }
}

#Preview(traits: .landscapeLeft) {
    FlagView()
}
