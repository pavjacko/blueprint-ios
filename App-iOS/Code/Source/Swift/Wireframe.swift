//
//  Wireframe.swift
//  App-iOS
//
//  Copyright © 2015 Syerit Limited. All rights reserved.
//

import Foundation

#if os(iOS)
import UIKit
#elseif os(OSX)
import Cocoa
#endif

protocol Wireframe {
    func openURL(URL: NSURL)
}


class DefaultWireframe: Wireframe {
    func openURL(URL: NSURL) {
        #if os(iOS)
            UIApplication.sharedApplication().openURL(URL)
        #elseif os(OSX)
            NSWorkspace.sharedWorkspace().openURL(URL)
        #endif
    }
}