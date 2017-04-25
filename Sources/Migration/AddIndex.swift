//
// Created by Alexander Zalutskiy on 18.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

import SQLs

class AddIndex {

	let table: Table
	let column: Column

	init(table: Table, column: Column) {
		self.table = table
		self.column = column
	}
}

extension AddIndex: MigrationChange {

	var syntax: SQLSyntaxIndex {
		return SQLSyntaxConfiguration.configuration.index()
	}

	func up() -> [String] {
		return [syntax.addIndexTo(table: table, column: column)]
	}

	func down() -> [String] {
		return [syntax.dropIndex(table: table, column: column)]
	}
}
