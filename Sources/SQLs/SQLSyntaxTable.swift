//
// Created by Alexander Zalutskiy on 18.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

open class SQLSyntaxTable {

	public func create(table: Table) -> String {
		var request = "CREATE TABLE "
		              + "\""
		              + table.name
		              + "\""
		if !table.columns.isEmpty {
			request += " ("
			request += table.columns.map({
				SQLSyntaxConfiguration.configuration.column().columnToSql($0)
			}).joined(separator: ", ")
			request += ")"
		}
		return request
	}

	public func drop(table: Table) -> String {
		let request = "DROP TABLE "
		              + "\""
		              + table.name
		              + "\""
		return request
	}

	// ALTER TABLE "products" ADD "count" integer
	public func addColumn(_ column: Column, to table: Table) -> String {
		let request = "ALTER TABLE "
		              + "\""
		              + table.name
		              + "\""
		              + " "
		              + "ADD"
		              + " "
		              + SQLSyntaxConfiguration.configuration.column()
		                                                    .columnToSql(column)
		return request
	}

}
