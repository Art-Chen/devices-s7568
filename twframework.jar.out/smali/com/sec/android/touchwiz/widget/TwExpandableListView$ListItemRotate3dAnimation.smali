.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemRotate3dAnimation"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private mRotationAxis:I

.field private final mToDegrees:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;FFFFFIZ)V
    .locals 0
    .parameter
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "depthZ"
    .parameter "axisOfRotation"
    .parameter "reverse"

    .prologue
    .line 3443
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 3444
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mFromDegrees:F

    .line 3445
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mToDegrees:F

    .line 3446
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mCenterX:F

    .line 3447
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mCenterY:F

    .line 3448
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mDepthZ:F

    .line 3449
    iput-boolean p8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mReverse:Z

    .line 3450
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mRotationAxis:I

    .line 3451
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x0

    .line 3462
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mFromDegrees:F

    .line 3463
    .local v4, fromDegrees:F
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 3465
    .local v3, degrees:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mCenterX:F

    .line 3466
    .local v1, centerX:F
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mCenterY:F

    .line 3467
    .local v2, centerY:F
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 3469
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 3471
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 3472
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mReverse:Z

    if-eqz v6, :cond_2

    .line 3473
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 3482
    :goto_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mRotationAxis:I

    if-nez v6, :cond_3

    .line 3483
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 3489
    :cond_0
    :goto_1
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 3490
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 3492
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3493
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3494
    :cond_1
    return-void

    .line 3476
    :cond_2
    cmpg-float v6, p1, v8

    if-lez v6, :cond_1

    .line 3479
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mDepthZ:F

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 3484
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mRotationAxis:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 3485
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1

    .line 3486
    :cond_4
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mRotationAxis:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3487
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateZ(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 3455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 3456
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ListItemRotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 3457
    return-void
.end method
