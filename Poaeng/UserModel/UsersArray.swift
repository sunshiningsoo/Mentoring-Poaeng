//
//  UsersArray.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/07.
//

import Foundation

var jack = User(id: 1, name: "Jack", company: "apple", workingYear: 5, hashTag: ["#JAVA", "#AWS"], mentoringStatus: true)
var joon = User(id: 2, name: "Joon", company: "amazon", workingYear: 10, hashTag: ["#AWS", "#Github"], mentoringStatus: true)
var vivi = User(id: 3, name: "Vivi", company: "ohang", workingYear: 2, hashTag: ["#iOS", "#MVVM"], mentoringStatus: false)
var neal = User(id: 4, name: "Neal", company: "busan", workingYear: 1, hashTag: ["#busan", "#korea"], mentoringStatus: true)
var jakelee = User(id: 5, name: "Jiku", company: "kkk", workingYear: 2, hashTag: ["#iOS", "#MVVM"], mentoringStatus: false)
var pohang = User(id: 6, name: "pohang", company: "bussdf", workingYear: 8, hashTag: ["#busdfasdn", "#korea", "#ddd"], mentoringStatus: true)
var findgifn = User(id: 7, name: "findgifn", company: "asdfas", workingYear: 3, hashTag: ["#iOS", "#MVM"], mentoringStatus: false)
var comeon = User(id: 8, name: "comeon", company: "qqq", workingYear: 7, hashTag: ["#busan", "#korean", "#asf"], mentoringStatus: true)

var users:[User] = [jack, joon, vivi, neal, jakelee, pohang, findgifn, comeon]
