//
// Created by Alexander Zalutskiy on 19.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

import SQLs


class AddColumnToTable {

	let table: Table
	let column: Column

	init(table: Table, column: Column) {
		self.table = table
		self.column = column
	}

}

extension AddColumnToTable: MigrationChange {

	var syntax: SQLSyntaxTable {
		return SQLSyntaxConfiguration.configuration.table()
	}

	func up() -> [String] {
		return [syntax.addColumn(column, to: table)]
	}

	func down() -> [String] {
		return []
	}

}
