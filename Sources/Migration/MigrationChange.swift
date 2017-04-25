//
// Created by Alexander Zalutskiy on 18.04.17.
// Copyright (c) 2017 Zalutskiy Alexander. All rights reserved.
//

protocol MigrationChange {

	func up() -> [String]

	func down() -> [String]

}
