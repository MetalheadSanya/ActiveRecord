final public class Table: ColumnMethods {

	var name: String

	lazy var columns: [Column] = {
		return [Column(name: "id",
		               type: .primaryKey,
		               options: [DefaultColumnModifier.allowedNull(false)])]
	}()


	public init(name: String) {
		self.name = name
	}

	public func column(_ name: String,
	                   type: ColumnType,
	                   options: ColumnOptions = []) {

		columns.append(Column(name: name, type: type, options: options))
	}

}
