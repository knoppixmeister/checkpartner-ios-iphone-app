#import <UIKit/UIKit.h>

@interface BAPPMainViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)signinButtonClick:(id)sender;
- (IBAction)registerButtonClick:(id)sender;

@end
