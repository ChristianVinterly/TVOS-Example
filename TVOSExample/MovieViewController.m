//
//  MovieViewController.m
//  TVOSExample
//
//  Created by Christian Lysne on 13/09/15.
//  Copyright © 2015 Christian Lysne. All rights reserved.
//

#import "MovieViewController.h"

@interface MovieViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = self.movie.title;
    self.scoreLabel.text = [NSString stringWithFormat:@"IMDB Score: %@", self.movie.score];
    self.textView.text = self.movie.movieDescription;
    
    self.textView.font = [UIFont systemFontOfSize:40];
    self.textView.textColor = [UIColor whiteColor];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        NSData *data = [NSData dataWithContentsOfURL:self.movie.imageURL];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.posterImageView.image = [UIImage imageWithData:data];
        });
    });
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(menuButtonTapped)];
    tap.allowedPressTypes = @[[NSNumber numberWithInteger:UIPressTypeMenu]];
    [self.view addGestureRecognizer:tap];
}

- (void)menuButtonTapped {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
