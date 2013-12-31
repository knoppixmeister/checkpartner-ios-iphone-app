#import "BAPPIPadReportsListController.h"
#import "BAPPIPadReportViewController.h"

@implementation BAPPIPadReportsListController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *cellIdentifier = @"customCell";

	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier
															forIndexPath:indexPath];

	if(cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
									  reuseIdentifier:cellIdentifier];
	}

	cell.textLabel.text = @"aaa";
	cell.detailTextLabel.text = @"bbb";

	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"row selected: %lo", (long)indexPath.row);

	//BAPPIPadReportViewController *viewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"reportViewController"];
	//viewController.label.text = [NSString stringWithFormat:@"%lo", (long)indexPath.row];

	self.splitViewController.delegate;
	
	//[self presentViewController:viewController animated:YES completion:nil];
}

@end
