//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 최윤제 on 2023/10/20.
//
    
import Foundation
import ProjectDescription

let netwrokKitInfoPlist: [String: Plist.Value] = [:]

let NetworkKitTargets: [Target] = [
    .init(
        name: "NetworkKit",
        platform: .iOS,
        product: .framework ,
        bundleId: "com.tuistTutorial.networkKit",
        deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
        infoPlist: .extendingDefault(with: netwrokKitInfoPlist),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
            .project(target: "YoonKit", path: .relativeToRoot("Projects/YoonKit"))
        ]
    )]

let NetworkKit = Project.init(
    name: "NetworkKit",
    organizationName: "com.tuist_tutorial",
    targets: NetworkKitTargets
)

