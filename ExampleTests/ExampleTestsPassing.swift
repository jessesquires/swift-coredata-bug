
import XCTest
import CoreData

import Example

class ExampleTestsPassing: XCTestCase {

    func test_that_passes() {
        let stack = CoreDataStack()
        
        //  public class in App Target
        //  NOT added to Test Target, instead imported above

        let object = NSEntityDescription.insertNewObjectForEntityForName("PublicPerson", inManagedObjectContext: stack.context)
        
        println("\n*** PASSING OBJECT CLASS == \(NSStringFromClass(object_getClass(object)))\n")
        
        if let person = object as? PublicPerson {
            XCTAssert(true, "Cast succeeded")
        }
        else {
            XCTFail("Cast failed!")
        }
    }
    
}