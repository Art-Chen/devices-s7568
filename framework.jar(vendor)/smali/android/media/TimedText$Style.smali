.class public Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# instance fields
.field public colorRGBA:I

.field public endChar:I

.field public fontID:I

.field public fontSize:I

.field public isBold:Z

.field public isItalic:Z

.field public isUnderlined:Z

.field public startChar:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 227
    iput-object p1, p0, Landroid/media/TimedText$Style;->this$0:Landroid/media/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput v0, p0, Landroid/media/TimedText$Style;->startChar:I

    .line 193
    iput v0, p0, Landroid/media/TimedText$Style;->endChar:I

    .line 199
    iput v0, p0, Landroid/media/TimedText$Style;->fontID:I

    .line 204
    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isBold:Z

    .line 209
    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isItalic:Z

    .line 214
    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    .line 219
    iput v0, p0, Landroid/media/TimedText$Style;->fontSize:I

    .line 225
    iput v0, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    .line 227
    return-void
.end method
