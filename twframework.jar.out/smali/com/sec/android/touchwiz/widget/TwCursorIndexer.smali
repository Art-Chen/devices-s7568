.class public Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
.super Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.source "TwCursorIndexer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mColumnIndex:I

.field protected mCursor:Landroid/database/Cursor;

.field protected mSavedCursorPos:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "indexCharacters"

    .prologue
    .line 80
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    const-string v0, "TwCursorIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->debug:Z

    .line 81
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 82
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    .line 84
    return-void
.end method


# virtual methods
.method protected getItemAt(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "TwCursorIndexer"

    const-string v1, "TwCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 98
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "TwCursorIndexer"

    const-string v1, "TwCursorIndexer getItemCount : mCursor is closed  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBeginTransaction()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    .line 113
    const-string v0, "TwCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwCursorIndexer.onBeginTransaction() : Current cursor pos to save is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method protected onEndTransaction()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "TwCursorIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    return-void
.end method
