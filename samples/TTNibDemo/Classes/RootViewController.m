//
// Copyright 2009-2010 Facebook
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "RootViewController.h"


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation RootViewController


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
  if (self = [self initWithNibName:nil bundle:nil]) {
    self.title = @"Three20 NIB Demo";
    self.navigationItem.backBarButtonItem =
    [[[UIBarButtonItem alloc] initWithTitle: @"Root"
                                      style: UIBarButtonItemStyleBordered
                                     target: nil
                                     action: nil] autorelease];
    //self.tableViewStyle = UITableViewStyleGrouped;
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)createModel {
  self.dataSource = [TTSectionedDataSource dataSourceWithObjects:
    @"TTTableViewController",
    [[[TTTableTitleItem item] applyTitle:@"Table No Nib"] applyURLPath:@"tt://viewController/DemoTableViewController"],
    [[[TTTableTitleItem item] applyTitle:@"Table with default NIB"] applyURLPath:@"tt://nib/DemoTableViewController"],
    [[[TTTableTitleItem item] applyTitle:@"Table with specific NIB"] applyURLPath:@"tt://nib/FooterTableViewController/DemoTableViewController"],

    @"Other",
    [[[TTTableTitleItem item] applyTitle:@"TTPostController"] applyURLPath:@"tt://nib/DemoPostController"],
    [[[TTTableTitleItem item] applyTitle:@"TTViewController"] applyURLPath:@"tt://nib/DemoViewController"],

    [[[TTTableTitleItem item] applyTitle:@"TTMessageController"] applyURLPath:@"tt://modal/DemoMessageController"],

    nil];
}


@end

