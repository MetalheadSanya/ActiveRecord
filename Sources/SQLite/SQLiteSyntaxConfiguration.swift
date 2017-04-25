//
// Created by Alexander Zalutskiy on 18.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

import SQLs

open class SQLiteSyntaxConfiguration: SQLSyntaxConfiguration {

	open override func columnType() -> SQLSyntaxColumnType {
		return SQLiteSyntaxColumnType()
	}

}
