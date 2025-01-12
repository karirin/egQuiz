//
//  QuizView.swift main
//  it
//
//  Created by hashimo ryoya on 2023/09/16.
//

import SwiftUI
import AVFoundation
import Firebase

struct IncorrectAnswer {
var userId: String
var quizQuestion: String
var choices: [String]
var correctAnswerIndex: Int
var explanation: String
}

struct QuizQuestion {
    var id: String?
    var question: String
    var choices: [String]
    var correctAnswerIndex: Int
    var explanation: String!
}

struct ViewPositionKey1: PreferenceKey {
    static var defaultValue: [CGRect] = []
    static func reduce(value: inout [CGRect], nextValue: () -> [CGRect]) {
        value.append(contentsOf: nextValue())
    }
}

struct ViewPositionKey2: PreferenceKey {
    static var defaultValue: [CGRect] = []
    static func reduce(value: inout [CGRect], nextValue: () -> [CGRect]) {
        value.append(contentsOf: nextValue())
    }
}

struct ViewPositionKey3: PreferenceKey {
    static var defaultValue: [CGRect] = []
    static func reduce(value: inout [CGRect], nextValue: () -> [CGRect]) {
        value.append(contentsOf: nextValue())
    }
}

    struct TimerArc: Shape {
        var startAngle: Angle
        var endAngle: Angle
        
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: false)
            return path
        }
    }

struct QuizView: View {
    let quizzes: [QuizQuestion]
    let quizLevel: QuizLevel
    @State private var selectedAnswerIndex: Int? = nil
    @State private var currentQuizIndex: Int = 0
    @State private var showCompletionMessage: Bool = false
    @State private var showSubFlag: Bool = false
    @State private var remainingSeconds: Int = 30
    @State private var timer: Timer? = nil
    @State private var navigateToQuizResultView: Bool = false
    @ObservedObject var authManager : AuthManager
    @ObservedObject var audioManager : AudioManager
    @State private var showModal: Bool = false
    @State private var showTutorial: Bool = false
    @State private var quizResults: [QuizResult] = []
    @State private var answerCount: Int = 0
    @State private var incorrectCount: Int = 0
    @State private var incorrectAnswerCount: Int = 0
    @State private var correctAnswerCount: Int = 0
    @State private var countdownValue: Int = 3
    @State private var showCountdown: Bool = false
    @State private var playerHP: Int = 1000
    @State private var playerMaxHP: Int = 1000
    @State private var monsterHP: Int = 3000
    @State private var monsterUnderHP: Int = 30
    @State private var monsterAttack: Int = 30
    @State var showAlert: Bool = false
    @State private var userName: String = ""
    @State private var avator: [[String: Any]] = []
    @State private var monsterBackground: String = ""
    @State private var userMoney: Int = 0
    @State private var userHp: Int = 100
    @State private var userMaxHp: Int = 100
    @State private var userFlag: Int = 0
    @State private var userPreFlag: Int = 0
    @State private var avatarHp: Int = 100
    @State private var userAttack: Int = 30
    @State private var tutorialNum: Int = 0
    @State private var monsterType: Int = 0
    @State private var playerExperience: Int = 0
    @State private var playerMoney: Int = 0
    @State private var shakeEffect: Bool = false
    @State private var showAttackImage: Bool = false
    @State var showExplanationModal: Bool = false
    @State private var showMonsterDownImage: Bool = false
    @State private var showIncorrectBackground: Bool = false
    @State private var hasAnswered: Bool = false
    @Binding var isPresenting: Bool
    @State var showHomeModal: Bool = false
    @State private var isSoundOn: Bool = true
    @State private var showTutorial1 = true
    @State private var showTutorial2 = false
    @State private var showTutorial3 = false
    @State private var showTutorial4 = false
    @State private var buttonRect: CGRect = .zero
    @State private var buttonRect1: CGRect = .zero
    @State private var buttonRect2: CGRect = .zero
    @State private var buttonRect3: CGRect = .zero
    @State private var bubbleHeight: CGFloat = 0.0
    @State private var startTime = Date()
    @State private var endTime: Date?
    @State private var elapsedTime: TimeInterval?
    @State private var navigateToQuizResult = false
    @ObservedObject var interstitial: Interstitial
    @StateObject var appState = AppState()
    @State private var rewardFlag: Int = 0
    
    
    var currentQuiz: QuizQuestion {
        quizzes[currentQuizIndex]
    }
    
    func pauseTimer() {
        timer?.invalidate()
    }
    
    func resumeTimer() {
        // 現在のタイマーを止める
        self.timer?.invalidate()
        
        // ここではremainingSecondsをリセットしない
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if self.remainingSeconds > 0 {
                self.remainingSeconds -= 1
            } else {
                timer.invalidate()
                playerHP -= monsterAttack
                self.moveToNextQuiz()
            }
        }
    }
    
    func startCountdown() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                if countdownValue > 1 {
                    countdownValue -= 1
                } else {
                    timer.invalidate()
                    showCountdown = false
                    if tutorialNum != 3 {
                        startTimer()
                    }
                }
            }
        }
    }
    
    
    func fetchNumberOfIncorrectAnswers(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
    }
    }
    func fetchNumberOfIncorrectTangoAnswers(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectTangoAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
    }
    }
    func fetchNumberOfIncorrectJukugoAnswers(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectJukugoAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
    }
    }
    func fetchNumberOfIncorrectBunpouAnswers(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectBunpouAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
    }
    }
    func fetchNumberOfIncorrectESAnswers(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectESAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
    }
    }
    func fetchNumberOfIncorrectITStrategyAnswers(userId: String, completion: @escaping (Int) -> Void) {
    let ref = Database.database().reference().child("IncorrectITStrategyAnswers").child(userId)
    ref.observeSingleEvent(of: .value) { snapshot in
    let count = snapshot.childrenCount // 子ノードの数を取得
    completion(Int(count))
    }
    }

    func startTimer() {
        // 現在のタイマーを止める
        self.timer?.invalidate()
        
        // 3秒後に以下のコードブロックを実行
        self.remainingSeconds = 30
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if self.remainingSeconds > 0 {
                self.remainingSeconds -= 1
            } else {
                timer.invalidate()
                playerHP -= monsterAttack
                self.moveToNextQuiz()
            }
        }
    }
    
    // 次の問題へ移る処理
    func moveToNextQuiz() {
        if monsterType == 3 && monsterHP <= 0 {
            // 最後のモンスターが倒された場合、結果画面へ遷移
            showCompletionMessage = true
            timer?.invalidate()
            RateManager.shared.updateQuizData(userId: authManager.currentUserId!, quizType: quizLevel, newCorrectAnswers: correctAnswerCount, newTotalAnswers: answerCount)
            RateManager.shared.updateAnswerData(userId: authManager.currentUserId!, quizType: quizLevel,  newTotalAnswers: answerCount)
            navigateToQuizResultView = true //ここで結果画面への遷移フラグをtrueに
        } else if playerHP <= 0 {
            showCompletionMessage = true
            timer?.invalidate()
            playerExperience = 5
            playerMoney = 5
            navigateToQuizResultView = true
            RateManager.shared.updateQuizData(userId: authManager.currentUserId!, quizType: quizLevel, newCorrectAnswers: correctAnswerCount, newTotalAnswers: answerCount)
            RateManager.shared.updateAnswerData(userId: authManager.currentUserId!, quizType: quizLevel,  newTotalAnswers: answerCount)
            
        } else if self.remainingSeconds == 0 {
            currentQuizIndex += 1
           selectedAnswerIndex = nil
           startTimer()
           hasAnswered = false
        } else if currentQuizIndex + 1 < quizzes.count {
            if userFlag == 0 {
                showExplanationModal = true
            } else {
                currentQuizIndex += 1
               selectedAnswerIndex = nil
                startTimer()
            }
            hasAnswered = false
        } else {
            // すべての問題が終了した場合、結果画面へ遷移
            showCompletionMessage = true
            timer?.invalidate()
            navigateToQuizResultView = true  // ここで結果画面への遷移フラグをtrueに
        }
    }
    
    func isSmallDevice() -> Bool {
        return UIScreen.main.bounds.width < 390
    }
    
    func answerSelectionAction(index: Int) {
        if !hasAnswered {
            self.selectedAnswerIndex = index
            self.timer?.invalidate() // 回答を選択したらタイマーを止める
            
            let isAnswerCorrect = (selectedAnswerIndex == currentQuiz.correctAnswerIndex)
            if isAnswerCorrect {
                audioManager.playCorrectSound()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    audioManager.playAttackSound()
                    
                    self.showAttackImage = true
                    correctAnswerCount += 1 // 正解の場合、正解数をインクリメント
                    incorrectCount -= 1
                    answerCount += 1
                    if quizLevel != .incorrectTangoAnswer && quizLevel != .incorrectJukugoAnswer && quizLevel != .incorrectBunpouAnswer {
                        monsterHP -= userAttack
                    }
                    if monsterHP <= 0 {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            audioManager.playDownSound()
                            self.showMonsterDownImage = true
                        }
                        // モンスターのHPが0以下になった場合の処理
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            self.showMonsterDownImage = false
                            monsterType += 1
                        }
                    } else if playerHP <= 0 {
                        // プレイヤーのHPが0以下になった場合の処理
                        showCompletionMessage = true
                        timer?.invalidate()
                    }
                }
                if quizLevel == .incorrectTangoAnswer{
                    removeCorrectTangoAnswer(for: authManager.currentUserId!, questionId: currentQuiz.id!)
                }else if quizLevel == .incorrectJukugoAnswer {
                    removeCorrectJukugoAnswer(for: authManager.currentUserId!, questionId: currentQuiz.id!)
                }else if quizLevel == .incorrectBunpouAnswer {
                removeCorrectBunpouAnswer(for: authManager.currentUserId!, questionId: currentQuiz.id!)
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    moveToNextQuiz()
                }
            } else {
                let incorrectAnswer = IncorrectAnswer(
                userId: authManager.currentUserId!,
                quizQuestion: currentQuiz.question,
                choices: currentQuiz.choices,
                correctAnswerIndex: currentQuiz.correctAnswerIndex, explanation: currentQuiz.explanation
                )
                // incorrectAnswer以外のクイズなら不正解の問題をincorrectAnswerテーブルに保存する
                if quizLevel != .incorrectTangoAnswer && quizLevel != .incorrectJukugoAnswer && quizLevel != .incorrectBunpouAnswer {
                    switch quizLevel {
                    case .Tango3,.TangoJun2,.Tango2,.TangoJun1,.Tango1,.ToeicTangoBeginner,.ToeicTangoIntermediate,.ToeicTangoAdvanced:
                        saveIncorrectTangoAnswer(incorrectAnswer)
                        break
                    case .Jukugo3,.JukugoJun2,.Jukugo2,.JukugoJun1,.ToeicJukugoBeginner,.ToeicJukugoIntermediate,.ToeicJukugoAdvanced:
                        saveIncorrectJukugoAnswer(incorrectAnswer)
                        break
                        
                    case .BunpouBeginner,.BunpouIntermediate,.BunpouAdvanced:
                        saveIncorrectBunpouAnswer(incorrectAnswer)
                        break
                    default:
                        break
                    }
                }
                answerCount += 1
                audioManager.playUnCorrectSound()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    audioManager.playMonsterAttackSound()
                    playerHP -= monsterAttack
                    self.showAttackImage = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    moveToNextQuiz()
                }
            }
            let result = QuizResult(
                question: currentQuiz.question,
                userAnswer: currentQuiz.choices[index],
                correctAnswer: currentQuiz.choices[currentQuiz.correctAnswerIndex],
                explanation: currentQuiz.explanation,
                isCorrect: isAnswerCorrect
            )
            quizResults.append(result)
            self.showAttackImage = false
            hasAnswered = true
        }
    }
        func saveIncorrectTangoAnswer(_ answer: IncorrectAnswer) {
        // ユーザーIDを親ノードとして設定
        let ref = Database.database().reference().child("IncorrectTangoAnswers").child(answer.userId).childByAutoId()
        ref.setValue([
        "quizQuestion": answer.quizQuestion,
        "choices": answer.choices,
        "correctAnswerIndex": answer.correctAnswerIndex,
        "explanation": answer.explanation
        ])
        }
        func saveIncorrectJukugoAnswer(_ answer: IncorrectAnswer) {
        // ユーザーIDを親ノードとして設定
        let ref = Database.database().reference().child("IncorrectJukugoAnswers").child(answer.userId).childByAutoId()
        ref.setValue([
        "quizQuestion": answer.quizQuestion,
        "choices": answer.choices,
        "correctAnswerIndex": answer.correctAnswerIndex,
        "explanation": answer.explanation
        ])
        }
        func saveIncorrectBunpouAnswer(_ answer: IncorrectAnswer) {
        // ユーザーIDを親ノードとして設定
        let ref = Database.database().reference().child("IncorrectBunpouAnswers").child(answer.userId).childByAutoId()
        ref.setValue([
        "quizQuestion": answer.quizQuestion,
        "choices": answer.choices,
        "correctAnswerIndex": answer.correctAnswerIndex,
        "explanation": answer.explanation
        ])
        }
    func saveIncorrectESAnswer(_ answer: IncorrectAnswer) {
    // ユーザーIDを親ノードとして設定
    let ref = Database.database().reference().child("IncorrectESAnswers").child(answer.userId).childByAutoId()
    ref.setValue([
    "quizQuestion": answer.quizQuestion,
    "choices": answer.choices,
    "correctAnswerIndex": answer.correctAnswerIndex,
    "explanation": answer.explanation
    ])
    }
    func saveIncorrectITStrategyAnswer(_ answer: IncorrectAnswer) {
    // ユーザーIDを親ノードとして設定
    let ref = Database.database().reference().child("IncorrectITStrategyAnswers").child(answer.userId).childByAutoId()
    ref.setValue([
    "quizQuestion": answer.quizQuestion,
    "choices": answer.choices,
    "correctAnswerIndex": answer.correctAnswerIndex,
    "explanation": answer.explanation
    ])
    }
    
    func removeCorrectAnswer(for userId: String, questionId: String) {
        let ref = Database.database().reference().child("IncorrectAnswers").child(userId).child(questionId)
        ref.removeValue { error, _ in
            if let error = error {
                print("Error removing correct answer: \(error.localizedDescription)")
            } else {
                print("Correct answer removed successfully.")
            }
        }
    }
    func removeCorrectTangoAnswer(for userId: String, questionId: String) {
        let ref = Database.database().reference().child("IncorrectTangoAnswers").child(userId).child(questionId)
        ref.removeValue { error, _ in
            if let error = error {
                print("Error removing correct answer: \(error.localizedDescription)")
            } else {
                print("Correct answer removed successfully.")
            }
        }
    }
    func removeCorrectJukugoAnswer(for userId: String, questionId: String) {
        let ref = Database.database().reference().child("IncorrectJukugoAnswers").child(userId).child(questionId)
        ref.removeValue { error, _ in
            if let error = error {
                print("Error removing correct answer: \(error.localizedDescription)")
            } else {
                print("Correct answer removed successfully.")
            }
        }
    }
    func removeCorrectBunpouAnswer(for userId: String, questionId: String) {
        let ref = Database.database().reference().child("IncorrectBunpouAnswers").child(userId).child(questionId)
        ref.removeValue { error, _ in
            if let error = error {
                print("Error removing correct answer: \(error.localizedDescription)")
            } else {
                print("Correct answer removed successfully.")
            }
        }
    }
    func removeCorrectESAnswer(for userId: String, questionId: String) {
        let ref = Database.database().reference().child("IncorrectESAnswers").child(userId).child(questionId)
        ref.removeValue { error, _ in
            if let error = error {
                print("Error removing correct answer: \(error.localizedDescription)")
            } else {
                print("Correct answer removed successfully.")
            }
        }
    }
    func removeCorrectITStrategyAnswer(for userId: String, questionId: String) {
        let ref = Database.database().reference().child("IncorrectITStrategyAnswers").child(userId).child(questionId)
        ref.removeValue { error, _ in
            if let error = error {
                print("Error removing correct answer: \(error.localizedDescription)")
            } else {
                print("Correct answer removed successfully.")
            }
        }
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("\(monsterBackground)")
                     .resizable()
                     .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack{
                        Button(action: {
                            showHomeModal.toggle()
                            audioManager.playSound()
                        }) {
                            Image("設定")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                        }
                        .padding(.leading)
                        .foregroundColor(.gray)
                        Spacer()
                        Spacer()
                        // 正解の場合の赤い円
                        if let selected = selectedAnswerIndex, selected == currentQuiz.correctAnswerIndex {
                        }
                        TimerView(remainingSeconds: $remainingSeconds)
                            .background(GeometryReader { geometry in
                                Color.clear.preference(key: ViewPositionKey3.self, value: [geometry.frame(in: .global)])
                            })
                    }
                    .padding(.trailing)
                    //                    .padding(.top,40)
                    Spacer()
                    VStack{
                        ZStack {
                            VStack{
                                Text(currentQuiz.question)
                                    .font(.headline)
                                    .frame(height: tutorialNum == 0 ? 120 : nil)
                                    .padding(.horizontal)
                                    .foregroundColor(Color("fontGray"))
                                
                            }
                            .frame(maxWidth: .infinity)
                            .background(Color("Color2"))
                            .padding(.vertical, 5)
                            .background(GeometryReader { geometry in
                                Color.clear.preference(key: ViewPositionKey.self, value: [geometry.frame(in: .global)])
                            })//
                            
                            // 正解の場合の赤い円
                            if let selected = selectedAnswerIndex, selected == currentQuiz.correctAnswerIndex {
                                Circle()
                                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .opacity(0.7)
                                    .foregroundColor(.red)
                                    .frame(width: 70)
                            }
                            // 不正解の場合の青いバツマーク
                            else if let selected = selectedAnswerIndex, selected != currentQuiz.correctAnswerIndex {
                                Image(systemName: "xmark")
                                    .resizable()
                                    .opacity(0.7)
                                    .foregroundColor(.blue)
                                    .frame(width: 70,height:70)
                            }
                        }
                        ZStack{
                                        Image("\(quizLevel)Monster\(monsterType)")
                                            .resizable()
                                            .scaledToFit()
                                            .shadow(radius: 10)
                                            .frame(width: isSmallDevice() ? 100 : 160)
                            
                        
                        // 問題に正解して敵キャラにダメージ
                        if let selected = selectedAnswerIndex {
                            if selected == currentQuiz.correctAnswerIndex {
                                if showAttackImage {
                                    Image("attack1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height:isSmallDevice() ? 80 : 130)
                                }
                            }
                        }
                                        // 敵キャラを倒した
                                        if showMonsterDownImage && monsterHP <= 0 {
                                            Image("倒す")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height:80)
                                        }
                                
                        }
                        if quizLevel != .incorrectTangoAnswer && quizLevel != .incorrectJukugoAnswer && quizLevel != .incorrectBunpouAnswer {
                            ZStack{
                                VStack{
                                    HStack{
                                        ProgressBar3(value: Double(monsterHP), maxValue: Double(monsterUnderHP), color: Color("hpMonsterColor"))
                                            .frame(height: 20)
                                        Text("\(monsterHP)/\(monsterUnderHP)")
                                            .padding(.horizontal,10)
                                            .padding(.vertical, 3)
                                            .foregroundColor(Color(.white))
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(30)
                                    }
                                    .padding(.horizontal)
                                    // 味方キャラのHP
                                    HStack{
                                        Image(avator.isEmpty ? "defaultIcon" : (avator.first?["name"] as? String) ?? "")
                                            .resizable()
                                            .frame(width: 30,height:30)
                                        ProgressBar3(value: Double(playerHP), maxValue: Double(self.userMaxHp), color: Color("hpUserColor"))
                                            .frame(height: 20)
                                        Text("\(playerHP)/\(self.userMaxHp)")
                                            .padding(.horizontal,10)
                                            .padding(.vertical, 3)
                                            .foregroundColor(Color(.white))
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(30)
                                    }
                                    .padding(.horizontal)
                                }
                                    // 味方がダメージをくらう
                                    if let selected = selectedAnswerIndex, selected != currentQuiz.correctAnswerIndex {
                                        if showAttackImage{
                                            //                                    Image("\(quizLevel)MonsterAttack\(monsterType)")
                                            Image("beginnerMonsterAttack\(monsterType)")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height:90)
         
                                                .padding(.bottom, -30)
                                    }
                                }
                            }
                            .background(GeometryReader { geometry in
                                Color.clear.preference(key: ViewPositionKey2.self, value: [geometry.frame(in: .global)])
                            })
                        } else {
                            HStack {
                                VStack{
                                    Text("問題数")
                                    Text("\(incorrectCount)")
                                        .font(.system(size: 24))
                                }
                                .foregroundColor(Color("fontGray"))
                                ProgressBar3(value: Double(incorrectCount), maxValue: Double(self.incorrectAnswerCount), color: Color("loading"))
                                    .frame(height: 20)
                            }
                            .padding()
                        }
                    }
                    Spacer()
                    ScrollView{
                        VStack{
                            
                            AnswerSelectionView(choices: currentQuiz.choices, correctAnswerIndex: hasAnswered ? currentQuiz.correctAnswerIndex : nil) { index in
                                answerSelectionAction(index: index)
                            }
                            
                            //            AnswerSelectionView(choices: currentQuiz.choices) { index in
                            //                                            answerSelectionAction(index: index)
                            //                                        }
                            .onAppear{
                                
                                showTutorial = true
                                //                print("AnswerSelectionView currentQuiz.choices:\(currentQuiz.choices)")
                            }
                            .frame(maxWidth: .infinity)
                            .shadow(radius: 1)
                            .background(GeometryReader { geometry in
                                Color.clear.preference(key: ViewPositionKey1.self, value: [geometry.frame(in: .global)])
                            })
                            Spacer()
                            
                            if showCompletionMessage {
                                    NavigationLink("", destination: QuizResultView(results: quizResults, authManager: authManager, isPresenting: $isPresenting, navigateToQuizResultView: $navigateToQuizResultView, playerExperience: playerExperience, playerMoney: playerMoney, elapsedTime: 0,quizLevel: quizLevel).navigationBarBackButtonHidden(true), isActive: $navigateToQuizResultView)
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity,maxHeight:.infinity)
                    .padding(.bottom)
                    
                    .sheet(isPresented: $showModal) {
                        ExperienceModalView(showModal: $showModal, addedExperience: 10, addedMoney: 10, authManager: authManager)
                    }
                }.background(showIncorrectBackground ? Color(.red).opacity(0.1) : Color(.white).opacity(0))
                    .onPreferenceChange(ViewPositionKey.self) { positions in
                        self.buttonRect = positions.first ?? .zero
                    }
                    .onPreferenceChange(ViewPositionKey1.self) { positions in
                        self.buttonRect1 = positions.first ?? .zero
                    }
                    .onPreferenceChange(ViewPositionKey2.self) { positions in
                        self.buttonRect2 = positions.first ?? .zero
                    }
                    .onPreferenceChange(ViewPositionKey3.self) { positions in
                        self.buttonRect3 = positions.first ?? .zero
                    }
                if showExplanationModal {
                    ZStack {
                        Color.black.opacity(0.7).edgesIgnoringSafeArea(.all)
                        if let selectedIndex = selectedAnswerIndex, selectedIndex < currentQuiz.choices.count {
                            ModalExplanationView(
                                isPresented: $showExplanationModal,
                                selectedAnswerIndex: $selectedAnswerIndex, showAlert: $showAlert, audioManager: audioManager , question: quizzes[currentQuizIndex].question, userAnswer: currentQuiz.choices[selectedIndex],
                                correctAnswer: quizzes[currentQuizIndex].choices[quizzes[currentQuizIndex].correctAnswerIndex],
                                explanation: quizzes[currentQuizIndex].explanation, currentQuizIndex: $currentQuizIndex,
                                userFlag: $userFlag, pauseTimer:pauseTimer, startTimer: startTimer
                            )
                        }else{
                            ModalReturnView(
                                isPresented: $showExplanationModal, pauseTimer:pauseTimer, startTimer: startTimer)
                        }
                    }
                }
                if showHomeModal {
                    ZStack {
                        Color.black.opacity(0.7)
                            .edgesIgnoringSafeArea(.all)
                        ModalView(isSoundOn: $isSoundOn, isPresented: $showHomeModal, isPresenting: $isPresenting, audioManager: audioManager, showHomeModal: $showHomeModal,tutorialNum: $tutorialNum,pauseTimer:pauseTimer,resumeTimer: resumeTimer, userFlag: $userFlag)
                    }
                }
                if showSubFlag {
                    ZStack {
                        Color.black.opacity(0.7)
                            .edgesIgnoringSafeArea(.all)
                        SubModalView(isSoundOn: $isSoundOn, isPresented: $showSubFlag, isPresenting: $isPresenting, audioManager: audioManager, showHomeModal: $showHomeModal,pauseTimer:pauseTimer,resumeTimer: resumeTimer, userFlag: $userFlag)
                    }
                }
                if tutorialNum == 4 && showTutorial == true {
                    GeometryReader { geometry in
                        Color.black.opacity(0.5)
                        // スポットライトの領域をカットアウ
                            .overlay(
                                RoundedRectangle(cornerRadius: 0, style: .continuous)
                                    .frame(width: buttonRect.width, height: buttonRect.height)
                                    .position(x: buttonRect.midX, y: buttonRect.midY)
                                    .blendMode(.destinationOut)
                            )
                            .ignoresSafeArea()
                            .compositingGroup()
                            .background(.clear)
                    }
                    VStack {
                        Spacer()
                            .frame(height: buttonRect.minY - bubbleHeight)
                        VStack(alignment: .trailing, spacing: .zero) {
                            Text("問題が出題されます。")
                                .font(.callout)
                                .padding(5)
                                .font(.system(size: 24.0))
                                .padding(.all, 16.0)
                                .background(Color("Color2"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 15)
                                )
                                .cornerRadius(20)
                                .padding(.horizontal, 16)
                                .foregroundColor(Color("fontGray"))
                                .shadow(radius: 10)
                        }
                        .background(GeometryReader { geometry in
                            Path { _ in
                                DispatchQueue.main.async {
                                    //                                        print(currentQuiz.question.count)
                                    if currentQuiz.question.count <= 19{
                                        self.bubbleHeight = geometry.size.height - 130
                                    }else if currentQuiz.question.count <= 38{
                                        self.bubbleHeight = geometry.size.height - 150
                                    }else{
                                        self.bubbleHeight = geometry.size.height - 170
                                    }
                                }
                            }
                        })
                        Spacer()
                    }
                    .ignoresSafeArea()
                    VStack{
                        Spacer()
                        HStack{
                            Button(action: {
                                tutorialNum = 0 // タップでチュートリアルを終了
                                authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
                                    // データベースのアップデートが成功したかどうかをハンドリング
                                }
                            }) {
                                Image("スキップ")
                                    .resizable()
                                    .frame(width:200,height:60)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                }
                if tutorialNum == 5 && showTutorial == true{
                    GeometryReader { geometry in
                        Color.black.opacity(0.5)
                            .ignoresSafeArea()
                        // スポットライトの領域をカットアウ
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .frame(width: buttonRect1.width, height: buttonRect1.height-20)
                                    .position(x: buttonRect1.midX, y: buttonRect1.midY+5)
                                    .blendMode(.destinationOut)
                            )
                            .ignoresSafeArea()
                            .compositingGroup()
                            .background(.clear)
                    }
                    VStack {
                        Spacer()
                            .frame(height: isSmallDevice() ? buttonRect.minY - bubbleHeight - 30 : buttonRect.minY - bubbleHeight + 30)
                        VStack(alignment: .trailing, spacing: .zero) {
                            Text("選択肢の中から正解と思うものをクリックしてください。")
                                .font(.callout)
                                .padding(5)
                                .font(.system(size: 24.0))
                                .padding(.all, 16.0)
                                .background(Color("Color2"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 15)
                                )
                                .cornerRadius(20)
                                .padding(.horizontal, 16)
                                .foregroundColor(Color("fontGray"))
                                .shadow(radius: 10)
                        }
                        .background(GeometryReader { geometry in
                            Path { _ in
                                DispatchQueue.main.async {
                                    if currentQuiz.question.count <= 19{
                                        self.bubbleHeight = geometry.size.height - 240
                                    }else if currentQuiz.question.count <= 38{
                                        self.bubbleHeight = geometry.size.height - 260
                                    }else{
                                        self.bubbleHeight = geometry.size.height - 290
                                    }
                                }
                            }
                        })
                        Spacer()
                    }
                    .ignoresSafeArea()
                    VStack{
                        HStack{
                            Button(action: {
                                tutorialNum = 0 // タップでチュートリアルを終了
                                authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
                                    // データベースのアップデートが成功したかどうかをハンドリング
                                }
                            }) {
                                Image("スキップ")
                                    .resizable()
                                    .frame(width:200,height:60)
                                    .padding(.top,20)
                            }
                            Spacer()
                        }
                        .padding(.leading)
                        Spacer()
                    }
                }
                if tutorialNum == 6 && showTutorial == true{
                    GeometryReader { geometry in
                        Color.black.opacity(0.5)
                        // スポットライトの領域をカットアウ
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .frame(width: buttonRect2.width, height: buttonRect2.height+10)
                                    .position(x: buttonRect2.midX, y: buttonRect2.midY)
                                    .blendMode(.destinationOut)
                            )
                            .ignoresSafeArea()
                            .compositingGroup()
                            .background(.clear)
                    }
                    VStack {
                        Spacer()
                            .frame(height: isSmallDevice() ? buttonRect.minY + 20 : buttonRect.minY + 80)
                        VStack(alignment: .trailing, spacing: .zero) {
                            Text("正解すると相手モンスターにダメージ\n不正解だと自分がダメージを受けます\n相手のHPが０になれば次の相手に\n自分のHPが０になればゲームオーバーです")
                                .font(.callout)
                                .padding(5)
                                .font(.system(size: 24.0))
                                .padding(.all, 16.0)
                                .background(Color("Color2"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 15)
                                )
                                .cornerRadius(20)
                                .foregroundColor(Color("fontGray"))
                                .shadow(radius: 10)
                            //                        Image("下矢印")
                            //                            .resizable()
                            //                            .frame(width: 20, height: 20)
                            //                            .padding(.trailing, 236.0)
                        }  .background(GeometryReader { geometry in
                            Path { _ in
                                DispatchQueue.main.async {
                                    if currentQuiz.question.count <= 19{
                                        self.bubbleHeight = geometry.size.height - 150
                                    }else if currentQuiz.question.count <= 38{
                                        self.bubbleHeight = geometry.size.height - 180
                                    }else{
                                        self.bubbleHeight = geometry.size.height - 190
                                    }
                                }
                            }
                        })
                        Spacer()
                    }
                    .ignoresSafeArea()
                    VStack{
                        Spacer()
                        HStack{
                            Button(action: {
                                tutorialNum = 0 // タップでチュートリアルを終了
                                authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
                                    // データベースのアップデートが成功したかどうかをハンドリング
                                }
                            }) {
                                Image("スキップ")
                                    .resizable()
                                    .frame(width:200,height:60)
                                    .padding(.top,20)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                }
                if tutorialNum == 7 && showTutorial == true{
                    GeometryReader { geometry in
                        Color.black.opacity(0.5)
                        // スポットライトの領域をカットアウ
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .frame(width: buttonRect3.width, height: buttonRect3.height+20)
                                    .frame(
                                        width: currentQuiz.question.count <= 19 ? buttonRect3.width : buttonRect3.width,
                                        //                                        height: currentQuiz.question.count <= 19 ? buttonRect3.height + 20 : buttonRect3.height+20
                                        height: currentQuiz.question.count <= 19 ? buttonRect3.height + 20 :
                                            (currentQuiz.question.count <= 29 ? buttonRect3.height - 20 : buttonRect3.height + 40)
                                    )
                                    .position(x: buttonRect3.midX+8, y: buttonRect3.midY+1)
                                    .blendMode(.destinationOut)
                            )
                            .ignoresSafeArea()
                            .compositingGroup()
                            .background(.clear)
                    }
                    VStack {
                        Spacer()
                            .frame(height: buttonRect.minY - bubbleHeight - 30)
                        VStack(alignment: .trailing, spacing: .zero) {
                            Text("30秒経つと自分がダメージを受けることになります。")
                                .font(.callout)
                                .padding(5)
                                .font(.system(size: 24.0))
                                .padding(.all, 16.0)
                                .background(Color("Color2"))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 15)
                                )
                                .cornerRadius(20)
                                .padding(.horizontal, 16)
                                .foregroundColor(Color("fontGray"))
                                .shadow(radius: 10)
                        } .background(GeometryReader { geometry in
                            Path { _ in
                                DispatchQueue.main.async {
                                    self.bubbleHeight = geometry.size.height - 130
                                }
                            }
                        })
                        Spacer()
                    }
                    .ignoresSafeArea()
                    VStack{
                        Spacer()
                        HStack{
                            Button(action: {
                                tutorialNum = 0 // タップでチュートリアルを終了
                                authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
                                    // データベースのアップデートが成功したかどうかをハンドリング
                                }
                            }) {
                                Image("スキップ")
                                    .resizable()
                                    .frame(width:200,height:60)
                                
                            }
                            Spacer()
                        }
                        .padding()
                    }
                }
                if showCountdown {
                    ZStack {
                        // 背景
                        Color.black.opacity(0.7)
                            .edgesIgnoringSafeArea(.all)
                        // カウントダウンの数字
                        Text("\(countdownValue)")
                            .font(.system(size: 100))
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            .fontWeight(.bold)
            .onTapGesture {
                //                audioManager.playSound()
                if showCountdown == false {
                    if tutorialNum == 4 {
                        tutorialNum = 5
                        authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 5) { success in
                        }
                    } else if tutorialNum == 5 {
                        tutorialNum = 6
                        authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 6) { success in
                        }
                    } else if tutorialNum == 6 {
                        tutorialNum = 7
                        authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 7) { success in
                        }
                    } else if tutorialNum == 7 {
                        resumeTimer()
                        tutorialNum = 0
                        authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
                        }
                    }
                }
            }
            .onAppear {
                print("authManager.currentUserId:   \(authManager.currentUserId)")
                startCountdown()
                self.monsterType = 1 // すぐに1に戻す
                authManager.fetchUserInfo { (name, avatar, money, hp, attack, tutorialNum) in
                    self.userName = name ?? ""
                    self.avator = avatar ?? [[String: Any]]()
                    print("avator:\(avator)")
                    self.userMoney = money ?? 0
                    self.userHp = hp ?? 100
                    self.userAttack = attack ?? 20
                    self.tutorialNum = tutorialNum ?? 0
                    if let additionalAttack = self.avator.first?["attack"] as? Int {
                        self.userAttack = self.userAttack + additionalAttack
                    }
                    if let additionalHealth = self.avator.first?["health"] as? Int {
                        self.userMaxHp = self.userHp + additionalHealth
                    }
                    if let additionalHealth = self.avator.first?["health"] as? Int {
                        self.playerHP = self.userHp + additionalHealth
                    } else {
                        self.playerHP = self.userHp
                    }
                    if self.tutorialNum == 0 {
                        //                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        startTimer() // Viewが表示されたときにタイマーを開始
                        //                        }
                    }
                    if self.tutorialNum == 2 {
                        authManager.updateTutorialNum(userId: authManager.currentUserId ?? "", tutorialNum: 0) { success in
                            // データベースのアップデートが成功したかどうかをハンドリング
                        }
                    }
                }
                self.startTime = Date()
                authManager.fetchUserRewardFlag()
                
                if quizLevel == .incorrectTangoAnswer{
                    fetchNumberOfIncorrectTangoAnswers(userId: authManager.currentUserId!) { count in
                        self.incorrectAnswerCount = count
                        incorrectCount = count
                    }
                    if quizLevel == .incorrectTangoAnswer {
                        userAttack = 0
                    }
                }else if quizLevel == .incorrectJukugoAnswer {
                    fetchNumberOfIncorrectJukugoAnswers(userId: authManager.currentUserId!) { count in
                        self.incorrectAnswerCount = count
                        incorrectCount = count
                    }
                    if quizLevel == .incorrectJukugoAnswer {
                        userAttack = 0
                    }
                }else if quizLevel == .incorrectBunpouAnswer {
                    fetchNumberOfIncorrectBunpouAnswers(userId: authManager.currentUserId!) { count in
                        self.incorrectAnswerCount = count
                        incorrectCount = count
                    }
                    if quizLevel == .incorrectBunpouAnswer {
                        userAttack = 0
                    }
                }
                
                //                fetchNumberOfIncorrectAnswers(userId: authManager.currentUserId!) { count in
                //                self.incorrectAnswerCount = count
                //                incorrectCount = count
                //                }
//                if quizLevel == .incorrectAnswer {
//                    userAttack = 0
//                }
                authManager.fetchPreFlag()
                authManager.fetchUserFlag()
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    userFlag = authManager.userFlag
                    userPreFlag = authManager.userPreFlag
                }            }
            .onDisappear {
                // QuizViewが閉じるときの時刻を記録する
                // ただし、playerExperienceとplayerMoneyが5以外の時だけ
                // ここで条件を確認してください
                if playerExperience != 5 && playerMoney != 5 {
                    self.endTime = Date()
                    self.elapsedTime = self.endTime?.timeIntervalSince(self.startTime)
                    // QuizResultViewへの遷移フラグを設定
                    self.navigateToQuizResult = true
                    // ここで経過時間を表示または保存する
                    //                    print("経過時間: \(self.elapsedTime!) 秒")
                    //                    authManager.saveElapsedTime(category: quizLevel.description, elapsedTime: elapsedTime!) { success in
                    //                        if success {
                    //                            print("経過時間を保存しました。")
                    //                        } else {
                    //                            print("経過時間の保存に失敗しました。")
                    //                        }
                    //                    }
                }
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("通知"),
                    message: Text("設定画面で切り替える事ができます"),
                    dismissButton: .default(Text("OK"), action: {
                        //                        isPresented = false
                        startTimer()
                        selectedAnswerIndex = nil
                    })
                )
            }
            .onChange(of: userFlag) { flag in
                //                          print("onchange userFlag:\(userFlag)")
                //                userFlag = authManager.userFlag
            }
            .onChange(of: selectedAnswerIndex) { newValue in
                if let selected = newValue, selected != currentQuiz.correctAnswerIndex {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.showIncorrectBackground = true
                    }
                } else {
                    self.showIncorrectBackground = false
                }
            }
            .onChange(of: showCompletionMessage) { newValue in
                // 味方のHPが０以下のとき
                if newValue && playerHP <= 0 {
                    DispatchQueue.global(qos: .background).async {
                        authManager.addExperience(points: 5, onSuccess: {
                            // 成功した時の処理をここに書きます
                        }, onFailure: { error in
                            // 失敗した時の処理をここに書きます。`error`は失敗の原因を示す情報が含まれている可能性があります。
                        })
                        authManager.addMoney(amount: 5)
                        
                        DispatchQueue.main.async {
                        }
                    }
                } else {
                    DispatchQueue.global(qos: .background).async {
                        authManager.addExperience(points: playerExperience * authManager.rewardFlag, onSuccess: {
                            //                            print("addExperience \(authManager.rewardFlag)")
                        }, onFailure: { error in
                            // 失敗した時の処理をここに書きます。`error`は失敗の原因を示す情報が含まれている可能性があります。
                        })
                        authManager.addMoney(amount: playerMoney * authManager.rewardFlag)
                        DispatchQueue.main.async {
                            // ここでUIの更新を行います。
                        }
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    showModal = false
                    navigateToQuizResultView = true
                }
            }
            .onChange(of: monsterType) { newMonsterType in
                switch quizLevel {
                case .Tango3:
                    monsterBackground = "Tango3"
                    playerExperience = 20
                    playerMoney = 10
                    // print(playerExperience)
                    if playerHP <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 10
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 15
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 20
                    default:
                        monsterHP = 30
                    }
                case .TangoJun2:
                    monsterBackground = "TangoJun2"
                    playerExperience = 30
                    playerMoney = 20
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 15
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    default:
                        monsterHP = 50
                    }
                case .Tango2:
                    monsterBackground = "Tango2"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 2:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    case 3:
                        monsterHP = 200
                        monsterUnderHP = 200
                        monsterAttack = 30
                    default:
                        monsterHP = 80
                    }
                case .TangoJun1:
                    monsterBackground = "TangoJun1"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 2:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    case 3:
                        monsterHP = 200
                        monsterUnderHP = 200
                        monsterAttack = 30
                    default:
                        monsterHP = 80
                    }
                case .Tango1:
                    monsterBackground = "Tango1"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 15
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    default:
                        monsterHP = 50
                    }
                case .ToeicTangoBeginner:
                    monsterBackground = "ToeicTangoBeginner"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 15
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    default:
                        monsterHP = 50
                    }
               
                case .ToeicTangoIntermediate:
                    monsterBackground = "ToeicTangoIntermediate"
                    playerExperience = 200
                    playerMoney = 200
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 50
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 50
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 50
                    default:
                        monsterHP = 1000
                    }
                    
                case .ToeicTangoAdvanced:
                    monsterBackground = "ToeicTangoAdvanced"
                    playerExperience = 200
                    playerMoney = 200
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 500
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 1000
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 1500
                    default:
                        monsterHP = 1000
                    }
                case .Jukugo3:
                    monsterBackground = "Jukugo3"
                    playerExperience = 20
                    playerMoney = 10
                    // print(playerExperience)
                    if playerHP <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 10
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 15
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 20
                    default:
                        monsterHP = 30
                    }
                case .JukugoJun2:
                    monsterBackground = "JukugoJun2"
                    playerExperience = 30
                    playerMoney = 20
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 15
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    default:
                        monsterHP = 50
                    }
                case .Jukugo2:
                    monsterBackground = "Jukugo2"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 2:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    case 3:
                        monsterHP = 200
                        monsterUnderHP = 200
                        monsterAttack = 30
                    default:
                        monsterHP = 80
                    }
                case .JukugoJun1:
                    monsterBackground = "JukugoJun1"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 2:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    case 3:
                        monsterHP = 200
                        monsterUnderHP = 200
                        monsterAttack = 30
                    default:
                        monsterHP = 80
                    }
                case .ToeicJukugoBeginner:
                    monsterBackground = "ToeicJukugoBeginner"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 15
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    default:
                        monsterHP = 50
                    }
                case .ToeicTangoBeginner:
                    monsterBackground = "ToeicTangoBeginner"
                    playerExperience = 40
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 15
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 20
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 25
                    default:
                        monsterHP = 50
                    }
               
                case .ToeicJukugoIntermediate:
                    monsterBackground = "ToeicJukugoIntermediate"
                    playerExperience = 200
                    playerMoney = 200
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 50
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 50
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 50
                    default:
                        monsterHP = 1000
                    }
                    
                case .ToeicJukugoAdvanced:
                    monsterBackground = "ToeicJukugoAdvanced"
                    playerExperience = 200
                    playerMoney = 200
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 80
                        monsterUnderHP = 80
                        monsterAttack = 500
                    case 2:
                        monsterHP = 120
                        monsterUnderHP = 120
                        monsterAttack = 1000
                    case 3:
                        monsterHP = 160
                        monsterUnderHP = 160
                        monsterAttack = 1500
                    default:
                        monsterHP = 1000
                    }
                case .BunpouBeginner:
                    monsterBackground = "BunpouBeginner"
                    playerExperience = 30
                    playerMoney = 30
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 40
                        monsterUnderHP = 40
                        monsterAttack = 40
                    case 2:
                        monsterHP = 50
                        monsterUnderHP = 50
                        monsterAttack = 50
                    case 3:
                        monsterHP = 60
                        monsterUnderHP = 60
                        monsterAttack = 60
                    default:
                        monsterHP = 1000
                    }
                case .BunpouIntermediate:
                    monsterBackground = "BunpouIntermediate"
                    playerExperience = 40
                    playerMoney = 40
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 50
                        monsterUnderHP = 50
                        monsterAttack = 50
                    case 2:
                        monsterHP = 60
                        monsterUnderHP = 60
                        monsterAttack = 60
                    case 3:
                        monsterHP = 70
                        monsterUnderHP = 70
                        monsterAttack = 70
                    default:
                        monsterHP = 1000
                    }
                case .BunpouAdvanced:
                    monsterBackground = "BunpouAdvanced"
                    playerExperience = 40
                    playerMoney = 40
                    if userHp <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 50
                        monsterUnderHP = 50
                        monsterAttack = 50
                    case 2:
                        monsterHP = 60
                        monsterUnderHP = 60
                        monsterAttack = 60
                    case 3:
                        monsterHP = 70
                        monsterUnderHP = 70
                        monsterAttack = 70
                    default:
                        monsterHP = 1000
                    }
                case .incorrectTangoAnswer,.incorrectJukugoAnswer,.incorrectBunpouAnswer:
                    monsterBackground = "incorrectTangoAnswer"
                    playerExperience = 0
                    playerMoney = 0
                    if playerHP <= 0 {
                        playerExperience = 5
                        playerMoney = 5
                    }
                    switch newMonsterType {
                    case 1:
                        monsterHP = 10
                        monsterUnderHP = 10
                        monsterAttack = 0
                    case 2:
                        monsterHP = 10
                        monsterUnderHP = 10
                        monsterAttack = 0
                    case 3:
                        monsterHP = 10
                        monsterUnderHP = 10
                        monsterAttack = 0
                    default:
                        monsterHP = 10
                    }
               
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizTango3List(isPresenting: .constant(false))
//        QuizIncorrectAnswerListView(isPresenting: .constant(false))
    }
}
