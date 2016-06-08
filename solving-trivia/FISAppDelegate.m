//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)solveTrivia{
    
    NSArray *States = @[@"Alabama", @"Alaska", @"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut", @"Delaware", @"Florida", @"Georgia", @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon", @"Pennsylvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming"];
    NSArray *Capitals = @[@"Montgomery",
                          @"Juneau",
                          @"Phoenix",
                          @"Little Rock",
                          @"Sacramento",
                          @"Denver",
                          @"Hartford",
                          @"Dover",
                          @"Tallahasse",
                          @"Atlanta",
                          @"Honolulu",
                          @"Boise",
                          @"Springfield",
                          @"Indianapolis",
                          @"Des Moines",
                          @"Topeka",
                          @"Frankfort",
                          @"Baton Rouge",
                          @"Augusta",
                          @"Annapolis",
                          @"Boston",
                          @"Lansing",
                          @"Saint Paul",
                          @"Jackson",
                          @"Jefferson City",
                          @"Helena",
                          @"Lincoln",
                          @"Carson City",
                          @"Concord",
                          @"Trenton",
                          @"Albany",
                          @"Santa Fe",
                          @"Raleigh",
                          @"Bismark",
                          @"Columbus",
                          @"Oklahoma City",
                          @"Salem",
                          @"Harrisburg",
                          @"Providence",
                          @"Columbia",
                          @"Pierre",
                          @"Nashville",
                          @"Austin",
                          @"Salt Lake City",
                          @"Montpelier",
                          @"Richmond",
                          @"Olympia",
                          @"Charleston",
                          @"Madison",
                          @"Cheyenne"];
    
    
    
    
    for (NSUInteger i = 0; i < [States count]; i++) {
        
        //Parsing the States
        NSString *currentStateString = States[i];
        currentStateString = [currentStateString lowercaseString];
        currentStateString = [currentStateString stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        //Parsing the Capitals
        NSString *currentCapitalString = Capitals[i];
        currentCapitalString = [currentCapitalString lowercaseString];
        currentCapitalString = [currentCapitalString stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        NSMutableArray *currentStateArray = [[NSMutableArray alloc]init];
        for (NSUInteger iStateCharacter = 0; iStateCharacter < [currentStateString length]; iStateCharacter++) {
            //Adds Characters to State Array
            NSString *characterForStateArray = [NSString stringWithFormat:@"%c",[currentStateString characterAtIndex:iStateCharacter]];
            [currentStateArray addObject:characterForStateArray];
        }
        NSMutableArray *currentCapitalArray = [[NSMutableArray alloc]init];
        //Adds Characters to Capital Array
        for (NSUInteger iCapitalCharacter = 0; iCapitalCharacter < [currentCapitalString length]; iCapitalCharacter++) {
            NSString *characterForCapitalArray = [NSString stringWithFormat:@"%c",[currentCapitalString characterAtIndex:iCapitalCharacter]];
            [currentCapitalArray addObject:characterForCapitalArray];
        }
        if (![currentStateArray firstObjectCommonWithArray:currentCapitalArray]) {
            return States[i];
        }
    }
    
    return @"I Dunno";
    
}

@end
