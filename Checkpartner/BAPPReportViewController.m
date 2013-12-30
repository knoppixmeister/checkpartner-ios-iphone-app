#import "BAPPReportViewController.h"

@implementation BAPPReportViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)deleteButtonClick:(id)sender {
	[[[UIAlertView alloc] initWithTitle:@"Delete report"
							   message:@"Are you sure you want delete this report?"
							  delegate:self
					 cancelButtonTitle:@"Yes"
					 otherButtonTitles:@"No", nil] show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSLog(@"delete report: %lo", (long)buttonIndex);
}

@end
