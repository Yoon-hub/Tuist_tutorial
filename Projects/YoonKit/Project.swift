//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 최윤제 on 2023/10/21.
//

import Foundation
import ProjectDescription

let yoonKitInfoPlist: [String: Plist.Value] = [:]

let yoonKitTargets: [Target] = [
.init(
    name: "YoonKit",
    platform: .iOS,
    product: .framework ,
    bundleId: "com.tuistTutorial.YoonKit",
    deploymentTarget: .iOS(targetVersion: "16.0", devices: [.iphone]),
    infoPlist: .extendingDefault(with: yoonKitInfoPlist),
    sources: ["Sources/**"],
    resources: ["Resources/**"]
)]

let yoonKit = Project.init(
name: "YoonKit",
organizationName: "com.tuist_tutorial",
targets: yoonKitTargets
)

