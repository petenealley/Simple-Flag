//
//  FlagView.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import SwiftUI

struct FlagView: View {
    
    @StateObject private var viewModel = FlagViewModel()
    
    var body: some View {
        
        Text("test")
            .fontWeight(.bold)
            .font(.system(size: 48))
        
        VStack {
            
            //Country Code
            Text(viewModel.leftFlagCode)
                .font(.system(size: 48))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top, 30)
            
            //leftFlagButton
            Button(action: {
                // Action goes here
            }, label: {
                Text(viewModel.leftFlag)
                    .font(.system(size: 300))
                    .padding(.vertical, -55)
                    .padding(.horizontal, 5)
                    .background(.black.opacity(0.5))
                    .cornerRadius(40)
            })
            
            //Country Name
            Text(viewModel.leftName)
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
