//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

public typealias BinaryOptions = [BinaryColumnModifier]

public class BinaryColumnModifier {

	public var modifier: ColumnModifier

	public init(modifier: ColumnModifier) {
		self.modifier = modifier
	}

	private static func builder() -> SQLSyntaxColumnModifierBuilder {
		return SQLSyntaxConfiguration.configuration.columnModifierBuilder()
	}

	static func allowedNull(_ allowedNull: Bool) -> BinaryColumnModifier {
		return BinaryColumnModifier(
			modifier: builder().buildAllowedNull(allowedNull: allowedNull))
	}

	static func defaultValue(_ defaultValue: Any) -> BinaryColumnModifier {
		return BinaryColumnModifier(
			modifier: builder().buildDefaultValue(defaultValue: defaultValue))
	}

	static func limitNumberOfBytes(_ numberOfBytes: Int) -> BinaryColumnModifier {
		return BinaryColumnModifier(
			modifier: builder().buildLimit(limit: numberOfBytes))
	}

}

extension BinaryColumnModifier: CustomColumnModifierConvertible { }
