//
//  ContentView.swift
//  ListView
//
//  Created by Abhishek Gautam on 19/08/23.
//

import SwiftUI

struct ContentView: View {
    private var detail1 : [Detail] =  Detail.detail
    var body: some View {
        NavigationView{
            List{
                ForEach(detail1, id: \.title) {content in
                    NavigationLink(destination: DetailView(content: content)){
                        VStack(alignment: .leading){
                            Text("\(content.title)")
                                .bold()
                               // .foregroundColor(.black)
                        }
                    }
                    .padding(6)
                }
            }.navigationTitle("List View ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
