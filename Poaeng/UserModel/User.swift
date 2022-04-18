//
//  User.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/07.
//

import Foundation

struct User:Identifiable{
    var id:Int // 고유 식별용 (의미없음)
    var name:String // 이름
    var company:String // 회사명
    var workingYear:Int // n년차
    var hashTag:[String] // #iOS #마케팅 등 각각이 문자열 배열로 구성되어 있음
    var mentoringStatus:Bool // false : 상담 예정,  true: 상담 완료
    var isReadyForMentoring: Bool
    var job:String
    var mentor:Bool
    init(id:Int, name:String, company:String, workingYear:Int, hashTag:[String], mentoringStatus:Bool, isReadyForMentoring:Bool, job:String, mentor:Bool){
        self.id = id
        self.name = name
        self.company = company
        self.workingYear = workingYear
        self.hashTag = hashTag
        self.mentoringStatus = mentoringStatus
        self.isReadyForMentoring = isReadyForMentoring
        self.job = job
        self.mentor = mentor
    }
    
    func changeMentoringStatus() -> Bool{
        return true
    }
}
