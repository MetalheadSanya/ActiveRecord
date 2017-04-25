//
// Created by Alexander Zalutskiy on 11.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

open class SQLSyntaxColumnType {
	
	public init() { }

	open func primaryKey() -> String {
		return "primaryKey"
	}

	open func string() -> String {
		return "string"
	}

	open func text() -> String {
		return "text"
	}

	open func datetime() -> String {
		return "datetime"
	}

	open func integer() -> String {
		return "integer"
	}

	open func bigint() -> String {
		return "bigint"
	}

	open func float() -> String {
		return "float"
	}

	open func decimal() -> String {
		return "decimal"
	}

	open func time() -> String {
		return "time"
	}

	open func date() -> String {
		return "date"
	}

	open func binary() -> String {
		return "binary"
	}

	open func boolean() -> String {
		return "boolean"
	}

	internal func sqlType(for columnType: ColumnType) -> String {
		switch columnType {
		case .primaryKey: return primaryKey()
		case .string:     return string()
		case .text:       return text()
		case .datetime:   return datetime()
		case .integer:    return integer()
		case .bigint:     return bigint()
		case .float:      return float()
		case .decimal:    return decimal()
		case .time:       return time()
		case .date:       return date()
		case .binary:     return binary()
		case .boolean:    return boolean()
		}
	}
}
