.class public Lcom/sec/android/touchwiz/widget/TwGridView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 86
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 88
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 94
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 95
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 86
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 88
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 89
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 94
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 95
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 97
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 99
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 112
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 117
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->setHorizontalSpacing(I)V

    .line 119
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 121
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->setVerticalSpacing(I)V

    .line 123
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 124
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 125
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setStretchMode(I)V

    .line 128
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 129
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 130
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setColumnWidth(I)V

    .line 133
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 134
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNumColumns(I)V

    .line 136
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 137
    if-ltz v3, :cond_2

    .line 138
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setGravity(I)V

    .line 141
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 791
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 792
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 795
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 797
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 818
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 819
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 822
    .local v0, offset:I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 824
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2046
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 2050
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2053
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2054
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2055
    .local v2, delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2058
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2060
    :cond_0
    if-gez v2, :cond_1

    .line 2062
    const/4 v2, 0x0

    .line 2081
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2082
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 2085
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 2066
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2067
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2069
    .restart local v2       #delta:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2072
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2075
    :cond_4
    if-lez v2, :cond_1

    .line 2077
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1533
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1660
    :goto_0
    return v2

    .line 1537
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1538
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1541
    :cond_1
    const/4 v1, 0x0

    .line 1542
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1544
    .local v0, action:I
    if-eq v0, v3, :cond_2

    .line 1545
    sparse-switch p1, :sswitch_data_0

    .line 1644
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1645
    goto :goto_0

    .line 1547
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1548
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1553
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1559
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1560
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1561
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1562
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1567
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1569
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1576
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1577
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1578
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1580
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->keyPressed()V

    .line 1581
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1587
    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1588
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1589
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1590
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1591
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1597
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1598
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1599
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1600
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1605
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1606
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1607
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1608
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1613
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1614
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1619
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1620
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1648
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1649
    goto/16 :goto_0

    .line 1652
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1654
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1656
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1658
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1545
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 592
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 593
    .local v6, lastPosition:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 595
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 598
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 600
    .local v4, lastBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 604
    .local v1, end:I
    sub-int v0, v1, v4

    .line 606
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 607
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 611
    .local v3, firstTop:I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 612
    :cond_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 614
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 618
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 619
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 622
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 625
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 629
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 632
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 634
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 637
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 640
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 643
    .local v6, start:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 647
    .local v0, end:I
    sub-int v7, v2, v6

    .line 648
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 649
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 650
    .local v3, lastBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 654
    .local v5, lastPosition:I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 655
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 657
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 661
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 662
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 665
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 668
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 672
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .parameter "availableSpace"

    .prologue
    const/4 v7, 0x1

    .line 947
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 948
    .local v2, requestedHorizontalSpacing:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 949
    .local v4, stretchMode:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 950
    .local v1, requestedColumnWidth:I
    const/4 v0, 0x0

    .line 952
    .local v0, didNotInitiallyFit:Z
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 953
    if-lez v1, :cond_2

    .line 955
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 966
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 967
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 970
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 978
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 981
    .local v3, spaceLeftOver:I
    if-gez v3, :cond_1

    .line 982
    const/4 v0, 0x1

    .line 985
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1017
    .end local v3           #spaceLeftOver:I
    :goto_1
    return v0

    .line 959
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_0

    .line 963
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_0

    .line 973
    :pswitch_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 974
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 988
    .restart local v3       #spaceLeftOver:I
    :pswitch_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 989
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 994
    :pswitch_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 995
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 996
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 999
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1005
    :pswitch_3
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 1006
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1007
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1010
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 985
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 5
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 277
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int v0, v3, v4

    .line 278
    .local v0, end:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 279
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 282
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge p1, v3, :cond_3

    .line 283
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 285
    move-object v1, v2

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 292
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 298
    :goto_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 299
    goto :goto_0

    .line 295
    :cond_2
    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    goto :goto_1

    .line 301
    .end local v2           #temp:Landroid/view/View;
    :cond_3
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 421
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 422
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 424
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 425
    .local v0, invertedPosition:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 686
    .local v2, fadingEdgeLength:I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 687
    .local v9, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 688
    .local v4, numColumns:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 691
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 693
    .local v6, rowEnd:I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 694
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 705
    .local v7, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 706
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 709
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 711
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 713
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 715
    .local v5, referenceView:Landroid/view/View;
    if-nez v5, :cond_2

    .line 731
    :goto_2
    return-object v8

    .line 696
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_0
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 698
    .local v3, invertedSelection:I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 699
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_1
    move v12, v7

    .line 709
    goto :goto_1

    .line 717
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 718
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 720
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_3

    .line 721
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 722
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 723
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    .line 725
    :cond_3
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 726
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 727
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 411
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 412
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 413
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 416
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 417
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 432
    .local v10, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 433
    .local v4, numColumns:I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 436
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 438
    .local v7, rowEnd:I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 439
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 447
    .local v8, rowStart:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 448
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 450
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 451
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 453
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 455
    .local v6, referenceView:Landroid/view/View;
    if-nez v6, :cond_2

    .line 473
    :goto_2
    return-object v9

    .line 441
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 443
    .local v3, invertedSelection:I
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 444
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v13, v8

    .line 450
    goto :goto_1

    .line 457
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_3

    .line 458
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 459
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToBottom(I)V

    .line 460
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 461
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 463
    :cond_3
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 465
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 466
    .local v5, offset:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 467
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 468
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToTop(I)V

    .line 469
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 470
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    .line 531
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 534
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 536
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 537
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 545
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 548
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 550
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 552
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_3

    .line 553
    const/4 v8, 0x0

    .line 586
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 539
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 541
    .local v3, invertedSelection:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 542
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_2
    move v10, v5

    .line 545
    goto :goto_1

    .line 556
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 561
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 562
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 564
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 566
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 567
    .local v2, childCount:I
    if-lez v2, :cond_4

    .line 568
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 581
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 583
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 584
    goto :goto_2

    .line 571
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 572
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 573
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 575
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 576
    .restart local v2       #childCount:I
    if-lez v2, :cond_4

    .line 577
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 586
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, selectedView:Landroid/view/View;
    const/4 v0, 0x0

    .line 371
    .local v0, end:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 372
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 375
    :cond_0
    :goto_0
    if-le p2, v0, :cond_3

    if-ltz p1, :cond_3

    .line 377
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 379
    move-object v1, v2

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 390
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 392
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 393
    goto :goto_0

    .line 387
    :cond_2
    iget p2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    goto :goto_1

    .line 395
    .end local v2           #temp:Landroid/view/View;
    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_4

    .line 396
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 399
    :cond_4
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 746
    move v0, p1

    .line 747
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 748
    sub-int/2addr v0, p2

    .line 750
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 763
    move v0, p1

    .line 764
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 765
    add-int/2addr v0, p2

    .line 767
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1891
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1892
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1897
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 1898
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1899
    .local v3, rowStart:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1905
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1926
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1901
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1902
    .restart local v2       #rowEnd:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1909
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 1924
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 1909
    goto :goto_1

    .line 1912
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 1915
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 1918
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 1921
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 1924
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 1905
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1338
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1341
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1353
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1348
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1351
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1353
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 15
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 305
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 306
    .local v8, columnWidth:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 309
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    move v0, v10

    :goto_0
    add-int v4, v2, v0

    .line 312
    .local v4, nextLeft:I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_5

    .line 313
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 323
    .local v12, last:I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    .line 325
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v9

    .line 326
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 327
    .local v11, inClick:Z
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 329
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 330
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2
    if-ge v1, v12, :cond_8

    .line 332
    if-ne v1, v13, :cond_6

    const/4 v5, 0x1

    .line 335
    .local v5, selected:Z
    :goto_3
    if-eqz p3, :cond_7

    const/4 v6, -0x1

    .local v6, where:I
    :goto_4
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 336
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 338
    add-int/2addr v4, v8

    .line 339
    add-int/lit8 v0, v12, -0x1

    if-ge v1, v0, :cond_1

    .line 340
    add-int/2addr v4, v10

    .line 343
    :cond_1
    if-eqz v5, :cond_3

    if-nez v9, :cond_2

    if-eqz v11, :cond_3

    .line 344
    :cond_2
    move-object v14, v7

    .line 330
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    .restart local v4       #nextLeft:I
    :cond_5
    add-int/lit8 v12, p1, 0x1

    .line 316
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 318
    sub-int v0, v12, p1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-ge v0, v2, :cond_0

    .line 319
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v2, v12, p1

    sub-int/2addr v0, v2

    add-int v2, v8, v10

    mul-int/2addr v0, v2

    add-int/2addr v4, v0

    goto :goto_1

    .line 332
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 335
    .restart local v5       #selected:Z
    :cond_7
    sub-int v6, v1, p1

    goto :goto_4

    .line 348
    .end local v5           #selected:Z
    :cond_8
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 350
    if-eqz v14, :cond_9

    .line 351
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 354
    :cond_9
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 861
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 862
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 863
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 867
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 869
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 870
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 872
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 884
    .local v14, rowStart:I
    :goto_0
    sub-int v12, v14, v9

    .line 886
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 887
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 891
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 896
    if-lez v12, :cond_3

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 904
    .local v8, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 905
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 907
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 931
    .end local v8           #oldBottom:I
    :goto_3
    if-nez v11, :cond_9

    .line 943
    :goto_4
    return-object v15

    .line 874
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 876
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 877
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 879
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 881
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 901
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_1

    .restart local v8       #oldBottom:I
    :cond_2
    move/from16 v19, v14

    .line 904
    goto :goto_2

    .line 908
    .end local v8           #oldBottom:I
    :cond_3
    if-gez v12, :cond_6

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 915
    .local v10, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 916
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 918
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 912
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10       #oldTop:I
    :cond_5
    move/from16 v19, v14

    .line 915
    goto :goto_6

    .line 923
    .end local v10           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 926
    .restart local v10       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 927
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 923
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10       #oldTop:I
    :cond_8
    move/from16 v19, v14

    .line 926
    goto :goto_8

    .line 933
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 934
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 936
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    goto/16 :goto_4

    .line 938
    :cond_a
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 940
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 488
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 489
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 490
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 491
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 492
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 495
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 477
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 478
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 479
    .local v1, top:I
    sub-int v0, p1, v1

    .line 480
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 484
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1374
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1375
    .local v14, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1376
    .local v20, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1377
    .local v16, mode:I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1379
    .local v13, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1381
    .local v19, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1385
    .local v17, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1386
    .local v18, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1387
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v18           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1390
    .restart local v18       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1392
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    :goto_5
    if-eqz v20, :cond_2

    .line 1400
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1401
    if-eqz v14, :cond_2

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestFocus()Z

    .line 1406
    :cond_2
    if-eqz v19, :cond_3

    .line 1407
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1410
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1411
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1412
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1419
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1420
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1423
    .local v7, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1425
    .local v11, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1430
    .end local v7           #childHeightSpec:I
    .end local v11           #childWidthSpec:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1431
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1434
    .local v12, h:I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1436
    .local v10, childTop:I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getResolvedLayoutDirection()I

    move-result v15

    .line 1437
    .local v15, layoutDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1438
    .local v5, absoluteGravity:I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1449
    :pswitch_0
    move/from16 v8, p5

    .line 1453
    .local v8, childLeft:I
    :goto_9
    if-eqz v17, :cond_10

    .line 1454
    add-int v9, v8, v21

    .line 1455
    .local v9, childRight:I
    add-int v6, v10, v12

    .line 1456
    .local v6, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1462
    .end local v6           #childBottom:I
    .end local v9           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1463
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1466
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1470
    :cond_6
    return-void

    .line 1374
    .end local v5           #absoluteGravity:I
    .end local v8           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v15           #layoutDirection:I
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1375
    .restart local v14       #isSelected:Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1377
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1379
    .restart local v13       #isPressed:Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1381
    .restart local v19       #updateChildPressed:Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1395
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1396
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1413
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1427
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1434
    .restart local v12       #h:I
    .restart local v21       #w:I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1440
    .restart local v5       #absoluteGravity:I
    .restart local v10       #childTop:I
    .restart local v15       #layoutDirection:I
    :pswitch_1
    move/from16 v8, p5

    .line 1441
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1443
    .end local v8           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1444
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1446
    .end local v8           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1447
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1458
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1459
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1726
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1727
    .local v4, selectedPosition:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1732
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1734
    .local v2, moved:Z
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1735
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1736
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1743
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1774
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1775
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1776
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1779
    :cond_1
    if-eqz v2, :cond_2

    .line 1780
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1783
    :cond_2
    return v2

    .line 1738
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1739
    .local v1, invertedSelection:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1740
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1745
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1746
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1747
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1748
    const/4 v2, 0x1

    goto :goto_1

    .line 1752
    :sswitch_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1753
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1754
    add-int v6, v4, v3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1755
    const/4 v2, 0x1

    goto :goto_1

    .line 1759
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1760
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1761
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1762
    const/4 v2, 0x1

    goto :goto_1

    .line 1766
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1767
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1768
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1769
    const/4 v2, 0x1

    goto :goto_1

    .line 1743
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1115
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1118
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1120
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1123
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1124
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1125
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1126
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1128
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1129
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1130
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1137
    :goto_0
    return-void

    .line 1132
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1134
    .local v1, invertedIndex:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1135
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 2089
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2090
    .local v1, count:I
    if-lez v1, :cond_3

    .line 2091
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2092
    .local v4, numColumns:I
    add-int v11, v1, v4

    add-int/lit8 v11, v11, -0x1

    div-int v7, v11, v4

    .line 2094
    .local v7, rowCount:I
    mul-int/lit8 v2, v7, 0x64

    .line 2096
    .local v2, extent:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2097
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2098
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2099
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2100
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 2103
    :cond_0
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2104
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2105
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2106
    if-lez v3, :cond_1

    .line 2107
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 2110
    :cond_1
    move v6, v2

    .line 2112
    .local v6, retVal:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 2114
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 2116
    .local v5, ratio:F
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .line 2120
    .end local v5           #ratio:F
    :cond_2
    const/4 v10, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2122
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v6           #retVal:I
    .end local v7           #rowCount:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollOffset()I
    .locals 14

    .prologue
    .line 2127
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-ltz v11, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_2

    .line 2128
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2129
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2130
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2131
    .local v1, height:I
    const/4 v4, 0x0

    .line 2132
    .local v4, retVal:I
    if-lez v1, :cond_0

    .line 2133
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2134
    .local v3, numColumns:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    div-int v10, v11, v3

    .line 2135
    .local v10, whichRow:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x1

    div-int v5, v11, v3

    .line 2138
    .local v5, rowCount:I
    mul-int/lit8 v11, v10, 0x64

    mul-int/lit8 v12, v8, 0x64

    div-int/2addr v12, v1

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    int-to-float v13, v5

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2142
    .end local v3           #numColumns:I
    .end local v5           #rowCount:I
    .end local v10           #whichRow:I
    :cond_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v11, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 2143
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v6, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2144
    .local v6, savedBounceExtent:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollExtent()I

    move-result v7

    .line 2145
    .local v7, shrinkedScrollExtent:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v12, 0x0

    iput v12, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2146
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->computeVerticalScrollExtent()I

    move-result v2

    .line 2147
    .local v2, normalScrollExtent:I
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v6, v11, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2149
    sub-int v0, v2, v7

    .line 2151
    .local v0, delta:I
    add-int/2addr v4, v0

    .line 2156
    .end local v0           #delta:I
    .end local v1           #height:I
    .end local v2           #normalScrollExtent:I
    .end local v4           #retVal:I
    .end local v6           #savedBounceExtent:F
    .end local v7           #shrinkedScrollExtent:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2162
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2163
    .local v0, numColumns:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2164
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2165
    .local v1, result:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2167
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2169
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 9
    .parameter "down"

    .prologue
    const/16 v8, 0x22

    .line 227
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 228
    .local v1, numColumns:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 230
    .local v6, verticalSpacing:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 232
    .local v0, count:I
    if-eqz p1, :cond_3

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, paddingTop:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingTop()I

    move-result v3

    .line 237
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 239
    .local v5, startOffset:I
    :goto_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 240
    .local v4, position:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 241
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 243
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 261
    .end local v3           #paddingTop:I
    :goto_1
    return-void

    .end local v4           #position:I
    .end local v5           #startOffset:I
    .restart local v3       #paddingTop:I
    :cond_2
    move v5, v3

    .line 237
    goto :goto_0

    .line 246
    .end local v3           #paddingTop:I
    :cond_3
    const/4 v2, 0x0

    .line 247
    .local v2, paddingBottom:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingBottom()I

    move-result v2

    .line 250
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 252
    .restart local v5       #startOffset:I
    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 253
    .restart local v4       #position:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 254
    sub-int/2addr v4, v1

    .line 258
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_1

    .line 250
    .end local v4           #position:I
    .end local v5           #startOffset:I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 256
    .restart local v4       #position:I
    .restart local v5       #startOffset:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 500
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 502
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 503
    .local v2, numColumns:I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 504
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 505
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 506
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 517
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 504
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 510
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 511
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 512
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 510
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 517
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1699
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1700
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1701
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1702
    const/4 v0, 0x1

    .line 1710
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1714
    :cond_1
    return v0

    .line 1703
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1704
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1705
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1706
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1707
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2036
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 1995
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1141
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1142
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_0

    .line 1143
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1147
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    if-nez v3, :cond_1

    .line 1311
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 1314
    :cond_1
    :goto_0
    return-void

    .line 1157
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1158
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1160
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v5

    .line 1162
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1165
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1166
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1167
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1170
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1190
    .local v12, index:I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1191
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1195
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1198
    .end local v12           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1199
    .local v8, dataChanged:Z
    if-eqz v8, :cond_5

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->handleDataChanged()V

    .line 1205
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    if-nez v3, :cond_1

    .line 1311
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1172
    .end local v8           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1173
    .restart local v12       #index:I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1174
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1183
    .end local v12           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1211
    .restart local v8       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1215
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1216
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1218
    .local v17, recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1219
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1220
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1219
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1223
    .end local v11           #i:I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1228
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->detachAllViewsFromParent()V

    .line 1230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1258
    if-nez v5, :cond_12

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_e

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1262
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1284
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1286
    if-eqz v18, :cond_17

    .line 1287
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    .line 1288
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1297
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1298
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1299
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->updateScrollIndicators()V

    .line 1304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 1308
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1310
    if-nez v3, :cond_1

    .line 1311
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1232
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_3
    if-eqz v14, :cond_c

    .line 1233
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1235
    .end local v18           #sel:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1237
    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1239
    .end local v18           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1240
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1241
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1310
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_d

    .line 1311
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    :cond_d
    throw v19

    .line 1244
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1245
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1248
    .end local v18           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1249
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1251
    .end local v18           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1252
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1255
    .end local v18           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1256
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1260
    .end local v18           #sel:Landroid/view/View;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1264
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1265
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_10
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1267
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1268
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    :cond_11
    move/from16 v19, v13

    .line 1265
    goto :goto_6

    .line 1270
    .end local v13           #last:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 1271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_13

    .end local v7           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_13
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1273
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 1274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_15

    .end local v7           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_15
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1277
    :cond_16
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1289
    .end local v7           #childrenTop:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    .line 1290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1291
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1293
    .end local v4           #child:Landroid/view/View;
    :cond_18
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1230
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 211
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 212
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 219
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 216
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 217
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1846
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1848
    const/4 v1, -0x1

    .line 1849
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1850
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1854
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1855
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1856
    .local v4, minDistance:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1857
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1859
    invoke-direct {p0, v3, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1857
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1863
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1864
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1865
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1866
    invoke-static {p3, v6, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1868
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1869
    move v4, v2

    .line 1870
    move v1, v3

    goto :goto_1

    .line 1875
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1876
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelection(I)V

    .line 1880
    :goto_2
    return-void

    .line 1878
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1519
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1524
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1529
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1023
    invoke-super/range {p0 .. p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1025
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1026
    .local v18, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1027
    .local v12, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1028
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1030
    .local v13, heightSize:I
    if-nez v18, :cond_0

    .line 1031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    .line 1032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    .line 1036
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalScrollbarWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 1039
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 1040
    .local v8, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->determineColumns(I)Z

    move-result v11

    .line 1042
    .local v11, didNotInitiallyFit:Z
    const/4 v5, 0x0

    .line 1043
    .local v5, childHeight:I
    const/4 v7, 0x0

    .line 1045
    .local v7, childState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1046
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1047
    .local v10, count:I
    if-lez v10, :cond_2

    .line 1048
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 1051
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1052
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1053
    .local v17, p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v17, :cond_1

    .line 1054
    new-instance v17, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .end local v17           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    .line 1056
    .restart local v17       #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1059
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1061
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1063
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1065
    .local v9, childWidthSpec:I
    invoke-virtual {v4, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1067
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1068
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->combineMeasuredStates(II)I

    move-result v7

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1076
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v17           #p:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2
    if-nez v12, :cond_3

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    add-int v20, v20, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 1081
    :cond_3
    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1084
    .local v16, ourSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1085
    .local v15, numColumns:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v10, :cond_5

    .line 1086
    add-int v16, v16, v5

    .line 1087
    add-int v20, v14, v15

    move/from16 v0, v20

    if-ge v0, v10, :cond_4

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1090
    :cond_4
    move/from16 v0, v16

    if-lt v0, v13, :cond_b

    .line 1091
    move/from16 v16, v13

    .line 1095
    :cond_5
    move/from16 v13, v16

    .line 1098
    .end local v14           #i:I
    .end local v15           #numColumns:I
    .end local v16           #ourSize:I
    :cond_6
    const/high16 v20, -0x8000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1099
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 1102
    .restart local v16       #ourSize:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    if-eqz v11, :cond_8

    .line 1103
    :cond_7
    const/high16 v20, 0x100

    or-int v19, v19, v20

    .line 1107
    .end local v16           #ourSize:I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->setMeasuredDimension(II)V

    .line 1108
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 1109
    return-void

    .line 1034
    .end local v5           #childHeight:I
    .end local v7           #childState:I
    .end local v8           #childWidth:I
    .end local v10           #count:I
    .end local v11           #didNotInitiallyFit:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v19, v20, v21

    goto/16 :goto_0

    .line 1045
    .restart local v5       #childHeight:I
    .restart local v7       #childState:I
    .restart local v8       #childWidth:I
    .restart local v11       #didNotInitiallyFit:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/widget/ListAdapter;->getCount()I

    move-result v20

    goto/16 :goto_1

    .line 1085
    .restart local v10       #count:I
    .restart local v14       #i:I
    .restart local v15       #numColumns:I
    .restart local v16       #ourSize:I
    :cond_b
    add-int/2addr v14, v15

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1671
    const/4 v0, -0x1

    .line 1673
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1674
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1679
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1680
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1681
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1682
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1683
    const/4 v1, 0x1

    .line 1686
    :cond_1
    return v1

    .line 1675
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1676
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .parameter "direction"

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1791
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 1792
    .local v5, selectedPosition:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1793
    .local v4, numColumns:I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1797
    .local v0, count:I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1798
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1799
    .local v7, startOfRow:I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1806
    .local v1, endOfRow:I
    :goto_0
    const/4 v3, 0x0

    .line 1807
    .local v3, moved:Z
    const/4 v6, 0x0

    .line 1808
    .local v6, showScroll:Z
    packed-switch p1, :pswitch_data_0

    .line 1832
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1833
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1834
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1837
    :cond_1
    if-eqz v6, :cond_2

    .line 1838
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1841
    :cond_2
    return v3

    .line 1801
    .end local v1           #endOfRow:I
    .end local v3           #moved:Z
    .end local v6           #showScroll:Z
    .end local v7           #startOfRow:I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1802
    .local v2, invertedSelection:I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1803
    .restart local v1       #endOfRow:I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #startOfRow:I
    goto :goto_0

    .line 1810
    .end local v2           #invertedSelection:I
    .restart local v3       #moved:Z
    .restart local v6       #showScroll:Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1812
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1813
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1814
    const/4 v3, 0x1

    .line 1816
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1821
    :pswitch_1
    if-lez v5, :cond_0

    .line 1823
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1824
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1825
    const/4 v3, 0x1

    .line 1827
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 171
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 172
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 174
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 175
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 178
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 181
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 182
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 183
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 186
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 187
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 192
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 193
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 197
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 206
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 207
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 201
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 2006
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2007
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 2008
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2010
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1940
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1941
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 1942
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1944
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 1956
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1957
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 1958
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1960
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 2020
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2021
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    .line 2022
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2024
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1483
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1487
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 1489
    return-void

    .line 1485
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1498
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 1500
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1503
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1505
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1508
    .local v2, previous:I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1509
    .local v1, nextRow:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1511
    .local v3, previousRow:I
    if-eq v1, v3, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1515
    :cond_0
    return-void

    .line 1503
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0       #next:I
    :cond_2
    move v2, v4

    .line 1505
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 1988
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 1989
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 1990
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1992
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 1973
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1974
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 1975
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 1977
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 843
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 844
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 833
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 834
    return-void
.end method
