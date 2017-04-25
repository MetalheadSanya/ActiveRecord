//
// Created by Alexander Zalutskiy on 19.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

import SQLs

class ChangeTable {

	let table: Table

	init(table: Table) {
		self.table = table
	}

}

extension ChangeTable: MigrationChange {

	var syntax: SQLSyntaxTable {
		return SQLSyntaxConfiguration.configuration.table()
	}

	func up() -> [String] {
		return []
	}

	func down() -> [String] {
		return []
	}

}
