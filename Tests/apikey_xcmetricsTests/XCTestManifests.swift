import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(apikey_xcmetricsTests.allTests),
    ]
}
#endif
