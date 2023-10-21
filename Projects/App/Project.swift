//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 최윤제 on 2023/10/21.
//

import Foundation
import ProjectDescription

let appInfoPlist: [String: Plist.Value] = [:]

let appTargets: [Target] = [
    .init(
        name: "App",
        platform: .iOS,
        product: .app ,
        bundleId: "com.tuistTutorial.app",
        deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
        infoPlist: .extendingDefault(with: appInfoPlist),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
            .project(target: "NetworkKit", path: "../NetworkKit")
        ]
    )]

let appProject = Project.init(name: "Tuist_tutorial", organizationName: "com.tuist_tutorial", targets: appTargets)

