#import <UIKit/UIKit.h>

@interface BAPPReportsListController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)refreshButtonClick:(id)sender;
- (IBAction)deleteButtonClick:(id)sender;

@end
