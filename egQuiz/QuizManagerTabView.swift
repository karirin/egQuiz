//
//  QuizManagerTabView.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizManagerTabView: View {
        @StateObject var viewModel = RankingViewModel()
        @ObservedObject var audioManager : AudioManager
        @Environment(\.presentationMode) var presentationMode
        @State private var selectedTab: Int = 0
        @State private var canSwipe: Bool = false
    @ObservedObject var reward = Reward()
    @State private var showLoginModal: Bool = false
    @State private var isButtonClickable: Bool = false
    @State private var showAlert: Bool = false
        let list: [String] = ["英単語", "英熟語", "英文法"]
        
        var body: some View {
                VStack{
                    HStack{
                        Spacer()
                        Text("ダンジョン一覧")
                            .font(.system(size: 20))
                            .padding(.top)
                            .foregroundStyle(Color("fontGray"))
                        Spacer()
                    }.background(.white)
                    TopTabView(list: list, selectedTab: $selectedTab)
                        .padding(.top,-15)
                    TabView(selection: $selectedTab,
                                        content: {
                        QuizTangoTabManagerView(isPresenting: .constant(false))
                            .padding(.top,30)
                                        .tag(0)
                        QuizJukugoManagerView(isPresenting: .constant(false))
//                            .padding(.top)
                                        .tag(1)
                        QuizBunpouManagerView(isPresenting: .constant(false))
//                            .padding(.top)
                                        .tag(2)
                                })
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                .background(Color("Color2"))
                .overlay(
                    ZStack {
                        Spacer()
                        HStack {
                            Spacer()
                            VStack{
                                Spacer()
                                HStack {
                                    Button(action: {
                                        reward.ExAndMoReward()
                                    }, label: {
                                        if reward.rewardLoaded{
                                            Image("倍ボタン")
                                                .resizable()
                                                .frame(width: 110, height: 110)
                                        }else{
                                            Image("倍ボタン白黒")
                                                .resizable()
                                                .frame(width: 110, height: 110)
                                        }
                                    })
                                        .shadow(radius: 5)
                                        .disabled(!reward.rewardLoaded)
                                        .onChange(of: reward.rewardEarned) { rewardEarned in
                                            showAlert = rewardEarned
                                            print("onchange reward.rewardEarned:\(showAlert)")
                                        }
                                        .alert(isPresented: $showAlert) {
                                            Alert(
                                                title: Text("報酬獲得！"),
                                                message: Text("1時間だけ獲得した経験値とコインが2倍"),
                                                dismissButton: .default(Text("OK"), action: {
                                                    showAlert = false
                                                    reward.rewardEarned = false
                                                })
                                            )
                                        }
                                        .padding(.bottom)
    //                                                .fullScreenCover(isPresented: $showAnotherView_post, content: {
    //                                                    RewardRegistrationView()
    //                                                })
                                    
                                        Spacer()
                                }
                            }
                        }
                    }
                )
            
//            .navigationBarBackButtonHidden(true)
//            .navigationBarItems(leading: Button(action: {
//                self.presentationMode.wrappedValue.dismiss()
//                audioManager.playCancelSound()
//            }) {
//                Image(systemName: "chevron.left")
//                    .foregroundColor(.gray)
//                Text("戻る")
//                    .foregroundColor(Color("fontGray"))
//            })
//            .toolbar {
//                    ToolbarItem(placement: .principal) {
//                        Text("ランキング")
//                            .font(.system(size: 20)) // ここでフォントサイズを指定
//                            .foregroundColor(Color("fontGray"))
//                    }
//                }
        }
}


#Preview {
    QuizManagerTabView(audioManager: AudioManager())
}
