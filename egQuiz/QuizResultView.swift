//
//  QuizResultView.swift main
//  it
//
//  Created by hashimo ryoya on 2023/09/18.
//

import SwiftUI

struct QuizResult {
    var question: String
    var userAnswer: String
    var correctAnswer: String
    var explanation: String!
    var isCorrect: Bool  // 正解か不正解かを示すプロパティ
    var showExplanation: Bool = false
}

struct QuizTotal {
    var totalAnswers: Int
}

struct QuizResultView: View {
//    var results: [QuizResult]
    let quizLevel: QuizLevel
    @State private var showModal = true
    @State private var adFlag = false
    @State private var showLevelUpModal = false
    @State private var showTittleModal = false
    @State private var showMemoView = false
    @State private var currentMemo = ""
    @State private var selectedQuestion = ""
    @ObservedObject var authManager: AuthManager
    @ObservedObject var audioManager = AudioManager.shared
    // QuizResultView.swift
    @State private var playerExperience: Int
    @State private var playerMoney: Int
    @State private var isContentView: Bool = false
    var elapsedTime: TimeInterval
    @State var results: [QuizResult]
//    let quizBossLevel: QuizBossLevel
    @State private var isShow: Bool = true
    @State private var flag: Bool = false
    @State private var preFlag: Bool = false
    @State private var showSubFlag: Bool = false
    @State private var level3flag: Bool = false
    @State private var level5flag: Bool = false
    @State private var level10flag: Bool = false
    @State private var answer30flag: Bool = false
    @State private var answer50flag: Bool = false
    @State private var answer100flag: Bool = false
    @State private var goburinflag: Bool = false
    @State private var kaijyuflag: Bool = false
    @State private var shinjyuflag: Bool = false
    @State private var userPreFlag: Int = 0
    @Binding var isPresenting: Bool
    @Binding var navigateToQuizResultView: Bool
    @State private var isHidden = false
    private let interstitial = Interstitial()
    @Environment(\.presentationMode) var presentationMode
    private let adViewControllerRepresentable = AdViewControllerRepresentable()
    @State private var restart = false

    // QuizResultView.swift
    init(results: [QuizResult], authManager: AuthManager, isPresenting: Binding<Bool>, navigateToQuizResultView: Binding<Bool>, playerExperience: Int, playerMoney: Int, elapsedTime: TimeInterval, quizLevel: QuizLevel) {
        _results = State(initialValue: results)
        self.authManager = authManager
        _isPresenting = isPresenting
        _navigateToQuizResultView = navigateToQuizResultView
        _playerExperience = State(initialValue: playerExperience)
        _playerMoney = State(initialValue: playerMoney)
        self.elapsedTime = elapsedTime
        self.quizLevel = quizLevel
    }
    
    var body: some View {
        
        ZStack {
            NavigationView{
                VStack{
                    VStack{
                        HStack{
                            Spacer()
                            Button(action: {
                                showSubFlag = true
                                audioManager.playSound()
                            }) {
                                Image("プレミアムプランボタン")
                                    .resizable()
                                    .frame(width:250,height:80)
                            }
                            .shadow(radius: 3)
                            .fullScreenCover(isPresented: $showSubFlag) {
                                PreView(audioManager: audioManager)
                            }
                            Spacer()
                        }.padding(5)
                                                }
                        if elapsedTime != 0 {
                            Spacer()
                                .frame(height: 50)
                            
                                HStack{
                                    Image(systemName: "stopwatch")
                                        .font(.system(size: 20))
                                        .foregroundColor(.red)
                                    Text("タイムアタックの結果")
                                        .font(.system(size: 20))
                                }
                            VStack(spacing: 10){
                                Text("\(formatDuration(elapsedTime))")
                                    .font(.system(size: 70))
                                HStack{
                                    Spacer()
                                    Button(action: {
                                        isHidden.toggle() // isHidden の値を切り替える
                                    }) {
                                        Text(isHidden ? "解説" : "解説") // ボタンのラベルを動的に設定
                                    }
                                    .padding(.vertical,10)
                                    .padding(.horizontal,25)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .background(Color("skyBlue"),in: RoundedRectangle(cornerRadius: 25))
                                    Spacer()
                                    Button(action: {
                                        //                                    isHidden.toggle() // isHidden の値を切り替える
                                    }) {
                                        Text("ランキング") // ボタンのラベルを動的に設定
                                    }
                                    .padding(.vertical,10)
                                    .padding(.horizontal,25)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .background(Color("skyBlue"),in: RoundedRectangle(cornerRadius: 25))
                                    Spacer()
                                }
                            }
                                
                            ScrollView {
                          ForEach(results, id: \.question) { result in
                              VStack(alignment: .leading, spacing: 20) {
                                  HStack {
                                      Image(systemName: result.isCorrect ? "circle" : "xmark")
                                          .foregroundColor(result.isCorrect ? .red : .blue)
                                          .opacity(0.7)
                                      Text(result.isCorrect ? "正解" : "不正解")
                                  }
                                  .font(.system(size: 24))
                                  Text(result.question)
                                  Text("あなたの回答: \(result.userAnswer)")
                                  Text("正解: \(result.correctAnswer)")
                                  // 解説を表示するための修正
                                  if result.showExplanation {
                                      Text("解説: \(result.explanation)")
                                  }
                              }
                              .padding()
                              .frame(maxWidth: .infinity, alignment: .leading)
                              Divider()
                              .onAppear {
                                  showModal = true
                              }
                              .frame(maxWidth: .infinity)
                          }
                          .padding(5)
                            }
                            .opacity(isHidden ? 1 : 0)
                                        
                                        
                        } else {
                        ScrollView{
                            ForEach(results, id: \.question) { result in
                                VStack(alignment: .leading,spacing: 20) {
                                    HStack{
                                        Image(systemName:result.isCorrect ? "circle" : "xmark")
                                            .foregroundColor(result.isCorrect ? .red : .blue)
                                            .opacity(0.7)
                                        Text(result.isCorrect ? "正解" : "不正解")
                                    }
                                    .font(.system(size:24))
                                    Text(result.question)
                                    Text("あなたの回答: \(result.userAnswer)")
//                                    Text("あなたの回答")
                                    Text("正解: \(result.correctAnswer)")
                                }.padding()
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Divider()
                                    .onAppear {
                                        showModal = true
                                    }
                                    .frame(maxWidth:.infinity)
                            }
                            .padding(5)
                        }
                        .foregroundColor(Color("fontGray1"))
                    }
                }
                .sheet(isPresented: $preFlag) {
                    PreView(audioManager: audioManager)
                }
                .onChange(of: authManager.didLevelUp) { newValue in
                    if newValue {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            showLevelUpModal = true
                            audioManager.playLevelUpSound()
                        }
                    }
                }
                .onAppear {
                    authManager.fetchPreFlag()
                    authManager.fetchUserStory()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        userPreFlag = authManager.userPreFlag
                        if userPreFlag != 1 {
                            executeProcessEveryFortyTimes()
                        }
                    }
                    DispatchQueue.main.async {
                        if !interstitial.interstitialAdLoaded && interstitial.wasAdDismissed == false {
                            interstitial.loadInterstitial(completion: { isLoaded in
                                if isLoaded {
                                    self.interstitial.presentInterstitial(from: adViewControllerRepresentable.viewController)
                                }
                            })
                        } else if !interstitial.wasAdDismissed {
                            interstitial.presentInterstitial(from: adViewControllerRepresentable.viewController)
                        }
                    }
                    authManager.fetchUserExperienceAndLevel()
                      DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                          if authManager.level > 2 {
                              authManager.checkTitles(userId: authManager.currentUserId!, title: "レベル３") { exists in
                                  if !exists {
                                      level3flag = true
                                      authManager.saveTitleForUser(userId: authManager.currentUserId!, title: "レベル３")
                                  }
                              }
                          }
                          if authManager.level > 4 {
                              authManager.checkTitles(userId: authManager.currentUserId!, title: "レベル５") { exists in
                                  if !exists {
                                      level5flag = true
                                      authManager.saveTitleForUser(userId: authManager.currentUserId!, title: "レベル５")
                                  }
                              }
                          }
                          if authManager.level > 9 {
                              authManager.checkTitles(userId: authManager.currentUserId!, title: "レベル１０") { exists in
                                  if !exists {
                                      level10flag = true
                                      authManager.saveTitleForUser(userId: authManager.currentUserId!, title: "レベル１０")
                                  }
                              }
                          }
                          authManager.fetchTotalAnswersData(userId: authManager.currentUserId!) { (totalData, totalAnswers) in
                          // ここでtotalDataやtotalAnswersを使用する
                          if totalAnswers > 30 {
                              authManager.checkTitles(userId: authManager.currentUserId!, title: "回答数３０") { exists in
                                  if !exists {
                                      answer30flag = true
                                      authManager.saveTitleForUser(userId: authManager.currentUserId!, title: "回答数３０")
                                  }
                              }
                          }
                          if totalAnswers > 50 {
                              authManager.checkTitles(userId: authManager.currentUserId!, title: "回答数５０") { exists in
                                  if !exists {
                                      answer50flag = true
                                      authManager.saveTitleForUser(userId: authManager.currentUserId!, title: "回答数５０")
                                  }
                              }
                          }
                          if totalAnswers > 100 {
                              authManager.checkTitles(userId: authManager.currentUserId!, title: "回答数１００") { exists in
                                  if !exists {
                                      answer100flag = true
                                      authManager.saveTitleForUser(userId: authManager.currentUserId!, title: "回答数１００")
                                  }
                              }
                          }
                          }
                      }
                }
            }
            .background {
                if userPreFlag != 1 {
                    adViewControllerRepresentable
                        .frame(width: .zero, height: .zero)
                }
            }
            .background(Color("Color2"))
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                isPresenting = false
                audioManager.playCancelSound()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color("fontGray1"))
                Text("戻る")
                    .foregroundColor(Color("fontGray1"))
            })
            .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("クイズ結果")
                            .font(.system(size: 20)) // ここでフォントサイズを指定
                    }
                }
            if showModal {
                ExperienceModalView(showModal: $showModal, addedExperience: playerExperience, addedMoney: playerMoney, authManager: authManager)
            }
            if showLevelUpModal {
                LevelUpModalView(showLevelUpModal: $showLevelUpModal, authManager: authManager)
            }
            if answer30flag {
                ModalTittleView(showLevelUpModal: $answer30flag, authManager: authManager, tittleNumber: .constant(30))
            }
            if answer50flag {
                ModalTittleView(showLevelUpModal: $answer50flag, authManager: authManager, tittleNumber: .constant(50))
            }
            if answer100flag {
                ModalTittleView(showLevelUpModal: $answer100flag, authManager: authManager, tittleNumber: .constant(100))
            }
            if level3flag {
                ModalTittleView(showLevelUpModal: $level3flag, authManager: authManager, tittleNumber: .constant(3))
            }
            if level5flag {
                ModalTittleView(showLevelUpModal: $level5flag, authManager: authManager, tittleNumber: .constant(5))
            }
            if level10flag {
                ModalTittleView(showLevelUpModal: $level10flag, authManager: authManager, tittleNumber: .constant(10))
            }
            if goburinflag {
                ModalTittleView(showLevelUpModal: $goburinflag, authManager: authManager, tittleNumber: .constant(44))
            }
            if kaijyuflag {
                ModalTittleView(showLevelUpModal: $kaijyuflag, authManager: authManager, tittleNumber: .constant(55))
            }
            if shinjyuflag {
                ModalTittleView(showLevelUpModal: $shinjyuflag, authManager: authManager, tittleNumber: .constant(66))
            }
        }
    }
    
    func formatDuration(_ duration: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.zeroFormattingBehavior = .pad
        return formatter.string(from: duration) ?? ""
    }
    
    func executeProcessEveryFortyTimes() {
        // UserDefaultsからカウンターを取得
        let count = UserDefaults.standard.integer(forKey: "launchPreCount") + 1
        
        // カウンターを更新
        UserDefaults.standard.set(count, forKey: "launchPreCount")
        
        // 3回に1回の割合で処理を実行
        if count % 5 == 0 {
            preFlag = true
        }
    }
}

struct ExperienceModalView: View {
    @Binding var showModal: Bool
    var addedExperience: Int
    var addedMoney: Int
    @State private var currentExperience: Double = 0
    @State private var currentMoney: Double = 0
    let maxExperience: Double = 100
    @ObservedObject var authManager: AuthManager
    @ObservedObject var audioManager = AudioManager.shared

    var body: some View {
        ZStack {
            // 半透明の背景
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    showModal = false
                }
            VStack{
                VStack(spacing: 20) {
                    if currentExperience != 5{
                        Text("クリア！！")
                            .font(.largeTitle)
                    }else{
                        Text("ゲームオーバー")
                            .font(.largeTitle)
                    }
                    HStack{
                        Image("経験値")
                            .resizable()
                            .frame(width:30,height:30)
                        Text("経験値 ＋\(Int(currentExperience))")
                            .font(.title)
                    }
                    
                    HStack{
                        Image("コイン")
                            .resizable()
                            .frame(width:30,height:30)
                        Text("コイン ＋\(Int(currentMoney))")
                            .font(.title)
                    }
                    // ここでProgressBar1に現在の経験値とmax経験値を渡します。
                    Text("\(authManager.experience) / \(authManager.level * 100) 経験値")
                        .font(.system(size: 20))
                    ProgressBar1(value: Double(authManager.experience), maxValue: Double(authManager.level * 100))
                        .padding(.horizontal,20)
                }
            }
            .foregroundColor(Color("fontGray"))
            .onAppear {
                authManager.fetchUserFlag()
                withAnimation {
                    currentExperience = Double(addedExperience) * Double(authManager.rewardFlag)
                    currentMoney = Double(addedMoney) * Double(authManager.rewardFlag)
                }
                if currentExperience != 5 {
                    audioManager.playGameClearSound()
                }else{
                    audioManager.playGameOverSound()
                }
                DispatchQueue.global(qos: .background).async {
                    authManager.fetchUserExperienceAndLevel()
                    DispatchQueue.main.async {
                        // ここでUIの更新を行います。
                    }
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding(30)
        }.overlay(
            // 「×」ボタンを右上に配置
            Button(action: {
                showModal = false
                audioManager.playCancelSound()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(30)
                    .padding()
            }
            .offset(x: 150, y: -130)
        )
    }
}

struct LevelUpModalView: View {
    @Binding var showLevelUpModal: Bool
    @ObservedObject var authManager: AuthManager
    @ObservedObject var audioManager = AudioManager.shared

    var body: some View {
        ZStack {
            // 半透明の背景
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    showLevelUpModal = false
                }

            VStack(spacing: 0) {
                ZStack{
                    Image("レベルアップ")
                        .resizable()
                        .frame(width:250,height:250)
                    Text("\(authManager.level)")
                        .font(.system(size: 100))
                        .fontWeight(.medium)
                        .padding(.bottom,80)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
        }
        .overlay(
            // 「×」ボタンを右上に配置
            Button(action: {
                showLevelUpModal = false
                audioManager.playCancelSound()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(50)
                    .padding()
            }
            .offset(x: 130, y: -140)
        )
        .onAppear{
            authManager.fetchUserExperienceAndLevel()
        }
    }
}

struct ProgressBar1: View {
    var value: Double
    var maxValue: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .opacity(0.3)
                    .foregroundColor(Color.blue)

                Rectangle()
                    .frame(width: CGFloat(self.value / self.maxValue) * geometry.size.width)
                    .foregroundColor(Color.blue)
                    .animation(.linear(duration: 1.0))
            }
        }
        .frame(height: 20)
        .cornerRadius(10)
    }
}


struct QuizResultView_Previews: PreviewProvider {
    // プレビュー用の状態変数
    @State static var isPresenting = false
    @State static var navigateToQuizResultView = false

    static var previews: some View {
        // プレビューで使用するためのダミーの依存オブジェクト
        let dummyResults = [QuizResult]() // 適切なダミーデータで置き換えてください
        let authManager = AuthManager() // 適切なダミーまたはモックオブジェクトで置き換えてください

        // プレビュー用にビューを初期化
        QuizResultView(results: dummyResults, authManager: authManager, isPresenting: $isPresenting, navigateToQuizResultView: $navigateToQuizResultView, playerExperience: 10, playerMoney: 10, elapsedTime: 0, quizLevel: .Tango3)
    }
}
