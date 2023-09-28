//
//  ProductDetailsView.swift
//  Catalogue
//
//  Created by Valeriy Kliuk on 2023-09-27.
//

import SwiftUI

struct ProductDetailsView: View {
    let product: Product

    var body: some View {
        ScrollView {
            Text(product.productName)
                    .font(.title)
            product.bigImage
        }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: ModelData().productWrapper.results[0])
    }
}
