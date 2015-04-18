#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>
#import <OCMock/OCMock.h>
#import "FlipSquaresNavigationController.h"
#import "BaseControllerAnimatedTransitioningDelegate.h"
#import "FlipSquaresGridAnimator.h"

SpecBegin(FlipSquaresNavigationControllerTests)

describe(@"createAnimatedTransitioningUsed", ^{
    __block FlipSquaresNavigationController *flipSquaresController;
    __block BaseControllerAnimatedTransitioningDelegate *delegate;

    beforeEach(^{
        flipSquaresController = [FlipSquaresNavigationController new];
        delegate = [flipSquaresController createAnimatedTransitioningUsed];
    });

    it(@"returns a properly congfigured instance of FlipSquaresGridAnimator", ^{
        expect(delegate).to.beAnInstanceOf([FlipSquaresGridAnimator class]);
        expect(((FlipSquaresGridAnimator*)delegate).sortMethod).to.equal(ScanningSortMethodHorizontal);
    });
});

SpecEnd