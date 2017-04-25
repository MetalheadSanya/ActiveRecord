//
// Created by Alexander Zalutskiy on 15.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

public protocol ColumnMethods {

	func column(_ name: String,
	            type: ColumnType,
	            options: ColumnOptions)

}

extension  ColumnMethods {

	func column(_ names: [String],
	            type: ColumnType,
	            options: ColumnOptions = []) {

		for name in names {
			column(name, type: type, options: options)
		}
	}

}

public extension ColumnMethods {

	public func string(_ name: String, options: StringOptions = []) {

		column(name, type: .string, options: options)
	}

	public func string(_ names: [String], options: StringOptions = []) {

		for name in names {
			string(name, options: options)
		}
	}

	public func text(_ name: String, options: BinaryOptions = []) {

		column(name, type: .text, options: options)
	}

	public func text(_ names: [String], options: BinaryOptions = []) {

		for name in names {
			text(name, options: options)
		}
	}

	public func datetime(_ name: String, options: DefaultOptions = []) {

		column(name, type: .datetime, options: options)
	}

	public func datetime(_ names: [String], options: DefaultOptions = []) {

		for name in names {
			datetime(name, options: options)
		}
	}

	public func integer(_ name: String, options: BinaryOptions = []) {

		column(name, type: .integer, options: options)
	}

	public func integer(_ names: [String], options: BinaryOptions = []) {

		for name in names {
			integer(name, options: options)
		}
	}

	public func bigint(_ name: String, options: DefaultOptions = []) {

		column(name, type: .bigint, options: options)
	}

	public func bigint(_ names: [String], options: DefaultOptions = []) {

		for name in names {
			bigint(name, options: options)
		}
	}

	public func float(_ name: String, options: DefaultOptions = []) {

		column(name, type: .float, options: options)
	}

	public func float(_ names: [String], options: DefaultOptions = []) {

		for name in names {
			float(name, options: options)
		}
	}

	public func decimal(_ name: String, options: NumericOptions = []) {

		column(name, type: .decimal, options: options)
	}

	public func decimal(_ names: [String], options: NumericOptions = []) {

		for name in names {
			decimal(name, options: options)
		}
	}

	public func numeric(_ name: String, options: NumericOptions = []) {

		decimal(name, options: options)
	}

	public func numeric(_ names: [String], options: NumericOptions = []) {

		decimal(names, options: options)
	}

	public func time(_ name: String, options: DefaultOptions = []) {

		column(name, type: .time, options: options)
	}

	public func time(_ names: [String], options: DefaultOptions = []) {

		for name in names {
			time(name, options: options)
		}
	}

	public func date(_ name: String, options: DefaultOptions = []) {

		column(name, type: .date, options: options)
	}

	public func date(_ names: [String], options: DefaultOptions = []) {

		for name in names {
			date(name, options: options)
		}
	}

	public func binary(_ name: String, options: BinaryOptions = []) {

		column(name, type: .binary, options: options)
	}

	public func binary(_ names: [String], options: BinaryOptions = []) {

		for name in names {
			binary(name, options: options)
		}
	}

	public func boolean(_ name: String, options: DefaultOptions = []) {

		column(name, type: .boolean, options: options)
	}

	public func boolean(_ names: [String], options: DefaultOptions = []) {

		for name in names {
			boolean(name, options: options)
		}
	}

	public func timestamp(options: DefaultOptions = [.allowedNull(false)]) {

		datetime("created_at", options: options)
		datetime("updated_at", options: options)
	}

}