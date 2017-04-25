//
// Created by Alexander Zalutskiy on 18.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

import SQLs

class CreateTable {

	let table: Table

	init(table: Table) {
		self.table = table
	}

}

extension CreateTable: MigrationChange {

	var syntax: SQLSyntaxTable {
		return SQLSyntaxConfiguration.configuration.table()
	}

	func up() -> [String] {
		return [syntax.create(table: table)]
	}

	func down() -> [String] {
		return [syntax.drop(table: table)]
	}

}
