//
//  FlagView.swift
//  Simple Flag
//
//  Created by Pete Nealley on 12/31/24.
//

import SwiftUI

struct FlagView: View {
    var body: some View {
        VStack {
            
            //Flag Button1
            Button {
                
            } label: {
                Text(flag)
                    .font(.system(size: 300))
                    .padding(.vertical, -55)
                    .padding(.horizontal, 5)
                    .background(.black.opacity(0.5))
                    .cornerRadius(40)
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

#Preview {
    FlagView()
}
