.class Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;
.super Ljava/lang/Object;
.source "TwScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavePoint"
.end annotation


# instance fields
.field mFingerDiffX:F

.field mFingerDiffY:F

.field mLen:F

.field mLenBeforeSqrt:F

.field mPressure:F

.field mTimeStamp:J

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 157
    iput-object p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->this$0:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minX:F

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->minY:F

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxX:F

    iput v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->maxY:F

    .line 159
    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLen:F

    .line 160
    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SavePoint;->mLenBeforeSqrt:F

    return-void
.end method
