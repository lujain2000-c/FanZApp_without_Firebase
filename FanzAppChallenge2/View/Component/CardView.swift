//
//  CardView.swift
//  FanzAppChallenge
//
//  Created by لجين إبراهيم الكنهل on 18/12/1445 AH.
//

import SwiftUI

struct CardView: View {
    @StateObject var vm = DataManager()
    var y = 0.0
    var x = 0.0
    var name = "Ali"
    var number = "1"
    var body: some View {
        Rectangle()
            .overlay(
            
                VStack {
                    ZStack {
                        Image("Back1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                
                        Image(systemName: "person").resizable()
                            .aspectRatio(contentMode: .fit)
                            .mask( Capsule())
                            //.padding(.top,42)
                        HStack(alignment:.top){
                            VStack {
                                Image("RoshinSmallIcon")
                               Text("23/24")
                                    .font( .footnote)
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Image("RoshinSmallIcon")
                        }
                    }//.padding(.top,24)
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                    VStack{
                        Text("#\(number)")
                            
                            .font(.caption2)
                            .bold()
                            .foregroundColor(Color("Yellow"))
                            .offset(y:-24)
                            
                            .background(
                                RoundedRectangle(cornerRadius: 9)
                                    .fill(.indigo)
                                               .frame(width: 20, height: 16)
                                               .offset(y:-24)
)
                      
                        Text("\(name)")
                            .font(.caption)
                            .foregroundColor(.white)
                        
                        Text("Postion")
                            .font(.caption2)
                            .foregroundColor(.white)
                    }
                        .offset(y:-24)
                        .padding(.bottom)
                    } .frame(maxWidth: .infinity,maxHeight: .infinity)
                    
        )

            .frame(width: 68,height: 94)
            .cornerRadius(8.0)
            .offset(x:  x.self,y:y.self)
            .foregroundColor(.purple)
            .opacity(0.8)
       
    }
}

#Preview {
    CardView()
}
