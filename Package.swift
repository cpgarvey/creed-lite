// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Creed-Lite",
    platforms: [.iOS(.v16), .tvOS(.v16), .watchOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Creed-Lite",
            targets: ["Creed-Lite"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-tagged", from: "0.10.0"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.4.0"),
        .package(url: "https://github.com/pointfreeco/swift-identified-collections.git", from: "1.1.0"),
        .package(url: "https://github.com/pointfreeco/swift-custom-dump", from: "1.3.3"),
        .package(url: "https://github.com/apple/swift-collections", from: "1.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Creed-Lite",
            dependencies: [
                .product(name: "Tagged", package: "swift-tagged"),
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "IdentifiedCollections", package: "swift-identified-collections"),
                .product(name: "Collections", package: "swift-collections"),
            ],
            resources: [
                .copy("Responses/Sample Data/feats.json"),
                .copy("Responses/Sample Data/leader_board_all_time.json"),
                .copy("Responses/Sample Data/leader_board_this_week.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440000.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440001.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440002.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440003.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440004.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440005.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440006.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440007.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440008.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440009.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440010.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440011.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440012.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440013.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440014.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440015.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440016.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440017.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440018.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440019.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440020.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440021.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440022.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440023.json"),
                .copy("Responses/Sample Data/user_profile_550e8400-e29b-41d4-a716-446655440024.json"),
            ]
        ),
        .testTarget(
            name: "CreedTests",
            dependencies: [
                "Creed-Lite",
                .product(name: "CustomDump", package: "swift-custom-dump")
            ])
    ]
)
