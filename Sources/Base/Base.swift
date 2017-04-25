public protocol Base {

}

public extension Base {

	static var tableName: String {
		return String(describing: Self.self).pluralize().rubyCase()
	}

}
