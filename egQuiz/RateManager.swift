//
//  RateManager.swift
//  it
//
//  Created by hashimo ryoya on 2023/11/30.
//

import Firebase

struct QuizData {
    var answer: Int
    var correct: Int
    var correctRate: CGFloat {
        return answer > 0 ? CGFloat(correct) / CGFloat(answer) : 0
    }
    var correctPerRate: CGFloat {
        return answer > 0 ? CGFloat(correct) / CGFloat(answer) * 100 : 0
    }
}

class RateManager {
    static let shared = RateManager()

    private let db = Database.database().reference()

    func updateQuizData(userId: String, quizType: QuizLevel, newCorrectAnswers: Int, newTotalAnswers: Int) {
        let ratesRef = db.child("rates").child(userId).child(quizType.description)

        ratesRef.observeSingleEvent(of: .value, with: { snapshot in
            var correctAnswers = newCorrectAnswers
            var totalAnswers = newTotalAnswers

            // 既存のデータがある場合は、新しい値を加算する
            if let value = snapshot.value as? [String: Any],
               let currentCorrect = value["correct"] as? Int,
               let currentTotal = value["answer"] as? Int {
                correctAnswers += currentCorrect
                totalAnswers += currentTotal
            }

            // データベースを更新
            let updatedValues = ["correct": correctAnswers, "answer": totalAnswers]
            ratesRef.setValue(updatedValues) { error, _ in
                if let error = error {
                    print("Error updating quiz data: \(error.localizedDescription)")
                } else {
                    print("Quiz data updated successfully.")
                }
            }
        })
    }
    
    func updateAnswerData(userId: String, quizType: QuizLevel, newTotalAnswers: Int) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let currentDate = dateFormatter.string(from: Date())

        // 各日付ごとに別々のレコードを作成するための参照
        let dateRef = db.child("answers").child(userId).child(quizType.description).child(currentDate)

        dateRef.observeSingleEvent(of: .value, with: { snapshot in
            var totalAnswers = newTotalAnswers

            // その日付で既にデータがある場合は、新しい値を加算する
            if let currentTotal = snapshot.value as? Int {
                totalAnswers += currentTotal
            }

            // データベースを更新
            dateRef.setValue(totalAnswers) { error, _ in
                if let error = error {
                    print("Error updating quiz data: \(error.localizedDescription)")
                } else {
                    print("Quiz data updated successfully.")
                }
            }
        })
    }
    
//    func updateAnswerBossData(userId: String, quizType: QuizBossLevel, newTotalAnswers: Int) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd"
//        let currentDate = dateFormatter.string(from: Date())
////        let currentDate = "2023-12-08"
//
//        // 各日付ごとに別々のレコードを作成するための参照
//        let dateRef = db.child("answers").child(userId).child(quizType.description).child(currentDate)
//
//        dateRef.observeSingleEvent(of: .value, with: { snapshot in
//            var totalAnswers = newTotalAnswers
//
//            // その日付で既にデータがある場合は、新しい値を加算する
//            if let currentTotal = snapshot.value as? Int {
//                totalAnswers += currentTotal
//            }
//
//            // データベースを更新
//            dateRef.setValue(totalAnswers) { error, _ in
//                if let error = error {
//                    print("Error updating quiz data: \(error.localizedDescription)")
//                } else {
//                    print("Quiz data updated successfully.")
//                }
//            }
//        })
//    }
    
    func fetchQuizData(userId: String, completion: @escaping ([QuizLevel: QuizData]) -> Void) {
            let ratesRef = db.child("rates").child(userId)

            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
                var quizData = [QuizLevel: QuizData]()

                for level in QuizLevel.allCases {
                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
                       let correct = levelData["correct"],
                       let answer = levelData["answer"] {
                        quizData[level] = QuizData(answer: answer, correct: correct)
                    }
                }

                completion(quizData)
            })
        }
    
    func fetchTangoQuizData(userId: String, completion: @escaping ([QuizTangoLevel: QuizData]) -> Void) {
            let ratesRef = db.child("rates").child(userId)

            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
                var quizData = [QuizTangoLevel: QuizData]()
print("snapshot:\(snapshot)")
                print("QuizITLevel.allCases:\(QuizITLevel.allCases)")
                for level in QuizTangoLevel.allCases {
                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
                       let correct = levelData["correct"],
                       let answer = levelData["answer"] {
//                        print("test:\(levelData)")
                        quizData[level] = QuizData(answer: answer, correct: correct)
                        print("quizData1:\(quizData)")
                    }
                }

                completion(quizData)
            })
        }
    
    func fetchJukugoQuizData(userId: String, completion: @escaping ([QuizJukugoLevel: QuizData]) -> Void) {
            let ratesRef = db.child("rates").child(userId)

            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
                var quizData = [QuizJukugoLevel: QuizData]()

                for level in QuizJukugoLevel.allCases {
                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
                       let correct = levelData["correct"],
                       let answer = levelData["answer"] {
                        quizData[level] = QuizData(answer: answer, correct: correct)
                    }
                }

                completion(quizData)
            })
        }
    
    func fetchBunpouQuizData(userId: String, completion: @escaping ([QuizBunpouLevel: QuizData]) -> Void) {
            let ratesRef = db.child("rates").child(userId)

            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
                var quizData = [QuizBunpouLevel: QuizData]()

                for level in QuizBunpouLevel.allCases {
                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
                       let correct = levelData["correct"],
                       let answer = levelData["answer"] {
                        quizData[level] = QuizData(answer: answer, correct: correct)
                    }
                }

                completion(quizData)
            })
        }
    
    func fetchITQuizData(userId: String, completion: @escaping ([QuizITLevel: QuizData]) -> Void) {
            let ratesRef = db.child("rates").child(userId)

            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
                var quizData = [QuizITLevel: QuizData]()
print("snapshot:\(snapshot)")
                print("QuizITLevel.allCases:\(QuizITLevel.allCases)")
                for level in QuizITLevel.allCases {
                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
                       let correct = levelData["correct"],
                       let answer = levelData["answer"] {
//                        print("test:\(levelData)")
                        quizData[level] = QuizData(answer: answer, correct: correct)
                        print("quizData1:\(quizData)")
                    }
                }

                completion(quizData)
            })
        }
    
//    func fetchInfoQuizData(userId: String, completion: @escaping ([QuizInfoLevel: QuizData]) -> Void) {
//            let ratesRef = db.child("rates").child(userId)
//
//            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
//                var quizData = [QuizInfoLevel: QuizData]()
//
//                for level in QuizInfoLevel.allCases {
//                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
//                       let correct = levelData["correct"],
//                       let answer = levelData["answer"] {
//                        quizData[level] = QuizData(answer: answer, correct: correct)
//                    }
//                }
//
//                completion(quizData)
//            })
//        }
//    
//    func fetchAppliedQuizData(userId: String, completion: @escaping ([QuizAppliedLevel: QuizData]) -> Void) {
//            let ratesRef = db.child("rates").child(userId)
//
//            ratesRef.observeSingleEvent(of: .value, with: { snapshot in
//                var quizData = [QuizAppliedLevel: QuizData]()
//
//                for level in QuizAppliedLevel.allCases {
//                    if let levelData = snapshot.childSnapshot(forPath: level.description).value as? [String: Int],
//                       let correct = levelData["correct"],
//                       let answer = levelData["answer"] {
//                        quizData[level] = QuizData(answer: answer, correct: correct)
//                    }
//                }
//
//                completion(quizData)
//            })
//        }
}

