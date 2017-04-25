//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

public protocol CustomColumnModifierConvertible {

	var modifier: ColumnModifier { get }

}

public protocol ColumnModifier: class {

	var priority: Int { get }

	func apply(to sql: inout String)
}

extension ColumnModifier {

	var modifier: ColumnModifier {
		return self
	}

}

open class AllowedNullColumnModifier {

	public let allowedNull: Bool

	public init(allowedNull: Bool) {
		self.allowedNull = allowedNull
	}

}

extension AllowedNullColumnModifier: ColumnModifier {

	public var priority: Int {
		return 500
	}

	public func apply(to sql: inout String) {
		if !allowedNull {
			sql += " NOT NULL"
		}
	}

}

open class DefaultValueColumnModifier {

	public let defaultValue: Any

	public init(defaultValue: Any) {
		self.defaultValue = defaultValue
	}
}

extension DefaultValueColumnModifier: ColumnModifier {

	public var priority: Int {
		return 750
	}

	public func apply(to sql: inout String) {
		sql += " DEFAULT \'" + String(describing: defaultValue) + "\'"
	}
}

open class LimitColumnModifier {

	public let limit: Int

	public init(limit: Int) {
		self.limit = limit
	}
}

extension LimitColumnModifier: ColumnModifier {

	public var priority: Int {
		return 1000
	}

	public func apply(to sql: inout String) {
		sql += "(" + String(limit) + ")"
	}
}

open class PrecisionColumnModifier {

	public let precision: Int

	init(precision: Int) {
		self.precision = precision
	}
}

extension PrecisionColumnModifier: ColumnModifier {

	public var priority: Int {
		return Int.max
	}

	public func apply(to sql: inout String) {
	}
}

open class ScaleColumnModifier {

	public let scale: Int

	init(scale: Int) {
		self.scale = scale
	}
}

extension ScaleColumnModifier: ColumnModifier {

	public var priority: Int {
		return Int.max
	}

	public func apply(to sql: inout String) {
	}

}
