//
//  QuizToeicTangoAdvancedList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizToeicTangoAdvancedList: View {
    @Binding var isPresenting: Bool
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？あああああああああああああああああああ",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
//        ),
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？あああああああああああああああああああ",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
//        )
//        ]
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ネットワークのアドレスで、インターネット上のコンピュータやネットワークを一意に識別するための番号は？",
//            choices: [
//                "MACアドレス",
//                "IPアドレス",
//                "URL",
//                "DNS"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "インターネット上のコンピュータやネットワークを一意に識別するための番号は「IPアドレス」といいます。"
//        )
//    ]
    let quizBeginnerList: [QuizQuestion] = [
        QuizQuestion(
          question: "首都，資本",
          choices: ["capital", "equity", "quotation", "stability"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "公平，普通株",
          choices: ["stitch", "equity", "consolidate", "glance"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "見積り，引用",
          choices: ["authority", "quotation", "pharmaceutical", "spruce"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "医薬品の",
          choices: ["monetary", "artificial", "pharmaceutical", "scientific"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "安定性",
          choices: ["stability", "overhead", "component", "deterioration"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "統合する，合併する",
          choices: ["anticipate", "consolidate", "founder", "illustrate"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "ひとめ見る",
          choices: ["stitch", "glance", "incur", "depart"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "ひと編み，縫い目",
          choices: ["frame", "stitch", "string", "batch"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "招く，負う",
          choices: [ "spruce", "incur","consent", "reimbursed"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "人工的な，作り物の",
          choices: [ "monetary","artificial", "statutory", "permanent"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "金融の，金銭の",
          choices: [ "artistic", "agricultural", "monetary","scientific"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "期待する",
          choices: ["justify", "depart","anticipate",  "supplement"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "同意する",
          choices: [ "depart", "devoted","consent", "likewise"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "科学の",
          choices: [ "artistic", "agricultural", "scientific","permanent"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "頑丈な",
          choices: ["enthusiastic", "artistic", "permanent","sturdy" ],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "周囲",
          choices: ["peninsula", "continent", "ridge","perimeter"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "半島",
          choices: [ "peninsula", "ridge", "perimeter","continent"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "熱狂的な",
          choices: [ "devoted", "artistic", "permanent","enthusiastic"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "離れて",
          choices: [ "depart", "along", "bureau","apart"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "事務局，たんす",
          choices: ["bureau", "apart", "department", "reimbursed"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "出発する",
          choices: ["depart", "arrive", "commute", "conduct"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "払い戻された",
          choices: ["reimbursed", "paid", "charged", "invoiced"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "給料",
          choices: ["paycheck", "salary", "wage", "income"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "献身的な",
          choices: ["devoted", "loyal", "faithful", "dedicated"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "永久の，常設の",
          choices: ["permanent", "temporary", "intermittent", "occasional"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "対面で",
          choices: ["online","in-person",  "remote", "virtual"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "芸術的な",
          choices: ["scientific", "artistic", "technical", "practical"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "ひも、糸",
          choices: ["cord", "string", "rope", "wire"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "四人組",
          choices: [ "group", "quartet","band", "team"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "進路、趣旨",
          choices: ["direction", "theme", "tenor", "purpose"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "ひとまとめ",
          choices: ["bundle", "group", "batch", "set"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "農業の",
          choices: ["industrial", "commercial", "agricultural","residential"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "続ける",
          choices: [ "proceed", "continue","carry-on", "maintain"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "尾根",
          choices: [ "hill", "mountain", "ridge","peak"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "補足",
          choices: ["addition", "complement", "extra","supplement"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "見通し，見込み",
          choices: ["supplement", "ridge", "batch","prospect"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "同様に",
          choices: ["apart", "justify", "enthusiastic","likewise"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "を正当化する",
          choices: ["justify", "anticipate", "commuter", "founder"],
          correctAnswerIndex: 0
        )

    ]
        
    @State private var shuffledQuizList: [QuizQuestion]
    private var authManager = AuthManager()
    private var audioManager = AudioManager.shared

    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _shuffledQuizList = State(initialValue: quizBeginnerList.shuffled())
    }
    @StateObject var sharedInterstitial = Interstitial()
    var body: some View {
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicTangoAdvanced, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicTangoAdvancedList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicTangoAdvancedList(isPresenting: .constant(false))
    }
}





