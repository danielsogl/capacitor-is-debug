import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(IsDebug)
public class IsDebug: CAPPlugin {
    
    @objc func check(_ call: CAPPluginCall) {
        let value = Env.isProduction()
        call.resolve(["value": value])
    }
}

struct Env {
    
    private static let production : Bool = {
        #if DEBUG
        print("DEBUG")
        return false
        #elseif ADHOC
        print("ADHOC")
        return false
        #else
        print("PRODUCTION")
        return true
        #endif
    }()
    
    static func isProduction () -> Bool {
        return self.production
    }
    
}
