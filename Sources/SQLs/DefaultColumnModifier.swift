//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

public class DefaultColumnModifier {

	public var modifier: ColumnModifier

	init(modifier: ColumnModifier) {
		self.modifier = modifier
	}

	private static func builder() ->  SQLSyntaxColumnModifierBuilder {
		return SQLSyntaxConfiguration.configuration.columnModifierBuilder()
	}

	static func allowedNull(_ allowedNull: Bool) -> DefaultColumnModifier {
		return DefaultColumnModifier(
			modifier: builder().buildAllowedNull(allowedNull: allowedNull))
	}

	static func defaultValue(_ defaultValue: Any) -> DefaultColumnModifier {
		return DefaultColumnModifier(
			modifier: builder().buildDefaultValue(defaultValue: defaultValue))
	}

}

extension DefaultColumnModifier: CustomColumnModifierConvertible { }