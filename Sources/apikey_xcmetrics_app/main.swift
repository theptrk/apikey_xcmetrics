import Foundation
import XCMetricsClient
import XCMetricsPlugins

public struct apikey_xcmetrics {

    public static func main() {
        let metrics = XCMetrics.parseOrExit()
        let configuration = XCMetricsConfiguration()
        configuration.add(plugin: ThermalThrottlingPlugin().create()) // ThermalThrottlingPlugin lives in XCMetricsPlugins.
        metrics.run(with: configuration)
    }
}