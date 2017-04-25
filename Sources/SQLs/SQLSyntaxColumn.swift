//
// Created by Alexander Zalutskiy on 15.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

open class SQLSyntaxColumn {

	let columnModifier = SQLSyntaxConfiguration.configuration.columnType()

	func columnToSql(_ columnDefinition: Column) -> String {
		var column = "\""
		             + columnDefinition.name
		             + "\""
		             + " "
		             + columnModifier.sqlType(for: columnDefinition.type)
		append(columnDefinition.options, to: &column)
		return column
	}

	func append(_ options: ColumnOptions, to sql: inout String) {
		let options = options.map({ $0.modifier })
		                     .sorted(by: { $0.1.priority < $0.1.priority })
		for columnOption in options {
			columnOption.apply(to: &sql)
		}
	}

}
