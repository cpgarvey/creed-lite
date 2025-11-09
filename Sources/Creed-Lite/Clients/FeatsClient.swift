//
//  FeatsClient.swift
//  Creed-Lite
//
//  Created by Andrew Hulsizer on 11/24/24.
//
import Dependencies
import Foundation

public struct FeatsClient: Sendable {
    public var listMonthlyFeats: @Sendable () async throws -> MonthlyFeats
    public var getFeatLeaderboard: @Sendable (Feat.Id) async throws -> FeatLeaderboard
    public var getFeatUser: @Sendable (FeatUser.Id) async throws -> FeatUser
}

//MARK: - Dependency Key
extension FeatsClient: DependencyKey {
    
    public static var liveValue: FeatsClient {
        Self(listMonthlyFeats: {
            let response = try loadJSONFile(named: "feats", type: MonthlyFeats.self)
            return response
        }, getFeatLeaderboard: { id in
            let response = try loadJSONFile(named: "leader_board_\(id)", type: FeatLeaderboard.self)
            return response
        }, getFeatUser: { id in
            let response = try loadJSONFile(named: "user_profile_\(id)", type: FeatUser.self)
            return response
        })
    }

    public static var testValue: FeatsClient {
        Self(listMonthlyFeats: {
            let response = try loadJSONFile(named: "feats", type: MonthlyFeats.self)
            return response
        }, getFeatLeaderboard: { id in
            let response = try loadJSONFile(named: "leader_board_\(id)", type: FeatLeaderboard.self)
            return response
        }, getFeatUser: { id in
            let response = try loadJSONFile(named: "user_profile_\(id)", type: FeatUser.self)
            return response
        })
    }

    public static var previewValue: FeatsClient {
        Self(listMonthlyFeats: {
            let response = try loadJSONFile(named: "feats", type: MonthlyFeats.self)
            return response
        }, getFeatLeaderboard: { id in
            let response = try loadJSONFile(named: "leader_board_\(id)", type: FeatLeaderboard.self)
            return response
        }, getFeatUser: { id in
            let response = try loadJSONFile(named: "user_profile_\(id)", type: FeatUser.self)
            return response
        })
    }
}

extension DependencyValues {
    public var featsClient: FeatsClient {
        get { self[FeatsClient.self] }
        set { self[FeatsClient.self] = newValue }
    }
}
