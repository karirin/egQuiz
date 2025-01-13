//
//  QuizJukugoManager.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI
import AVFoundation
import Firebase

struct QuizJukugoManagerView: View {
    @State private var isIntermediateQuizActive: Bool = false
    @State private var isPresentingQuizBeginnerList: Bool = false
    @ObservedObject var authManager = AuthManager.shared
    @State private var isButtonEnabled: Bool = true
    @State private var lastClickedDate: Date = Date()
    @State private var audioPlayerKettei: AVAudioPlayer?
    @State private var isPresentingQuizBeginner: Bool = false
    @State private var isPresentingQuizIntermediate: Bool = false
    @State private var isPresentingQuizAdvanced: Bool = false
    @State private var isPresentingQuizNetwork: Bool = false
    @State private var isPresentingQuizSecurity: Bool = false
    @State private var isPresentingQuizDatabase: Bool = false
    @State private var isPresentingQuizGod: Bool = false
    @State private var isPresentingQuizIncorrectAnswer: Bool = false
    @State private var isSoundOn: Bool = true
    @ObservedObject var audioManager = AudioManager.shared
    @Environment(\.presentationMode) var presentationMode
    @Binding var isPresenting: Bool
    @State private var tutorialNum: Int = 0
    @State private var buttonRect: CGRect = .zero
    @State private var bubbleHeight: CGFloat = 0.0
    @State private var isIncorrectAnswersEmpty: Bool = true
    @ObservedObject var reward = Reward()
    @State private var showLoginModal: Bool = false
    @State private var isButtonClickable: Bool = false
    @State private var preFlag: Bool = false
    @State private var userPreFlag: Int = 0
    @State private var isLoading: Bool = true
    
    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _lastClickedDate = State(initialValue: Date())
    }


    var body: some View {
//        NavigationView{
            ZStack{
                    ScrollView{
                        VStack {
                            HStack {
                                Text(" ")
                                    .frame(width:isIPad() ? 10 : 5,height: isIPad() ? 40 : 15)
                                    .background(.gray)
                                Text(" 英熟語で不正解した問題だけを解くことができます")
                                    .font(.system(size: isIPad() ? 40 : 15))
                                    .foregroundColor(Color("fontGray"))
                            }
//                            .padding(.horizontal,0)
                            .padding(.bottom)
                            Button(action: {
                                if userPreFlag != 1 {
                                    preFlag = true
                                } else {
                                    if !isIncorrectAnswersEmpty {
                                        audioManager.playKetteiSound()
                                        self.isPresentingQuizIncorrectAnswer = true
                                    }
                                }
                            }) {
                                ZStack {
                                    if isIncorrectAnswersEmpty == true {
                                        Image("白黒英熟語復習ボタン")
                                            .resizable()
                                            .frame(height: isIPad() ? 200 : 70)
                                    }else{
                                        Image("英熟語復習ボタン")
                                            .resizable()
                                            .frame(height: isIPad() ? 200 : 70)
                                    }
                                    if userPreFlag != 1 {
                                        
                                        ZStack{
                                            Color.black.opacity(0.45)
                                                .cornerRadius(30)
                                            Text("プレミアムプランを登録すると\n復習機能が開放されます")
                                                .font(.system(size: isIPad() ? 50 : 20))
                                                .foregroundStyle(.white)
                                                .bold()
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizIncorrectAnswer) {
                                QuizIncorrectJukugoAnswerListView(isPresenting: $isPresentingQuizIncorrectAnswer)
                                        }
                            .onChange(of: isPresentingQuizBeginner) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizIncorrectAnswer) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizIntermediate) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizAdvanced) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizGod) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizNetwork) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizSecurity) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                            .onChange(of: isPresentingQuizDatabase) { isPresenting in
                                    fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                                }
                            }
                        
                            HStack {
                                Text(" ")
                                    .frame(width:isIPad() ? 10 : 5,height: isIPad() ? 40 : 15)
                                    .background(.gray)
                                Text(" 英検の階級ごとに問題を解くことができます　　")
                                    .font(.system(size: isIPad() ? 40 : 15))
                                    .foregroundColor(Color("fontGray"))
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                                Button(action: {
                                    audioManager.playKetteiSound()
                                    // 画面遷移のトリガーをオンにする
                                    self.isPresentingQuizBeginner = true
                                }) {
                                    //                        Image("IT基礎知識の問題の初級")
                                    Image("選択肢09")
                                        .resizable()
                                        .frame(height: isIPad() ? 200 : 70)
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal)
                                .padding(.bottom)
                                .shadow(radius: 3)
                                .fullScreenCover(isPresented: $isPresentingQuizBeginner) {
                                    QuizJukugo3List(isPresenting: $isPresentingQuizBeginner)
                                            }
                            .background(GeometryReader { geometry in
                                Color.clear.preference(key: ViewPositionKey.self, value: [geometry.frame(in: .global)])
                            })
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizIntermediate = true
                            }) {
                                //                    Image("IT基礎知識の問題の中級")
                                Image("選択肢10")
                                    .resizable()
                                    .frame(height: isIPad() ? 200 : 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizIntermediate) {
                                QuizJukugoJun2List(isPresenting: $isPresentingQuizIntermediate)
                                        }
                            
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizAdvanced = true
                            }) {
                                //                    Image("IT基礎知識の問題の上級")
                                Image("選択肢11")
                                    .resizable()
                                    .frame(height: isIPad() ? 200 : 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizAdvanced) {
                                QuizJukugo2List(isPresenting: $isPresentingQuizAdvanced)
                                        }
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizGod = true
                            }) {
                                //                    Image("データベース系の問題")
                                Image("選択肢12")
                                    .resizable()
                                    .frame(height: isIPad() ? 200 : 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizGod) {
                                QuizJukugoJun1List(isPresenting: $isPresentingQuizGod)
                                        }
                            HStack {
                                Text(" ")
                                    .frame(width:isIPad() ? 10 : 5,height: isIPad() ? 40 : 15)
                                    .background(.gray)
                                Text(" TOEICの難易度ごとに問題を解くことができます　　")
                                    .font(.system(size: isIPad() ? 40 : 15))
                                    .foregroundColor(Color("fontGray"))
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            // ネットワーク系の問題
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizNetwork = true
                            }) {
                                //                    Image("ネットワーク系の問題")
                                Image("選択肢13")
                                    .resizable()
                                    .frame(height: isIPad() ? 200 : 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .shadow(radius: 1)
                            .fullScreenCover(isPresented: $isPresentingQuizNetwork) {
                                QuizToeicJukugoBeginnerList(isPresenting: $isPresentingQuizNetwork)
                                        }
                            
                            // セキュリティ系の問題
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizSecurity = true
                            }) {
                                //                    Image("セキュリティ系の問題")
                                Image("選択肢14")
                                    .resizable()
                                    .frame(height: isIPad() ? 200 : 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom)
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizSecurity) {
                                QuizToeicJukugoIntermediateList(isPresenting: $isPresentingQuizSecurity)
                                        }
                            
                            // データベース系の問題
                            Button(action: {
                                audioManager.playKetteiSound()
                                self.isPresentingQuizDatabase = true
                            }) {
                                //                    Image("データベース系の問題")
                                Image("選択肢15")
                                    .resizable()
                                    .frame(height: isIPad() ? 200 : 70)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            .padding(.bottom,120)
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $isPresentingQuizDatabase) {
                                QuizToeicJukugoAdvancedList(isPresenting: $isPresentingQuizDatabase)
                                        }
                        }
                    }
                    .padding(.top)
//                    .padding(.top,-30)
//                    .overlay(
//                        ZStack {
//                            Spacer()
//                            HStack {
//                                Spacer()
//                                VStack{
//                                    Spacer()
//                                    HStack {
//                                        Button(action: {
////                                                self.showAnotherView_post = true
//                                            reward.ExAndMoReward()
//                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                                                self.showLoginModal = true
//                                            }
//                                        }, label: {
//                                            Image("倍ボタン")
//                                                .resizable()
//                                                .frame(width: 110, height: 110)
//                                        })
//                                            .shadow(radius: 5)
//                                            .disabled(!isButtonClickable)
//                                            .background(GeometryReader { geometry in
//                                                Color.clear.preference(key: ViewPositionKey.self, value: [geometry.frame(in: .global)])
//                                            })
//                                            .padding(.bottom)
////                                                .fullScreenCover(isPresented: $showAnotherView_post, content: {
////                                                    RewardRegistrationView()
////                                                })
//                                        
//                                            Spacer()
//                                    }
//                                }
//                            }
//                        }
//                    )
                .onPreferenceChange(ViewPositionKey.self) { positions in
                    self.buttonRect = positions.first ?? .zero
                }
                if showLoginModal {
                    ZStack {
                        Color.black.opacity(0.7)
                            .edgesIgnoringSafeArea(.all)
                        RewardTimesModal(audioManager: audioManager, isPresented: $showLoginModal)
                    }
                }
            }
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color("Color2"))
            .onAppear {
                print("isButtonClickable:\(isButtonClickable)")
                reward.LoadReward()
                fetchNumberOfIncorrectJukugoAnswer(userId: authManager.currentUserId!) { count in
                    authManager.fetchPreFlag()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        userPreFlag = authManager.userPreFlag
                        isLoading = false
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // 1秒後に
                    self.isButtonClickable = true // ボタンをクリック可能に設定
                }
                authManager.fetchUserInfo { (name, avatar, money, hp, attack, tutorialNum) in
                    if let fetchedTutorialNum = tutorialNum {
                        self.tutorialNum = fetchedTutorialNum
                    }
                }
                if let userId = authManager.currentUserId {
                    authManager.fetchLastClickedDate(userId: userId) { date in
                        if let unwrappedDate = date {
                            lastClickedDate = unwrappedDate
                            let calendar = Calendar.current
                            if calendar.isDateInToday(unwrappedDate) {
                                isButtonEnabled = false
                            }
                        } else {
                            print("lastClickedDate is nil")
                        }
                    }
                }
                isIntermediateQuizActive = authManager.level >= 10
                if let soundURL = Bundle.main.url(forResource: "soundKettei", withExtension: "mp3") {
                    do {
                        audioPlayerKettei = try AVAudioPlayer(contentsOf: soundURL)
                    } catch {
                        print("Failed to initialize audio player: \(error)")
                    }
                }
                if audioManager.isMuted {
                    audioPlayerKettei?.volume = 0
                } else {
                    audioPlayerKettei?.volume = 1.0
                }
            }
            .sheet(isPresented: $preFlag) {
                PreView(audioManager: audioManager)
            }
//            .navigationBarBackButtonHidden(true)
//            .navigationBarItems(leading: Button(action: {
//                self.presentationMode.wrappedValue.dismiss()
//                audioManager.playCancelSound()
//            }) {
//                Image(systemName: "chevron.left")
//                    .foregroundColor(Color("fontGray"))
//                Text("戻る")
//                    .foregroundColor(Color("fontGray"))
//            })
//            .toolbar {
//                    ToolbarItem(placement: .principal) {
//                        Text("ダンジョン一覧")
//                            .font(.system(size: 20)) // ここでフォントサイズを指定
//                            .foregroundStyle(Color("fontGray"))
//                    }
//                }
//            }
        .navigationViewStyle(StackNavigationViewStyle())
        }
    func isIPad() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    func fetchNumberOfIncorrectJukugoAnswer(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectJukugoAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
        
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
        print("count:\(count)")
        self.isIncorrectAnswersEmpty = (count == 0)
    }
    }
    }



struct QuizJukugoManagerView_Previews: PreviewProvider {
    static var previews: some View {
        QuizJukugoManagerView(isPresenting: .constant(false))
    }
}
