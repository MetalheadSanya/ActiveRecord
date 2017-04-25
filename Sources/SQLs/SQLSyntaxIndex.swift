//
// Created by Alexander Zalutskiy on 18.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

open class SQLSyntaxIndex {

	public func addIndexTo(table: Table, column: Column,
	                       name: String? = nil) -> String {
		let indexName: String
		if let name = name {
			indexName = name
		}
		else {
			indexName = "index_" + table.name + "_on_" + column.name
		}

		let request = "CREATE INDEX "
		              + "\""
		              + indexName
		              + "\""
		              + " ON "
		              + "\""
		              + table.name
		              + "\""
		              + " "
		              + "("
		              + "\""
		              + column.name
		              + "\""
		              + ")"
		return request
	}

	public func dropIndex(table: Table, column: Column) -> String {
		let indexName = "index_" + table.name + "_on_" + column.name

		let request = "DROP INDEX "
		              + "\""
		              + indexName
		              + "\""
		return request
	}

}
