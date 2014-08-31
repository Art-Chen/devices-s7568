.class public Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
.super Landroid/widget/LinearLayout;
.source "TimeElement.java"

# interfaces
.implements Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/TimeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeElementView"
.end annotation


# instance fields
.field private mHour:I

.field private mMinute:I

.field private mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/TimeElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/TimeElement;Lcom/baidu/themeanimation/element/TimeElement;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "timeElement"
    .parameter "context"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    .line 104
    invoke-direct {p0, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    iput-object p2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 112
    iget v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 113
    iget v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/baidu/themeanimation/element/TimeElement;->checkIs24HoursMode(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/baidu/themeanimation/element/TimeElement;->access$100(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    add-int/lit8 v1, v1, -0xc

    :goto_0
    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 120
    :cond_0
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    rem-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    const/16 v1, 0x3a

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    rem-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1, p3}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V

    .line 128
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/VisibleElement;->setOnTimeTick(Lcom/baidu/themeanimation/element/VisibleElement$OnTimeTick;)V

    .line 129
    return-void

    .line 116
    :cond_1
    iget v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V

    return-void
.end method

.method private createDigitView(ILandroid/content/Context;)Landroid/widget/ImageView;
    .locals 5
    .parameter "digit"
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    .line 205
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, srcPath:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-object v1
.end method

.method private getFilePath(I)Ljava/lang/String;
    .locals 4
    .parameter "digit"

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v2, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mTimeElement:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TimeElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, filename:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 190
    .local v0, dotIndex:I
    if-ltz p1, :cond_1

    const/16 v2, 0x9

    if-gt p1, v2, :cond_1

    .line 191
    if-lez v0, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_0

    .line 196
    if-lez v0, :cond_0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateLayoutParams()V
    .locals 5

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, width:I
    const/4 v0, 0x0

    .line 134
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 136
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 137
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 138
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4, v3}, Lcom/baidu/themeanimation/element/VisibleElement;->setRealW(I)V

    .line 143
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->setRealH(I)V

    .line 144
    iget-object v4, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->this$0:Lcom/baidu/themeanimation/element/TimeElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/VisibleElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->refreshTime()V

    .line 217
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 222
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->refreshTime()V

    .line 223
    return-void
.end method

.method public refreshTime()V
    .locals 8

    .prologue
    .line 148
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 149
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 150
    iget v1, v5, Landroid/text/format/Time;->hour:I

    .line 151
    .local v1, hour:I
    iget v3, v5, Landroid/text/format/Time;->minute:I

    .line 154
    .local v3, minute:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/baidu/themeanimation/element/TimeElement;->checkIs24HoursMode(Landroid/content/Context;)Z
    invoke-static {v6}, Lcom/baidu/themeanimation/element/TimeElement;->access$100(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 157
    .local v4, realHour:I
    if-nez v4, :cond_7

    const/16 v1, 0xc

    .line 161
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v4           #realHour:I
    :cond_0
    :goto_0
    iget v6, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    if-eq v6, v1, :cond_3

    .line 162
    iget v6, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    div-int/lit8 v6, v6, 0xa

    div-int/lit8 v7, v1, 0xa

    if-eq v6, v7, :cond_1

    .line 163
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 164
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    div-int/lit8 v7, v1, 0xa

    invoke-direct {p0, v7}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 166
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1
    iget v6, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    rem-int/lit8 v6, v6, 0xa

    rem-int/lit8 v7, v1, 0xa

    if-eq v6, v7, :cond_2

    .line 167
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 168
    .restart local v2       #imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    rem-int/lit8 v7, v1, 0xa

    invoke-direct {p0, v7}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 170
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_2
    iput v1, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mHour:I

    .line 173
    :cond_3
    iget v6, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    if-eq v6, v3, :cond_6

    .line 174
    iget v6, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    div-int/lit8 v6, v6, 0xa

    div-int/lit8 v7, v3, 0xa

    if-eq v6, v7, :cond_4

    .line 175
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 176
    .restart local v2       #imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    div-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 178
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_4
    iget v6, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    rem-int/lit8 v6, v6, 0xa

    rem-int/lit8 v7, v3, 0xa

    if-eq v6, v7, :cond_5

    .line 179
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 180
    .restart local v2       #imageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v6

    rem-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getFilePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/baidu/themeanimation/util/FileUtil;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 182
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_5
    iput v3, p0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->mMinute:I

    .line 184
    :cond_6
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V

    .line 185
    return-void

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v4       #realHour:I
    :cond_7
    move v1, v4

    .line 157
    goto/16 :goto_0
.end method
