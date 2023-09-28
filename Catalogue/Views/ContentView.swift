//
//  ContentView.swift
//  Catalogue
//
//  Created by Valeriy Kliuk on 2023-09-23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var modelData = ModelData()

    var body: some View {
        NavigationView {
            VStack{
                ScrollView (.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(modelData.productWrapper.results){ product in
                            NavigationLink{
                                ProductDetailsView(product: product)
                            } label: {
                                ProductCell(product: product)
                            }
                        }
                    }
                }
                .frame(height: 200)
                Spacer()
            }
            .navigationTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
