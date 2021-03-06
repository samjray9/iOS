//
//  FaviconRequestModifierTests.swift
//  UnitTests
//
//  Copyright © 2020 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import XCTest
@testable import Core

class FaviconRequestModifierTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        _ = UserAgentManager.shared
    }
    
    func test() {
        let request = URLRequest(url: URL(string: "https://www.example.com")!)
        let result = FaviconRequestModifier().modified(for: request)
        XCTAssertTrue(result?.allHTTPHeaderFields?["User-Agent"]?.contains("DuckDuckGo") ?? false)
    }
    
}
