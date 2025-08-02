//
//  LoginView.swift
//  hataluclone
//
//  Created by tomohide katagiri on 2025/08/03.
//

import SwiftUI

struct LoginView: View {
    @State private var companyID = ""
    @State private var accountID = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                //logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //inputfields_
                
                VStack(spacing: 16) {
                    TextField("企業ID", text: $companyID)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("アカウントID（携帯電話番号）", text: $accountID)
                        .textFieldStyle(.roundedBorder)
                    
                    SecureField("パスワード", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                .padding(.horizontal, 24)
                HStack {
                    Spacer()
                    
                    //supportsite
                    Button("お問い合わせはこちら > ") {
                        // Action
                    }
                    .font(.footnote)
                    .foregroundStyle(.blue)
                    .padding(.trailing)
                }
                
                //loginButton
                Button(action: {
                    // ログイン処理
                }) {
                    Text("ログイン")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.3))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
                .padding(.horizontal)
                
                Spacer()
                
                //mypage
                
                Button("アカウントの新規作成、職場への所属申請をする方は\nこちら（マイページ）から") {
                    // Action
                }
                .font(.footnote)
                .foregroundStyle(.blue)
                .padding(.trailing)
            }
            .padding(.horizontal, 24)
        }
    }
}


#Preview {
    LoginView()
}
