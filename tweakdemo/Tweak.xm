#import <SpringBoard/SpringBoard.h>
#import <UIKit/UIKit.h>

%hook ViewController

- (void)clickButton {
	UIAlertController *alerView = [UIAlertController alertControllerWithTitle:@"测试" message:@"Hook成功，鼓励一下吧" preferredStyle:UIAlertControllerStyleAlert];
  	UIAlertAction *cancelAction =[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
  	[alerView addAction:cancelAction];
  	[self presentViewController:alerView animated:YES completion:nil];
	%orig;
}

%end
