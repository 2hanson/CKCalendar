#import "CKViewController.h"
#import "CKCalendarView.h"

@interface CKViewController ()

@end

@implementation CKViewController

- (id)init {
    self = [super init];
    if (self) {
        CKCalendarView *calendar = [[CKCalendarView alloc] init:startMonday];
        calendar.frame = CGRectMake(10, 0, 320, 480);
        [self.view addSubview:calendar];

        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end