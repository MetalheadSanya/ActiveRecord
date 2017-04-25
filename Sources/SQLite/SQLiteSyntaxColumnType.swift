//
// Created by Alexander Zalutskiy on 11.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

import SQLs

public class SQLiteSyntaxColumnType: SQLSyntaxColumnType {
	public override func primaryKey() -> String {
		return "INTEGER PRIMARY KEY AUTOINCREMENT"
	}

	public override func string() -> String {
		return "varchar"
	}

	public override func binary() -> String {
		return "blob"
	}
}
