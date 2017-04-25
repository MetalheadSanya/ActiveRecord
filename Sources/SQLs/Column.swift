
public typealias ColumnOptions = [CustomColumnModifierConvertible]
public typealias DefaultOptions = [DefaultColumnModifier]

public enum ColumnType: String {
	case primaryKey
	case string
	case text
	case datetime
	case integer
	case bigint
	case float
	case decimal
	case time
	case date
	case binary
	case boolean
}

public class Column {

	var name: String
	var type: ColumnType
	var options: ColumnOptions

	public init(name: String, type: ColumnType, options: ColumnOptions = []) {
		self.name = name
		self.type = type
		self.options = options
	}
}
