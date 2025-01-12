//
//  QuizBunpouBeginnerList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizBunpouBeginnerList: View {
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
            question: "_____ you _____ now?",
            choices: ["Are, studying", "Do, study", "Is, studying", "Are, study"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "_____ he _____ a picture now?",
            choices: ["Is, taking", "Are, taking", "Is, takes", "Does, take"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "_____ they _____ TV now?",
            choices: ["Are, watching", "Is, watching", "Do, watch", "Are, watch"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "_____ my brother _____ soccer now?",
            choices: [ "Are, playing", "Is, playing","Is, plays", "Does, play"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "_____ he _____ a pen now?",
            choices: [ "Are, using","Is, using", "Does, use", "Is, use"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "_____ she _____ a car now?",
            choices: ["Are, riding", "Is, riding", "Is, rides", "Does, ride"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "_____ your mother _____ now?",
            choices: ["Are, running", "Does, run", "Is, running", "Is, runs"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "_____ my father _____ now?",
            choices: [ "Are, swimming", "Is, swims", "Is, swimming","Does, swim"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "_____ your brother _____ to school now?",
            choices: [ "Are, going", "Is, goes", "Is, going","Does, go"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "_____ you _____ a book now?",
            choices: ["Is, reading", "Do, read", "Are, reading", "Are, reads"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "I _____ English now.",
            choices: ["am study", "study", "studies","am studying"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "You _____ baseball now.",
            choices: ["is playing", "play", "plays","are playing"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "My mother _____ now.",
            choices: [ "are running", "runs", "run","is running"],
            correctAnswerIndex:3
          ),
          QuizQuestion(
            question: "You _____ TV now.",
            choices: ["are watching", "is watching", "watch", "watches"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "My mother _____ dinner now.",
            choices: ["is cooking", "are cooking", "cook", "cooks"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ a book now.",
            choices: ["am reading", "is reading", "are reading", "read"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ a letter now.",
            choices: ["are writing", "is writing", "write", "writes"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "Mr. Ken _____ now.",
            choices: ["are swimming", "swim", "swims","is swimming"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "You _____ the window now.",
            choices: [ "is opening", "open", "opens","are opening"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "He _____ a car now.",
            choices: [ "are riding", "ride", "rides","is riding"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "He _____ English.",
            choices: [ "speak", "speaks","speaking", "is speaking"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "She _____ Ms Green.",
            choices: ["know", "knows", "knowing", "is knowing"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "Mr. Brown _____ in Tokyo.",
            choices: ["live", "living","lives",  "is living"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "Mr. John _____ the guitar everyday.",
            choices: [ "play", "playing", "plays","is playing"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "She _____ Japanese everyday.",
            choices: ["studies", "study", "studying", "is studying"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "Ms. White _____ math very well.",
            choices: ["teaches", "teach", "teaching", "is teaching"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "She _____ a bicycle.",
            choices: ["has", "have", "having", "is having"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "He _____ TV.",
            choices: ["watches", "watch", "watching", "is watching"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "He _____ the piano last week.",
            choices: [ "plays", "played","playing", "is playing"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "My mother _____ dinner yesterday.",
            choices: ["cooks", "cooked", "cooking", "is cooking"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "She _____ TV last night.",
            choices: [ "watches", "watching","watched", "is watching"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "He _____ Tokyo last night.",
            choices: [ "visits", "visiting", "visited","is visiting"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "They _____ to the park last week.",
            choices: ["goes", "going", "is going","went"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "I _____ English last night.",
            choices: [ "studies", "studying", "is studying","studied"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "We _____ baseball after school.",
            choices: ["play", "plays", "playing", "played"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ dinner every Saturday.",
            choices: ["cook", "cooks", "cooking", "cooked"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ the piano everyday.",
            choices: ["play", "plays", "playing", "played"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "We _____ English.",
            choices: ["study", "studies", "studying", "studied"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ Japanese very well.",
            choices: [ "speaks","speak", "speaking", "spoke"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "They _____ sports.",
            choices: ["loves", "love", "loving", "loved"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "I _____ that cat.",
            choices: ["knows", "know", "knowing", "knew"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "You _____ music.",
            choices: [ "likes", "liking", "like","liked"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "I _____ Ken.",
            choices: [ "knows", "knowing","know", "knew"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "I _____ TV.",
            choices: ["watches", "watching", "watched","watch" ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "You _____ a red pen.",
            choices: ["likes", "liking", "liked","like"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "I _____ fishing.",
            choices: ["like", "likes", "liking", "liked"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ a sister.",
            choices: ["have", "has", "having", "had"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ a desk.",
            choices: ["need", "needs", "needing", "needed"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ the guitar.",
            choices: ["play", "plays", "playing", "played"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "They _____ to school.",
            choices: ["go", "goes", "going", "went"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "They _____ a cup.",
            choices: ["has", "have", "having", "had"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "We _____ a letter.",
            choices: ["writes", "write", "writing", "wrote"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "I _____ dinner every Saturday.",
            choices: [ "cooks", "cooking", "cook","cooked"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "I _____ in the sea every Sunday.",
            choices: ["swims", "swimming", "swam","swim"],
            correctAnswerIndex: 3
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .BunpouBeginner, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizBunpouBeginnerList_Previews: PreviewProvider {
    static var previews: some View {
        QuizBunpouBeginnerList(isPresenting: .constant(false))
    }
}


