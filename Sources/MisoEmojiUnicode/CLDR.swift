//
//  CLDR.swift
//  CreaPhoto
//
//  Created by Michel Donais on 2021-01-17.
//  Copyright © 2019-2021 Misoservices Inc. All rights reserved.
//

import SwiftUI

public struct CLDR {
    public static var tableName: String {
        "annotations"
    }

    public static var bundle: Bundle {
        .module
    }

    public static var tagsSuffix: String {
        "-Tags"
    }
}
