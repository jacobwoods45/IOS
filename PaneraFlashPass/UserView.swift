//
//  UserView.swift
//  PaneraFlashPass
//
//  Created by Jacob Woods on 11/5/21.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PaneraText: View{
    var input: String
    var textSize: Int
    var body: some View{
        Text(input)
        .font(Font.custom("panera", size: CGFloat(textSize)))    }
          
    }
struct Welcome:View{
    var username: String
    var body: some View{
        Text("Hello, \(username)!")
            .font(Font.custom("roboto-medium", size: 25))
        Text("Please present your Panera Fast Pass to the cashier for a custom ordering experience")
            .font(Font.custom("roboto-medium", size: 20))
            .multilineTextAlignment(.center)
            .foregroundColor(.secondary)
            .padding(.bottom)
            
    }
}

struct PaneraLogo:View{
    var body: some View{
        VStack{
        PaneraText(input: "Panera", textSize: 40)
        PaneraText(input: "Flash Pass", textSize: 30)
                .foregroundColor(Color("PaneraGreen"))
        }
    }
}

struct QR_Block: View{
    var body: some View{
        ZStack{
        Image("codeOfUser")
                .resizable()
                .aspectRatio(contentMode: .fit)

        
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
