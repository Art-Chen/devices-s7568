.class Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
.super Ljava/lang/Object;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionResult"
.end annotation


# instance fields
.field exactMatch:Z

.field position:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 308
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0
    .parameter "pos"
    .parameter "exact"

    .prologue
    .line 301
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 303
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 304
    return-void
.end method
