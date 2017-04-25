//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

open class SQLSyntaxColumnModifierBuilder {

	public func buildAllowedNull(allowedNull: Bool) -> AllowedNullColumnModifier {
		return AllowedNullColumnModifier(allowedNull: allowedNull)
	}

	public func buildDefaultValue(defaultValue: Any) -> DefaultValueColumnModifier {
		return DefaultValueColumnModifier(defaultValue: defaultValue)
	}

	public func buildLimit(limit: Int) -> LimitColumnModifier {
		return LimitColumnModifier(limit: limit)
	}

	public func buildPrecision(precision: Int) -> PrecisionColumnModifier {
		return PrecisionColumnModifier(precision: precision)
	}

	public func buildScale(scale: Int) -> ScaleColumnModifier {
		return ScaleColumnModifier(scale: scale)
	}

}
