//
//  Structs.swift
//  SpaceXLaunches
//
//  Created by Anton Voloshuk on 19.07.2021.


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let response = try? newJSONDecoder().decode(Response.self, from: jsonData)

import Foundation

// MARK: - ResponseElement
struct ResponseElement: Codable {
    var flightNumber: Int?
    var missionName: String?
    var missionID: [String]?
    var upcoming: Bool?
    var launchYear: String?
    var launchDateUnix: Int?
    var launchDateUTC: String?
    var launchDateLocal: String?
    var isTentative: Bool?
    var tentativeMaxPrecision: String?
    var tbd: Bool?
    var launchWindow: Int?
    var rocket: Rocket?
    var ships: [String]?
    var telemetry: Telemetry?
    var launchSite: LaunchSite?
    var launchSuccess: Bool?
    var launchFailureDetails: LaunchFailureDetails?
    var links: Links?
    var details: String?
    var staticFireDateUTC: String?
    var staticFireDateUnix: Int?
    var timeline: Timeline?
    var crew: [JSONAny]?
    var lastDateUpdate: String?
    var lastLlLaunchDate: String?
    var lastLlUpdate: String?
    var lastWikiLaunchDate: String?
    var lastWikiRevision: String?
    var lastWikiUpdate: String?
    var launchDateSource: String?
    
    enum CodingKeys: String, CodingKey {
        case flightNumber = "flight_number"
        case missionName = "mission_name"
        case missionID = "mission_id"
        case upcoming = "upcoming"
        case launchYear = "launch_year"
        case launchDateUnix = "launch_date_unix"
        case launchDateUTC = "launch_date_utc"
        case launchDateLocal = "launch_date_local"
        case isTentative = "is_tentative"
        case tentativeMaxPrecision = "tentative_max_precision"
        case tbd = "tbd"
        case launchWindow = "launch_window"
        case rocket = "rocket"
        case ships = "ships"
        case telemetry = "telemetry"
        case launchSite = "launch_site"
        case launchSuccess = "launch_success"
        case launchFailureDetails = "launch_failure_details"
        case links = "links"
        case details = "details"
        case staticFireDateUTC = "static_fire_date_utc"
        case staticFireDateUnix = "static_fire_date_unix"
        case timeline = "timeline"
        case crew = "crew"
        case lastDateUpdate = "last_date_update"
        case lastLlLaunchDate = "last_ll_launch_date"
        case lastLlUpdate = "last_ll_update"
        case lastWikiLaunchDate = "last_wiki_launch_date"
        case lastWikiRevision = "last_wiki_revision"
        case lastWikiUpdate = "last_wiki_update"
        case launchDateSource = "launch_date_source"
    }
}

// MARK: - LaunchFailureDetails
struct LaunchFailureDetails: Codable {
    var time: Int?
    var altitude: Int?
    var reason: String?
    
    enum CodingKeys: String, CodingKey {
        case time = "time"
        case altitude = "altitude"
        case reason = "reason"
    }
}

// MARK: - LaunchSite
struct LaunchSite: Codable {
    var siteID: String?
    var siteName: String?
    var siteNameLong: String?
    
    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case siteName = "site_name"
        case siteNameLong = "site_name_long"
    }
}

// MARK: - Links
struct Links: Codable {
    var missionPatch: String?
    var missionPatchSmall: String?
    var redditCampaign: String?
    var redditLaunch: String?
    var redditRecovery: String?
    var redditMedia: String?
    var presskit: String?
    var articleLink: String?
    var wikipedia: String?
    var videoLink: String?
    var youtubeID: String?
    var flickrImages: [String]?
    
    enum CodingKeys: String, CodingKey {
        case missionPatch = "mission_patch"
        case missionPatchSmall = "mission_patch_small"
        case redditCampaign = "reddit_campaign"
        case redditLaunch = "reddit_launch"
        case redditRecovery = "reddit_recovery"
        case redditMedia = "reddit_media"
        case presskit = "presskit"
        case articleLink = "article_link"
        case wikipedia = "wikipedia"
        case videoLink = "video_link"
        case youtubeID = "youtube_id"
        case flickrImages = "flickr_images"
    }
}

// MARK: - Rocket
struct Rocket: Codable {
    var rocketID: String?
    var rocketName: String?
    var rocketType: String?
    var firstStage: FirstStage?
    var secondStage: SecondStage?
    var fairings: Fairings?
    
    enum CodingKeys: String, CodingKey {
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case fairings = "fairings"
    }
}

// MARK: - Fairings
struct Fairings: Codable {
    var reused: Bool?
    var recoveryAttempt: Bool?
    var recovered: Bool?
    var ship: String?
    
    enum CodingKeys: String, CodingKey {
        case reused = "reused"
        case recoveryAttempt = "recovery_attempt"
        case recovered = "recovered"
        case ship = "ship"
    }
}

// MARK: - FirstStage
struct FirstStage: Codable {
    var cores: [Core]?
    
    enum CodingKeys: String, CodingKey {
        case cores = "cores"
    }
}

// MARK: - Core
struct Core: Codable {
    var coreSerial: String?
    var flight: Int?
    var block: Int?
    var gridfins: Bool?
    var legs: Bool?
    var reused: Bool?
    var landSuccess: Bool?
    var landingIntent: Bool?
    var landingType: String?
    var landingVehicle: String?
    
    enum CodingKeys: String, CodingKey {
        case coreSerial = "core_serial"
        case flight = "flight"
        case block = "block"
        case gridfins = "gridfins"
        case legs = "legs"
        case reused = "reused"
        case landSuccess = "land_success"
        case landingIntent = "landing_intent"
        case landingType = "landing_type"
        case landingVehicle = "landing_vehicle"
    }
}

// MARK: - SecondStage
struct SecondStage: Codable {
    var block: Int?
    var payloads: [Payload]?
    
    enum CodingKeys: String, CodingKey {
        case block = "block"
        case payloads = "payloads"
    }
}

// MARK: - Payload
struct Payload: Codable {
    var payloadID: String?
    var noradID: [Int]?
    var reused: Bool?
    var customers: [String]?
    var nationality: String?
    var manufacturer: String?
    var payloadType: String?
    var payloadMassKg: Double?
    var payloadMassLbs: Double?
    var orbit: String?
    var orbitParams: OrbitParams?
    var capSerial: String?
    var massReturnedKg: Double?
    var massReturnedLbs: Double?
    var flightTimeSEC: Int?
    var cargoManifest: String?
    var uid: String?
    
    enum CodingKeys: String, CodingKey {
        case payloadID = "payload_id"
        case noradID = "norad_id"
        case reused = "reused"
        case customers = "customers"
        case nationality = "nationality"
        case manufacturer = "manufacturer"
        case payloadType = "payload_type"
        case payloadMassKg = "payload_mass_kg"
        case payloadMassLbs = "payload_mass_lbs"
        case orbit = "orbit"
        case orbitParams = "orbit_params"
        case capSerial = "cap_serial"
        case massReturnedKg = "mass_returned_kg"
        case massReturnedLbs = "mass_returned_lbs"
        case flightTimeSEC = "flight_time_sec"
        case cargoManifest = "cargo_manifest"
        case uid = "uid"
    }
}

// MARK: - OrbitParams
struct OrbitParams: Codable {
    var referenceSystem: String?
    var regime: String?
    var longitude: Double?
    var semiMajorAxisKM: Double?
    var eccentricity: Double?
    var periapsisKM: Double?
    var apoapsisKM: Double?
    var inclinationDeg: Double?
    var periodMin: Double?
    var lifespanYears: Double?
    var epoch: String?
    var meanMotion: Double?
    var raan: Double?
    var argOfPericenter: Double?
    var meanAnomaly: Double?
    
    enum CodingKeys: String, CodingKey {
        case referenceSystem = "reference_system"
        case regime = "regime"
        case longitude = "longitude"
        case semiMajorAxisKM = "semi_major_axis_km"
        case eccentricity = "eccentricity"
        case periapsisKM = "periapsis_km"
        case apoapsisKM = "apoapsis_km"
        case inclinationDeg = "inclination_deg"
        case periodMin = "period_min"
        case lifespanYears = "lifespan_years"
        case epoch = "epoch"
        case meanMotion = "mean_motion"
        case raan = "raan"
        case argOfPericenter = "arg_of_pericenter"
        case meanAnomaly = "mean_anomaly"
    }
}

// MARK: - Telemetry
struct Telemetry: Codable {
    var flightClub: String?
    
    enum CodingKeys: String, CodingKey {
        case flightClub = "flight_club"
    }
}

// MARK: - Timeline
struct Timeline: Codable {
    var webcastLiftoff: Int?
    var goForPropLoading: Int?
    var rp1Loading: Int?
    var stage1LoxLoading: Int?
    var stage2LoxLoading: Int?
    var engineChill: Int?
    var prelaunchChecks: Int?
    var propellantPressurization: Int?
    var goForLaunch: Int?
    var ignition: Int?
    var liftoff: Int?
    var maxq: Int?
    var meco: Int?
    var stageSep: Int?
    var secondStageIgnition: Int?
    var seco1: Int?
    var dragonSeparation: Int?
    var dragonSolarDeploy: Int?
    var dragonBayDoorDeploy: Int?
    var fairingDeploy: Int?
    var payloadDeploy: Int?
    var secondStageRestart: Int?
    var seco2: Int?
    var webcastLaunch: Int?
    var payloadDeploy1: Int?
    var payloadDeploy2: Int?
    var firstStageBoostbackBurn: Int?
    var firstStageEntryBurn: Int?
    var firstStageLanding: Int?
    var beco: Int?
    var sideCoreSep: Int?
    var sideCoreBoostback: Int?
    var centerStageSep: Int?
    var centerCoreBoostback: Int?
    var sideCoreEntryBurn: Int?
    var centerCoreEntryBurn: Int?
    var sideCoreLanding: Int?
    var centerCoreLanding: Int?
    var firstStageLandingBurn: Int?
    var stage1Rp1Loading: Int?
    var stage2Rp1Loading: Int?
    var seco3: Int?
    var seco4: Int?
    
    enum CodingKeys: String, CodingKey {
        case webcastLiftoff = "webcast_liftoff"
        case goForPropLoading = "go_for_prop_loading"
        case rp1Loading = "rp1_loading"
        case stage1LoxLoading = "stage1_lox_loading"
        case stage2LoxLoading = "stage2_lox_loading"
        case engineChill = "engine_chill"
        case prelaunchChecks = "prelaunch_checks"
        case propellantPressurization = "propellant_pressurization"
        case goForLaunch = "go_for_launch"
        case ignition = "ignition"
        case liftoff = "liftoff"
        case maxq = "maxq"
        case meco = "meco"
        case stageSep = "stage_sep"
        case secondStageIgnition = "second_stage_ignition"
        case seco1 = "seco-1"
        case dragonSeparation = "dragon_separation"
        case dragonSolarDeploy = "dragon_solar_deploy"
        case dragonBayDoorDeploy = "dragon_bay_door_deploy"
        case fairingDeploy = "fairing_deploy"
        case payloadDeploy = "payload_deploy"
        case secondStageRestart = "second_stage_restart"
        case seco2 = "seco-2"
        case webcastLaunch = "webcast_launch"
        case payloadDeploy1 = "payload_deploy_1"
        case payloadDeploy2 = "payload_deploy_2"
        case firstStageBoostbackBurn = "first_stage_boostback_burn"
        case firstStageEntryBurn = "first_stage_entry_burn"
        case firstStageLanding = "first_stage_landing"
        case beco = "beco"
        case sideCoreSep = "side_core_sep"
        case sideCoreBoostback = "side_core_boostback"
        case centerStageSep = "center_stage_sep"
        case centerCoreBoostback = "center_core_boostback"
        case sideCoreEntryBurn = "side_core_entry_burn"
        case centerCoreEntryBurn = "center_core_entry_burn"
        case sideCoreLanding = "side_core_landing"
        case centerCoreLanding = "center_core_landing"
        case firstStageLandingBurn = "first_stage_landing_burn"
        case stage1Rp1Loading = "stage1_rp1_loading"
        case stage2Rp1Loading = "stage2_rp1_loading"
        case seco3 = "seco-3"
        case seco4 = "seco-4"
    }
}

typealias Response = [ResponseElement]

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public func hash(into hasher: inout Hasher) {
        // No-op
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
