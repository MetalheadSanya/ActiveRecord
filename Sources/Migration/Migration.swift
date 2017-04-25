import SQLs

open class Migration {

	fileprivate enum MigrationError: Error {
		case changeNoImplement
		case upNoImplement
		case downNoImplement
	}

	fileprivate var changes = [MigrationChange]()

	public init() {}

	open func change() throws {

		throw MigrationError.changeNoImplement
	}

	open func up() throws {

		throw MigrationError.upNoImplement
	}

	open func down() throws {

		throw MigrationError.downNoImplement
	}

}

extension Migration {

	public func createTable(_ tableName: String, actions: (Table) -> ()) {

		let table = Table(name: tableName)
		actions(table)
		changes += [CreateTable(table: table)]
	}

	public func addTo(table tableName: String,
	                  column columnName: String,
	                  ofType columnType: ColumnType) {
		let table = Table(name: tableName)
		let column = Column(name: columnName, type: columnType)
		changes += [AddColumnToTable(table: table, column: column)]
	}

	public func changeTable(_ tableName: String, actions: (Table) -> ()) throws {

		let table = Table(name: tableName)
		actions(table)
		changes += [ChangeTable(table: table)]
	}

	//	public func addTo(table tableName: String, column columnName: String,
	//	                  ofType typeName: ColumnType) {
	//
	//		var request = "ALTER TABLE "
	//		request += tableName
	//		request += " ADD "
	//		request += columnName
	//		request += " "
	//		request += typeName.rawValue
	//
	//		requests.append(request)
	//	}

	public func addIndexTo(table tableName: String,
	                       column columnName: String,
	                       name: String? = nil) {
		let table = Table(name: tableName)
		let column = Column(name: columnName, type: .primaryKey)
		changes += [AddIndex(table: table, column: column)]
	}

	private func applyUp() {
		changes.flatMap { $0.up() }
		       .forEach { print($0) }
	}

	private func applyDownReversed() {
		changes.flatMap { $0.down() }
		       .reversed()
		       .forEach { print($0) }
	}

	public func migrate() throws {

		do {
			try change()
			applyUp()
		}
		catch MigrationError.changeNoImplement {
			try up()
			applyUp()
		}
	}

	public func rollback() throws {

		do {
			try change()
			applyDownReversed()
		}
		catch MigrationError.changeNoImplement {
			try down()
			applyUp()
		}
	}

}
