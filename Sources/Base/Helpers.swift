//
// Created by Alexander Zalutskiy on 29.03.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

infix operator ??= : AssignmentPrecedence

func ??=<T>(lhs: inout T?, rhs: T) {
	guard lhs == nil else { return }
	lhs = rhs
}