.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotateAnimationListener"
.end annotation


# instance fields
.field animType:I

.field isGroupExpanding:Z

.field isLastAnimatingItem:Z

.field isListGroupItem:Z

.field mChildPos:I

.field mGroupPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZZZI)V
    .locals 1
    .parameter
    .parameter "thisView"
    .parameter "expanding"
    .parameter "isLastItem"
    .parameter "isGroupItem"
    .parameter "animationType"

    .prologue
    const/4 v0, 0x0

    .line 3281
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3272
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    .line 3274
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    .line 3276
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    .line 3278
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    .line 3283
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->view:Landroid/view/View;

    .line 3284
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    .line 3285
    iput-boolean p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    .line 3286
    iput-boolean p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    .line 3287
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    .line 3288
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 3301
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-ne v0, v1, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 3304
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    if-eqz v0, :cond_3

    .line 3305
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    if-eqz v0, :cond_2

    .line 3306
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-nez v0, :cond_1

    .line 3307
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 3309
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedExpansionAnimationItemIndex()V

    .line 3324
    :cond_2
    :goto_0
    return-void

    .line 3315
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isLastAnimatingItem:Z

    if-eqz v0, :cond_5

    .line 3316
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-nez v0, :cond_4

    .line 3317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    .line 3319
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setFinishedCollapseAnimationItemIndex()V

    .line 3321
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_2

    .line 3322
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    const-string v0, "AnimationListener"

    const-string v1, "onAnimationRepeat ....."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 3291
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3292
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isTranslationOver:Z

    .line 3296
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isGroupExpanding:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->isListGroupItem:Z

    if-nez v0, :cond_1

    .line 3297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3298
    :cond_1
    return-void

    .line 3293
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->animType:I

    if-nez v0, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->mAnimationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->isItemAnimationOver:Z

    goto :goto_0
.end method
