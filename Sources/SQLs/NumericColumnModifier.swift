//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

public typealias NumericOptions = [NumericColumnModifier]

public class NumericColumnModifier {

	public var modifier: ColumnModifier

	public init(modifier: ColumnModifier) {
		self.modifier = modifier
	}

	private static func builder() -> SQLSyntaxColumnModifierBuilder {
		return SQLSyntaxConfiguration.configuration.columnModifierBuilder()
	}

	static func allowedNull(_ allowedNull: Bool) -> NumericColumnModifier {
		return NumericColumnModifier(
			modifier: builder().buildAllowedNull(allowedNull: allowedNull))
	}

	static func defaultValue(_ defaultValue: Any) -> NumericColumnModifier {
		return NumericColumnModifier(
			modifier: builder().buildDefaultValue(defaultValue: defaultValue))
	}

	static func precision(_ precision: Int) -> NumericColumnModifier {
		return NumericColumnModifier(
			modifier: builder().buildPrecision(precision: precision)
		)
	}

	static func scale(_ scale: Int) -> NumericColumnModifier {
		return NumericColumnModifier(
			modifier: builder().buildScale(scale: scale)
		)
	}
}

extension NumericColumnModifier: CustomColumnModifierConvertible { }
