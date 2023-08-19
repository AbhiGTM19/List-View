//
//  DetailView.swift
//  ListView
//
//  Created by Abhishek Gautam on 19/08/23.
//

import SwiftUI

struct DetailView: View {
    var content : Detail
    
    var body: some View {
        VStack(spacing:20){
            Text("\(content.title)")
                .bold()
            Text("\(content.description)")
            Text("\(content.price)")
            Text("\(content.category.rawValue)")
            //Text("\(content.rating)")
            Image("\(content.image)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(content : Detail.sampleDetail)
    }
}
