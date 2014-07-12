//
//  ALLabel.m
//  ALLabel
//
//  Created by Joshua Greene on 7/1/14.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  1. The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  2. Neither the name of the copyright holder nor the names of its contributors
//  may be used to endorse or promote products derived from this software without
//  specific prior written permission.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "ALLabel.h"

@implementation ALLabel

- (void)layoutSubviews
{
  [super layoutSubviews];
  
  if (self.numberOfLines == 0) {
    if (self.preferredMaxLayoutWidth != self.frame.size.width) {
      self.preferredMaxLayoutWidth = self.frame.size.width;
      [self setNeedsUpdateConstraints];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  CGSize size = [super intrinsicContentSize];
  
  if (self.numberOfLines == 0) {
    
    // There's a bug where intrinsic content size may be 1 point too short
    size.height += 1;
  }
  
  return size;
}

@end