.class public Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;
.super Ljava/lang/Object;
.source "TwScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;,
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_POINTER_ID:I = 0x10

.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "TwScaleGestureDetector"


# instance fields
.field private AREA_THRESHOLD:F

.field private mAreaBegin:F

.field private mAreaCurrent:F

.field private final mContext:Landroid/content/Context;

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private mLenBegin:F

.field private mLenCurrent:F

.field private final mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

.field private mPointBegin:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

.field private mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

.field private mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

.field private mScaleFactor:F

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mLenBegin:F

    .line 148
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mLenCurrent:F

    .line 149
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaBegin:F

    .line 150
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaCurrent:F

    .line 151
    const v0, 0x45bb8000

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    .line 168
    iput-object p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    .line 170
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)F
    .locals 12
    .parameter "event"

    .prologue
    const/high16 v9, 0x4120

    const/high16 v11, 0x3f00

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, bInitialized:Z
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    .line 230
    :cond_0
    new-instance v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;-><init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iput-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    .line 232
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v7, 0x10

    if-ge v2, v7, :cond_7

    .line 234
    const/4 v3, -0x1

    .line 236
    .local v3, pointerId:I
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 237
    if-gez v3, :cond_2

    .line 232
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1

    .line 242
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 243
    .local v4, pointerIndex:I
    if-ltz v4, :cond_1

    .line 245
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 246
    .local v5, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 248
    .local v6, y:F
    if-eqz v0, :cond_6

    .line 249
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_3

    .line 250
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput v5, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minX:F

    .line 252
    :cond_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_4

    .line 253
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput v6, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minY:F

    .line 255
    :cond_4
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_5

    .line 256
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput v5, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxX:F

    .line 258
    :cond_5
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput v6, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxY:F

    goto :goto_1

    .line 262
    :cond_6
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput v5, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minX:F

    .line 263
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    add-float v8, v5, v9

    iput v8, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxX:F

    .line 264
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput v6, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minY:F

    .line 265
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    add-float v8, v6, v9

    iput v8, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxY:F

    .line 266
    const/4 v0, 0x1

    goto :goto_1

    .line 270
    .end local v3           #pointerId:I
    .end local v4           #pointerIndex:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_7
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxX:F

    iget-object v9, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v9, v9, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minX:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffX:F

    .line 271
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxY:F

    iget-object v9, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v9, v9, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minY:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffY:F

    .line 273
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mTimeStamp:J

    .line 274
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffX:F

    iget-object v9, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v9, v9, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffX:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v9, v9, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffY:F

    iget-object v10, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v10, v10, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    iput v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaCurrent:F

    .line 277
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minX:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffX:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    .line 278
    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minY:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffY:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    .line 280
    iget v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaCurrent:F

    return v7
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 285
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    .line 286
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mInvalidGesture:Z

    .line 288
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mLenBegin:F

    .line 289
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mLenCurrent:F

    .line 290
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaBegin:F

    .line 291
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaCurrent:F

    .line 293
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointBegin:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointBegin:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    .line 296
    :cond_2
    return-void
.end method


# virtual methods
.method public getAreaThreshold()F
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLen:F

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLen:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-wide v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mTimeStamp:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLen:F

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLen:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-wide v0, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mTimeStamp:J

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget-wide v2, v2, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 176
    .local v0, action:I
    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)F

    move-result v1

    .line 182
    .local v1, area:F
    const/4 v2, 0x1

    .line 183
    .local v2, handled:Z
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mInvalidGesture:Z

    if-eqz v3, :cond_2

    .line 184
    const/4 v2, 0x0

    .line 222
    :cond_1
    :goto_0
    return v2

    .line 185
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-nez v3, :cond_3

    .line 187
    packed-switch v0, :pswitch_data_0

    .line 193
    iget v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 194
    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaBegin:F

    .line 195
    iget-object v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iput-object v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointBegin:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    .line 196
    iget-object v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_0

    .line 203
    :cond_3
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    .line 207
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_0

    .line 211
    :pswitch_2
    iget v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaCurrent:F

    iget v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 212
    iget-object v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    .line 213
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_0

    .line 215
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mAreaCurrent:F

    iget-object v4, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mPointPrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;

    iget v4, v4, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    .line 216
    iget-object v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 203
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 433
    iput p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    .line 434
    return-void
.end method
