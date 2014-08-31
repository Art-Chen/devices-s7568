.class public Lcom/baidu/themeanimation/element/TextElement$TextElementView;
.super Landroid/view/View;
.source "TextElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/TextElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextElementView"
.end annotation


# static fields
.field private static final mTruncate:Ljava/lang/String; = "..."


# instance fields
.field private mEndIndex:I

.field private mTextHeight:I

.field private mTextWidth:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/TextElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/TextElement;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, -0x2

    .line 212
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    .line 213
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 209
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    .line 210
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    .line 233
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 215
    iget-object v1, p1, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v1, p1, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    iget-object v1, p1, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 219
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    .line 220
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v2, p1, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getBold()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 222
    iget-object v1, p1, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    .line 224
    :cond_0
    iget v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    invoke-virtual {p1, v1}, Lcom/baidu/themeanimation/element/VisibleElement;->setRealW(I)V

    .line 225
    iget v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextHeight:I

    invoke-virtual {p1, v1}, Lcom/baidu/themeanimation/element/VisibleElement;->setRealH(I)V

    .line 226
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->hasW()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getW()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->truncateText(I)V

    .line 231
    :cond_1
    return-void

    .line 221
    :cond_2
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private truncateText(I)V
    .locals 8
    .parameter "length"

    .prologue
    .line 237
    const/4 v6, -0x1

    iput v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 238
    iget v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    if-ge p1, v6, :cond_0

    .line 239
    iget-object v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, text:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 243
    .local v0, end:I
    const/4 v1, 0x0

    .line 244
    .local v1, middle:I
    const/4 v3, 0x0

    .line 246
    .local v3, tempLength:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 247
    add-int v6, v2, v0

    div-int/lit8 v1, v6, 0x2

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, tempTextString:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v3, v6

    .line 253
    if-gt v3, p1, :cond_1

    add-int/lit8 v6, p1, -0xa

    if-le v3, v6, :cond_1

    .line 255
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 270
    .end local v0           #end:I
    .end local v1           #middle:I
    .end local v2           #start:I
    .end local v3           #tempLength:I
    .end local v4           #tempTextString:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 257
    .restart local v0       #end:I
    .restart local v1       #middle:I
    .restart local v2       #start:I
    .restart local v3       #tempLength:I
    .restart local v4       #tempTextString:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    :cond_1
    if-le v3, p1, :cond_2

    .line 258
    move v0, v1

    goto :goto_0

    .line 260
    :cond_2
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 261
    if-ne v2, v1, :cond_3

    .line 262
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 264
    :cond_3
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0x3fe999999999999aL

    .line 274
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v0, v0, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 277
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    if-ltz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v2, v2, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TextElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v2, v2, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 300
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TextElement;->refresh()V

    .line 301
    return-void
.end method

.method public updateText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mEndIndex:I

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v1, v0, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/TextElement;->getBold()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 291
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget-object v0, v0, Lcom/baidu/themeanimation/element/VisibleElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    .line 292
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    iget v1, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->mTextWidth:I

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/VisibleElement;->setRealW(I)V

    .line 293
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->this$0:Lcom/baidu/themeanimation/element/TextElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_0
    return-void

    .line 290
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method
