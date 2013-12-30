#import "BAPPReportsListController.h"

@implementation BAPPReportsListController

- (void)viewDidLoad
{
    [super viewDidLoad];

	_tableView.delegate = self;
	_tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *cellIdentifier = @"customCell";

	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	/*
	if(cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
									  reuseIdentifier:cellIdentifier];
	}
	 */
	cell.textLabel.text = @"#12345-12345678";
	cell.detailTextLabel.text = @"sadahsdgahdg hasgdhagsdhasgdhgasdh gashdgahsdghasgd hasgd hasgdh gsadhg sahdg ashdgahsdg sahdg ahsgdsah dsahdgsahdg";

	//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"click at row");
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"commit edit style");
}

- (IBAction)refreshButtonClick:(id)sender {
	NSLog(@"refresh");
}

- (IBAction)deleteButtonClick:(id)sender {
	NSLog(@"delete report(s)");

	_tableView.editing = !_tableView.editing;
}

@end
