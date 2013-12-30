#import "BAPPLogoutController.h"
#import "BAPPMainNavigationController.h"

@implementation BAPPLogoutController

- (void)viewDidLoad
{
    [super viewDidLoad];

	BAPPMainNavigationController *mainNavController = [self.storyboard instantiateViewControllerWithIdentifier:@"mainNavigationController"];
	[self presentViewController:mainNavController
					   animated:YES
					 completion:nil];
}

@end
