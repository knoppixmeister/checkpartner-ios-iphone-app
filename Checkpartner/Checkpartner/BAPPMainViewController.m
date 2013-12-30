#import "BAPPMainViewController.h"
#import "BAPPTabBarController.h"

@implementation BAPPMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	_emailField.delegate = self;
	_passwordField.delegate = self;

	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
																		  action:@selector(dismissKeyboard)];

	[self.view addGestureRecognizer:tap];
}

- (IBAction)signinButtonClick:(id)sender {
	//TODO: insert check login auth process
	//and some loading indicator.

	BAPPTabBarController *openController = [self.storyboard instantiateViewControllerWithIdentifier:@"tabBarController"];
	[self presentViewController:openController animated:YES completion:nil];
}

- (IBAction)registerButtonClick:(id)sender {
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[self dismissKeyboard];

	return YES;
}

- (void)dismissKeyboard
{
	[self.view endEditing:YES];
}

@end
