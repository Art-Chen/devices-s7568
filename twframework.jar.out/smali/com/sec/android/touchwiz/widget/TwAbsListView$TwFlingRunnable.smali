.class Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4517
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 4519
    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 4526
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .parameter "delta"

    .prologue
    .line 4708
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyVerticalEdgeReached(III)V

    .line 4709
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v0

    .line 4710
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4712
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4713
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 4714
    .local v1, vel:I
    if-lez p1, :cond_2

    .line 4715
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 4725
    .end local v1           #vel:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4726
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4727
    return-void

    .line 4717
    .restart local v1       #vel:I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 4720
    .end local v1           #vel:I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4721
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4722
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 4569
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4580
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4583
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 4584
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 4586
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 4589
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_0

    .line 4701
    :goto_0
    return-void

    .line 4594
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 4595
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto :goto_0

    .line 4599
    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v6, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 4600
    .local v6, prevBounceExtent:F
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 4602
    .local v7, scroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v4

    .line 4603
    .local v4, more:Z
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v8

    .line 4609
    .local v8, y:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v9, v8

    .line 4613
    .local v1, delta:I
    if-lez v1, :cond_6

    .line 4616
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4617
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4618
    .local v2, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4621
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4635
    .end local v2           #firstView:Landroid/view/View;
    :goto_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9, v1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 4637
    .local v0, atEnd:Z
    :cond_2
    cmpg-float v9, v6, v11

    if-gtz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v9, v9, v6

    if-ltz v9, :cond_4

    :cond_3
    cmpl-float v9, v6, v11

    if-ltz v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v9, v9, v6

    if-lez v9, :cond_5

    .line 4640
    :cond_4
    const/4 v4, 0x0

    .line 4643
    :cond_5
    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    .line 4644
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4645
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4646
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4625
    .end local v0           #atEnd:Z
    :cond_6
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 4626
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4628
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4629
    .local v3, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4632
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 4647
    .end local v3           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_7
    if-eqz v0, :cond_8

    .line 4648
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4684
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4589
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4537
    if-gez p1, :cond_0

    move v2, v6

    .line 4538
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 4541
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4543
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4551
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 4537
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 4734
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 4736
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4737
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4738
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4740
    return-void
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 4557
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 4558
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 4559
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 4560
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4562
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4563
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 4557
    goto :goto_0
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4751
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4752
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4753
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 4754
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4760
    :goto_0
    return-void

    .line 4756
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
