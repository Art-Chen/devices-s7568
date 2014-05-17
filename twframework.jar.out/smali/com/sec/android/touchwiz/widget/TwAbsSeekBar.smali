.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwProgressBar;
.source "TwAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

.field private final debug:Z

.field private mDisabledAlpha:F

.field private mHoverEnable:Z

.field private mHovering:Z

.field private mHoveringLevel:I

.field private mIsDisableCompensationTouchArea:Z

.field private mIsTouch:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScale:F

.field private mSeekThumbFontBoldStyle:Z

.field private mSeekThumbFontColor:I

.field private mSeekThumbFontEnable:Z

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSeekThumbFontSize:F

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosY:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->debug:Z

    .line 54
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 60
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    .line 65
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    .line 71
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 76
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 80
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 81
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    .line 83
    const/high16 v3, 0x4170

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    .line 86
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    .line 89
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverEnable:Z

    .line 90
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHovering:Z

    .line 91
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 121
    sget-object v3, Ltouchwiz/R$styleable;->TwSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 131
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbOffset(I)V

    .line 132
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    .line 133
    const/4 v3, 0x5

    const/high16 v4, 0x205

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 134
    const/4 v3, 0x6

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 135
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    .line 136
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 140
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 144
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    .line 146
    return-void

    .line 126
    .end local v2           #thumbOffset:I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 608
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 11
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 385
    .local v3, progress:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 387
    .local v4, progressSpacing:I
    if-gtz v4, :cond_0

    .line 388
    const/4 v4, 0x0

    .line 390
    :cond_0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    sub-int v0, v9, v4

    .line 391
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 392
    .local v7, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 393
    .local v5, thumbHeight:I
    sub-int/2addr v0, v7

    .line 396
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 398
    int-to-float v9, v0

    mul-float/2addr v9, p3

    float-to-int v9, v9

    add-int v6, v9, v4

    .line 401
    .local v6, thumbPos:I
    const/high16 v9, -0x8000

    if-ne p4, v9, :cond_1

    .line 402
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 403
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 404
    .local v8, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 411
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v9, v6, v7

    invoke-virtual {p2, v6, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 413
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 414
    return-void

    .line 406
    .end local v1           #bottomBound:I
    .end local v8           #topBound:I
    :cond_1
    move v8, p4

    .line 407
    .restart local v8       #topBound:I
    add-int v1, p4, v5

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 420
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 421
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 422
    .local v6, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 424
    .local v4, thumbHeight:I
    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 427
    .local v5, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 428
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 429
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 430
    .local v1, leftBound:I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 437
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v3, rightBound:I
    :goto_0
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 440
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 441
    return-void

    .line 432
    .end local v1           #leftBound:I
    .end local v3           #rightBound:I
    :cond_0
    move v1, p4

    .line 433
    .restart local v1       #leftBound:I
    add-int v3, p4, v6

    .restart local v3       #rightBound:I
    goto :goto_0
.end method

.method private trackHoverEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 701
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 703
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 704
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 706
    .local v7, y:I
    const/4 v3, 0x0

    .line 707
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 709
    .local v2, max:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_6

    .line 710
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    .line 712
    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    if-ltz v7, :cond_2

    if-le v7, v1, :cond_3

    .line 718
    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 719
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    goto :goto_0

    .line 723
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 724
    .local v0, available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4

    .line 725
    const/4 v4, 0x0

    .line 750
    .local v4, scale:F
    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 751
    float-to-int v8, v3

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    goto :goto_0

    .line 726
    .end local v4           #scale:F
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_5

    .line 727
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 729
    .end local v4           #scale:F
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 730
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 733
    .end local v0           #available:I
    .end local v4           #scale:F
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_7

    .line 735
    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 740
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 741
    .restart local v0       #available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_8

    .line 742
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 743
    .end local v4           #scale:F
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_9

    .line 744
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_1

    .line 746
    .end local v4           #scale:F
    :cond_9
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 747
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 544
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 546
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 547
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 549
    .local v7, y:I
    const/4 v3, 0x0

    .line 550
    .local v3, progress:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 552
    .local v2, max:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_6

    .line 553
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    .line 555
    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    if-ltz v7, :cond_2

    if-le v7, v1, :cond_3

    .line 561
    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 562
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    goto :goto_0

    .line 566
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 567
    .local v0, available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4

    .line 568
    const/4 v4, 0x0

    .line 593
    .local v4, scale:F
    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 597
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 569
    .end local v4           #scale:F
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_5

    .line 570
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 572
    .end local v4           #scale:F
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 573
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 576
    .end local v0           #available:I
    .end local v4           #scale:F
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_7

    .line 578
    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 583
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 584
    .restart local v0       #available:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_8

    .line 585
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_1

    .line 586
    .end local v4           #scale:F
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_9

    .line 587
    const/4 v4, 0x0

    .restart local v4       #scale:F
    goto :goto_1

    .line 589
    .end local v4           #scale:F
    :cond_9
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 590
    .restart local v4       #scale:F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 277
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->drawableStateChanged()V

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 280
    .local v1, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    .local v0, bgDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 287
    .local v2, state:[I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 290
    .end local v2           #state:[I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 292
    .restart local v2       #state:[I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 294
    .end local v2           #state:[I
    :cond_2
    return-void

    .line 281
    .end local v0           #bgDrawble:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/high16 v3, 0x437f

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSeekThumbFontColor()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    return v0
.end method

.method public getSeekThumbFontSize()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getThumbCenterPosX()I
    .locals 3

    .prologue
    .line 340
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 342
    .local v0, thumbCenterPosX:I
    return v0
.end method

.method public getThumbCenterPosY()I
    .locals 3

    .prologue
    .line 351
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 353
    .local v0, thumbCenterPosY:I
    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 447
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v0

    .line 448
    .local v0, height:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v1

    .line 458
    .local v1, progress:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 459
    .local v7, thumbWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 460
    .local v5, thumbHeight:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, thumbText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 463
    .local v2, rectText:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 464
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 468
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    .line 469
    .local v3, textX:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v0, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 475
    .local v4, textY:F
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 478
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_1
    monitor-exit p0

    return-void

    .line 471
    .restart local v1       #progress:I
    .restart local v2       #rectText:Landroid/graphics/Rect;
    .restart local v5       #thumbHeight:I
    .restart local v6       #thumbText:Ljava/lang/CharSequence;
    .restart local v7       #thumbWidth:I
    :cond_2
    :try_start_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    .line 472
    .restart local v3       #textX:F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v9, v9

    sub-float v4, v8, v9

    .restart local v4       #textY:F
    goto :goto_0

    .line 445
    .end local v0           #height:I
    .end local v1           #progress:I
    .end local v2           #rectText:Landroid/graphics/Rect;
    .end local v3           #textX:F
    .end local v4           #textY:F
    .end local v5           #thumbHeight:I
    .end local v6           #thumbText:Ljava/lang/CharSequence;
    .end local v7           #thumbWidth:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method onHoverChanged(III)V
    .locals 1
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 696
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    .line 697
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 664
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 665
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 667
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverEnable:Z

    if-ne v2, v1, :cond_0

    .line 670
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 671
    .local v0, action:I
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    .line 672
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackHoverEvent(Landroid/view/MotionEvent;)V

    .line 673
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_0

    .line 674
    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    .line 675
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackHoverEvent(Landroid/view/MotionEvent;)V

    .line 676
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onHoverChanged(III)V

    goto :goto_0

    .line 677
    :cond_3
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 631
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v0

    .line 633
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 659
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 635
    :pswitch_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 636
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 641
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 642
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 647
    :pswitch_2
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 486
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 487
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 488
    .local v2, dw:I
    const/4 v1, 0x0

    .line 489
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 490
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 491
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 492
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 494
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 495
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 497
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 486
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 484
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    const/high16 v2, -0x8000

    .line 298
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 299
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 312
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 317
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 318
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 319
    .local v4, thumbHeight:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    .line 320
    .local v1, max:I
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 323
    .local v2, scale:F
    :goto_1
    if-eqz v3, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 325
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v0, v5, 0x2

    .line 326
    .local v0, gap:I
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 332
    .end local v0           #gap:I
    :cond_0
    :goto_2
    return-void

    .line 318
    .end local v1           #max:I
    .end local v2           #scale:F
    .end local v4           #thumbHeight:I
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 320
    .restart local v1       #max:I
    .restart local v4       #thumbHeight:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 328
    .restart local v2       #scale:F
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 329
    .restart local v0       #gap:I
    invoke-direct {p0, p2, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingHover(III)V
    .locals 2
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHovering:Z

    .line 687
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHovering:Z

    .line 691
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 692
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 539
    :goto_0
    return v0

    .line 507
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 509
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 510
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 511
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingTouch()V

    .line 512
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 517
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 524
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 525
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 533
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 534
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 535
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 536
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 756
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 757
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverEnable:Z

    .line 761
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setHoverPopupType(I)V

    .line 762
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 767
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 768
    .local v0, contentHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 769
    return-void

    .line 759
    .end local v0           #contentHeight:I
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverEnable:Z

    goto :goto_0
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 196
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 197
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 215
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeekThumbFontColor(I)V
    .locals 0
    .parameter "resourceID"

    .prologue
    .line 249
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 250
    return-void
.end method

.method public setSeekThumbFontEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 268
    return-void
.end method

.method public setSeekThumbFontSize(I)V
    .locals 2
    .parameter "fontSize"

    .prologue
    .line 227
    if-gez p1, :cond_0

    .line 228
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 168
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 185
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 187
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
