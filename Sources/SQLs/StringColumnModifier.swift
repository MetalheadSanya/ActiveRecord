//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

public typealias StringOptions = [StringColumnModifier]

open class StringColumnModifier {

	public var modifier: ColumnModifier

	public init(modifier: ColumnModifier) {
		self.modifier = modifier
	}

	private static func builder() ->  SQLSyntaxColumnModifierBuilder {
		return SQLSyntaxConfiguration.configuration.columnModifierBuilder()
	}

	static func allowedNull(_ allowedNull: Bool) -> StringColumnModifier {
		return StringColumnModifier(
			modifier: builder().buildAllowedNull(allowedNull: allowedNull))
	}

	static func defaultValue(_ defaultValue: Any) -> StringColumnModifier {
		return StringColumnModifier(
			modifier: builder().buildDefaultValue(defaultValue: defaultValue))
	}

	static func limitNumberOfCharacters(_ numberOfCharacters: Int) -> StringColumnModifier {
		return StringColumnModifier(
			modifier: builder().buildLimit(limit: numberOfCharacters))
	}

}

extension StringColumnModifier: CustomColumnModifierConvertible { }
