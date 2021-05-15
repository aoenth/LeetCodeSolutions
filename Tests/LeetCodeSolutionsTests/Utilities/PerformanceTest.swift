//
//  Created by Kevin Peng on 2021-05-15.
//

import XCTest

extension XCTestCase {
    func XCTAssertRunTimeLessThan(_ runTimeMillis: Int, _ closureToRun: () -> Void) {
        let timeTaken = timeBlock(closure: closureToRun)
        XCTAssertLessThan(timeTaken, runTimeMillis)
    }

    private func timeBlock(closure: () -> Void) -> Int {
        var info = mach_timebase_info(numer: 0, denom: 0)
        mach_timebase_info(&info)
        let begin = mach_absolute_time()

        closure()

        let diff = Double(mach_absolute_time() - begin) * Double(info.numer) / Double(1_000_000 * info.denom)
        return Int(diff)
    }
}
