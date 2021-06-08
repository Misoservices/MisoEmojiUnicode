//
//  Emoji+extras.swift
//  CreaPhoto
//
//  Created by Michel Donais on 2021-04-02.
//  Copyright © 2019-2021 Misoservices Inc. All rights reserved.
//

import Foundation

// MARK: - Emoji
extension Emoji: Identifiable {
    public var id: String {
        rawValue
    }
}

extension Emoji: Comparable {
    public static func < (lhs: Emoji, rhs: Emoji) -> Bool {
        lhs.order < rhs.order
    }
}

extension Emoji: RawRepresentable, Codable, Equatable {
}

public extension Emoji {
    var titleKey: String {
        toAnnotation.id
    }

    var tagsKey: String {
        titleKey + CLDR.tagsSuffix
    }

    var tableName: String {
        CLDR.tableName
    }

    var bundle: Bundle {
        CLDR.bundle
    }
}


// MARK: - Emoji.Groups
extension Emoji.Groups: Identifiable {
    public var id: String {
        "group." + rawValue
    }
    public var icon: String {
        "groupicon." + rawValue
    }
    public var tableName: String {
        "groups"
    }
    public var bundle: Bundle {
        .module
    }
}

extension Emoji.Groups: Comparable {
    public static func < (lhs: Emoji.Groups, rhs: Emoji.Groups) -> Bool {
        Emoji.Groups.allCases.firstIndex(of: lhs) ?? -1 < Emoji.Groups.allCases.firstIndex(of: rhs) ?? -1
    }
}

extension Emoji.Groups: RawRepresentable, Codable, Equatable {
}


// MARK: - Emoji.Subgroups
extension Emoji.Subgroups: Identifiable {
    public var id: String {
        "subgroup." + rawValue
    }
}

extension Emoji.Subgroups: RawRepresentable, Codable, Equatable {
}
