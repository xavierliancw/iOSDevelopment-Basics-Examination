import XCTest
@testable import Swiftly_Test_Your_Might

/// The functions these unit tests are testing can be found in Algorithms.swift.
/// Do whatever it takes to pass these unit tests without modifying the existing unit tests here.
/// But... Don't do silly things like hard code answers or find loopholes.
///
/// Remember, work in whatever order you like.
///
/// Instructions for each algorithm are found above each unit test here.
/// Don't know how to run unit tests? Google it!
class Swiftly_Test_Your_MightTests: XCTestCase
{
    /// Modify algorithm1(_:) to pass this unit test.
    /// The algorithm should find the first duplicate letter of a string.
    /// For example:
    ///
    ///     let result = algorithm1("abcad")
    ///     //result should have "a"
    func testKale()
    {
        let expectedData: [Character?] = ["a", "t" ," ", nil, " ", "a", "ø", nil]
        let testData = """
aslkdfjafaslkdjfaiej kajdfa;s,isn't this test really easy?,around the world around the world around the world around the world,abcdefghijklmnopqrstuvwxyz,yes no maybe so,abcad,zyxwvutsrqopnlkjighfedcba1234567890+-[]}{|`~'";:<>./?!@#$%^&*()_=œ∑´®†ø¥¨ˆøπ“‘«æ…¬˚∆˙©`ƒ∂ßåΩ≈ç√∫˜µ≤≥÷,
""".components(separatedBy: ",")
        for x in 0 ..< testData.count
        {
            XCTAssertEqual(expectedData[x], algorithm1(testData[x]))
        }
    }
    
    /// Modify algorithm2(_:) to pass this unit test.
    /// Just sort the wheels to pass this test.
    /// Do not modify Extensions.swift.
    /// You are allowed to modify the Wheel struct in Gimme.swift if you deem it necessary.
    func testLettuce()
    {
        let expectedData: [Wheel?] = [
            Wheel(dateChanged: Date(timeIntervalSince1970: 123), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 234), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 345), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 456), punctured: false),
            nil
        ]
        let testData = expectedData.shuffled()
        let resultData = algorithm2(testData)
        for x in 0 ..< expectedData.count
        {
            XCTAssertEqual(expectedData[x]?.dateChanged, resultData[x]?.dateChanged)
        }
    }
    
    /// Modify algorithm3(_:) to pass this unit test.
    /// Result should be an array of dates in the same order as testData, without nil values.
    func testCarrot()
    {
        let expectedData: [Date] = [
            Date(timeIntervalSince1970: 123),
            Date(timeIntervalSince1970: 234),
            Date(timeIntervalSince1970: 100),
            Date(timeIntervalSince1970: 456)
        ]
        let testData: [Wheel?] = [
            Wheel(dateChanged: Date(timeIntervalSince1970: 123), punctured: false),
            nil,
            Wheel(dateChanged: Date(timeIntervalSince1970: 234), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 100), punctured: false),
            nil,
            Wheel(dateChanged: Date(timeIntervalSince1970: 456), punctured: false),
            nil
        ]
        let result = algorithm3(testData)
        for x in 0 ..< expectedData.count
        {
            XCTAssertEqual(expectedData[x], result[x])
        }
    }
    
    /// Modify algorithm4(_:) to parse the JSON.
    /// You are NOT allowed to change property names of the Spinach struct (to maintain camelCase).
    func testSpinach()
    {
        let json = """
{
  "Bundles": [
    {
      "Fresh": true,
      "VarietyKind": "Savoy"
    },
    {
      "Fresh": false,
      "VarietyKind": "Teton"
    },
    {
      "Fresh": false,
      "VarietyKind": "Indian summer"
    }
  ]
}
""".data(using: .utf8)!
        let expectedData: [Spinach] = [
            Spinach(fresh: true, variety: "Savoy"),
            Spinach(fresh: false, variety: "Teton"),
            Spinach(fresh: false, variety: "Indian summer"),
            ]
        let result = algorithm4(json)
        for x in 0 ..< expectedData.count
        {
            XCTAssertEqual(expectedData[x].fresh, result[x].fresh)
            XCTAssertEqual(expectedData[x].variety, result[x].variety)
        }
    }
    
    /// Modify lastAlgorithm(_:) to parse data into an array of Wheel objects.
    /// The data is in JSON format.
    /// This could take you a very long time if you don't know what you're doing.
    /// Difficulty level: Extremely face-meltingly annoying
    /// Good luck.
    func testMomordicaDioica()
    {
        let expectedData: [Wheel] = [
            Wheel(dateChanged: Date(timeIntervalSince1970: 1518166010.77), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1520477581.699), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1523319471.713), punctured: true),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1523344671.0), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1523330257.863), punctured: true)
        ]
        let data = Data(base64Encoded: """
WwogICAgewogICAgICAgICJkYXRlQ2hhbmdlZCI6ICIyMDE4LTAyLTA5VDAwOjQ2OjUwLjc3IiwKICAgICAgICAicHVuY3R1cmVkIjogZmFsc2UKICAgIH0sCiAgICB7CiAgICAgICAgImRhdGVDaGFuZ2VkIjogIjIwMTgtMDMtMDdUMTg6NTM6MDEuNjk5NzAwMiIsCiAgICAgICAgInB1bmN0dXJlZCI6IGZhbHNlCiAgICB9LAogICAgewogICAgICAgICJkYXRlQ2hhbmdlZCI6ICIyMDE4LTA0LTEwVDAwOjE3OjUxLjcxM1oiLAogICAgICAgICJwdW5jdHVyZWQiOiB0cnVlCiAgICB9LAogICAgewogICAgICAgICJkYXRlQ2hhbmdlZCI6ICIyMDE4LTA0LTEwVDAwOjE3OjUxIiwKICAgICAgICAicHVuY3R1cmVkIjogZmFsc2UKICAgIH0sCiAgICB7CiAgICAgICAgImRhdGVDaGFuZ2VkIjogIjIwMTgtMDQtMDlUMjA6MTc6MzcuODYzIiwKICAgICAgICAicHVuY3R1cmVkIjogdHJ1ZQogICAgfQpd
""")!
        let result = lastAlgorithm(data)
        
        for x in 0 ..< expectedData.count
        {
            XCTAssertEqual(expectedData[x].dateChanged, result[x].dateChanged)
            XCTAssertEqual(expectedData[x].punctured, result[x].punctured)
        }
    }
}
