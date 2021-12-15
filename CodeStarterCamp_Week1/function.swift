//
//  function.swift
//  CodeStarterCamp_Week1
//
//  Created by 이종진 on 2021/12/13.
//

import Foundation

//길이에 따른 막대를 그리는 함수
func stackBar(barlength: Int) {
  for _ in 1...barlength {
    print("\(tab.rawValue)\(bar.rawValue)")
  }
}
//길이에 따른 몸통을 그리는 함수
func stackBody(bodylength: Int, topping: String, body: String) {
  for _ in 1...bodylength / 2 {
    stackTopping(length: bodylength, body: body, topping: topping)
  }
}
//몸통, 토핑을 매개변수로 받아 토핑과 몸통을 그리는 함수
func stackTopping(length: Int, body: String, topping: String) {
  if topping == "#" && body == "***" {
    print("\(hash.rawValue)\(basic.rawValue)")
    print("\(tab.rawValue)\(basic.rawValue)\(hash.rawValue)")
  }
  if topping == "&" && body == "***" {
    print("\(ampersand.rawValue)\(basic.rawValue)")
    print("\(tab.rawValue)\(basic.rawValue)\(ampersand.rawValue)")
  }
  if topping == " " && body == "***" {
    print("\(tab.rawValue)\(basic.rawValue)")
    print("\(tab.rawValue)\(basic.rawValue)")
  }
  if topping == " " && body == "|0|" {
    print("\(tab.rawValue)\(bar.rawValue)")
    print("\(tab.rawValue)\(nude.rawValue)")
  }
}

func peperoInfo(body: String, topping: String, bodyLength: Int, barLength: Int) {
  print("<정보>")
  print("길이: \(bodyLength)")
  print("몸통: \(body)")
  print("토핑: \(topping)")
  print("막대길이: \(barLength)")
}

func makePepero(body: String, topping: String, bodyLength: Int, barLength: Int) {
  peperoInfo(body: body, topping: topping, bodyLength: bodyLength, barLength: barLength)
  stackBody(bodylength: bodyLength, topping: topping, body: body)
  stackBar(barlength: barLength)
}






