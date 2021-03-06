//
//  Copyright © 2012 Yuri Kotov
//


#import "CustomAccessorsTests.h"
#import "CustomAccessorsDemo.h"

@implementation CustomAccessorsTests
{
    CustomAccessorsDemo *_defaults;
}

#pragma mark - SenTestCase
- (void) setUp
{
    [super setUp];

    _defaults = [CustomAccessorsDemo new];
    STAssertNotNil(_defaults, @"Unable to create an instance of %@", [CustomAccessorsDemo class]);
}

- (void) tearDown
{
    _defaults = nil;
    [super tearDown];
}

#pragma mark - CustomAccessorsTests
- (void) testCustomGetter
{
    _defaults.customGetter = YES;
    STAssertEquals([_defaults isCustomGetter], YES, kUselessDescription);
}

- (void) testCustomSetter
{
    NSString *value = @"Custom";
    [_defaults specifyCustomSetter:value];
    STAssertEqualObjects(_defaults.customSetter, value, kUselessDescription);
}

@end
