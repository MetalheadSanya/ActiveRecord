//
// Created by Alexander Zalutskiy on 12.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

open class SQLSyntaxConfiguration {

	public static var configuration = SQLSyntaxConfiguration()

	open func table() -> SQLSyntaxTable {
		return SQLSyntaxTable()
	}

	open func column() -> SQLSyntaxColumn {
		return SQLSyntaxColumn()
	}

	open func columnType() -> SQLSyntaxColumnType {
		return SQLSyntaxColumnType()
	}

	open func columnModifierBuilder() -> SQLSyntaxColumnModifierBuilder {
		return SQLSyntaxColumnModifierBuilder()
	}

	open func index() -> SQLSyntaxIndex {
		return SQLSyntaxIndex()
	}

}
