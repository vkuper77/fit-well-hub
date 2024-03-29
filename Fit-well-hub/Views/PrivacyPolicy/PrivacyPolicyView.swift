//
//  PrivacyPolicyScreenView.swift
//  Fit-well-hub
//
//  Created by Vitali Kupratsevich on 9.12.23.
//

import SwiftUI

struct PrivacyPolicyView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            Text("PrivacyPolicyScreenView")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("EULA", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    BackButton { presentationMode.wrappedValue.dismiss() }
                }
            }
        }
    }
}

#Preview {
    PrivacyPolicyView()
}
