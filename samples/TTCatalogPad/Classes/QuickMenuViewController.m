//
//  QuickMenuViewController.m
//  TTCatalogPad
//
//  Created by Jeff Verkoeyen on 2/13/10.
//  Copyright 2010 Jeff Verkoeyen Consulting. All rights reserved.
//

#import "QuickMenuViewController.h"



///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation QuickMenuViewController


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id) init {
  if (self = [super init]) {
    self.title = @"Quick Menu";
    //self.variableHeightRows = YES;
    self.tableViewStyle = UITableViewStyleGrouped;

    self.dataSource =
      [TTSectionedDataSource dataSourceWithObjects:
       @"Photos",
       [[[TTTableTitleItem item] applyTitle:@"Photo Browser"] applyURLPath:kPhotoBrowserURLPath],
       [[[TTTableTitleItem item] applyTitle:@"Photo Thumbnails"]
        applyURLPath:kPhotoThumbnailsURLPath],
       @"Styles",
       [[[TTTableTitleItem item] applyTitle:@"Styled Views"] applyURLPath:kStyledViewsURLPath],
       [[[TTTableTitleItem item] applyTitle:@"Styled Labels"] applyURLPath:kStyledLabelsURLPath],
       @"Controls",
       [[[TTTableTitleItem item] applyTitle:@"Buttons"] applyURLPath:kButtonsURLPath],
         nil];
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (CGSize)contentSizeForViewInPopoverView {
  return CGSizeMake(320.0, 600.0);
}


@end

