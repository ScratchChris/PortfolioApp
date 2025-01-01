//
//  PortfolioAppTest.swift
//  PortfolioAppTest
//
//  Created by Chris Turner on 01/01/2025.
//

import CoreData
import XCTest
@testable import PortfolioApp

class BaseTestCase: XCTestCase {
    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!
    
    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }
}
