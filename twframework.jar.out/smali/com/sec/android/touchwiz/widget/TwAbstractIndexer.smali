.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;,
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "indexCharacters"

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 63
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 67
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 137
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "word"
    .parameter "indexString"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "base"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .parameter "base"
    .parameter "foundOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v15

    if-nez v15, :cond_0

    .line 206
    const/4 v11, 0x0

    .line 295
    :goto_0
    return-object v11

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v5

    .line 210
    .local v5, itemCount:I
    if-nez v5, :cond_1

    .line 212
    const-string v15, "TwAbstractIndexer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getIndexInfo() return null: mData.size() =="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v11, 0x0

    goto :goto_0

    .line 217
    :cond_1
    if-nez p1, :cond_6

    const-string v1, ""

    .line 218
    .local v1, baseString:Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v11, retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 254
    const/4 v6, 0x0

    .line 255
    .local v6, mflag:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v2

    .line 257
    .local v2, count:I
    const/4 v15, 0x2

    if-lt v2, v15, :cond_2

    .line 258
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, name_0:Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, name_1:Ljava/lang/String;
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 263
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 264
    .local v3, diff:I
    if-lez v3, :cond_2

    .line 265
    const/4 v6, 0x1

    .line 271
    .end local v3           #diff:I
    .end local v7           #name_0:Ljava/lang/String;
    .end local v8           #name_1:Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v14, 0x0

    .local v14, sectionIndex:I
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v14, v15, :cond_8

    .line 272
    const/4 v13, 0x0

    .line 273
    .local v13, sectionFound:Z
    const/4 v9, -0x1

    .line 275
    .local v9, posFound:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 276
    .local v12, searchString:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;Z)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v10

    .line 277
    .local v10, pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    iget v9, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 278
    iget-boolean v13, v10, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 280
    if-gez v9, :cond_3

    .line 281
    neg-int v9, v9

    .line 284
    :cond_3
    if-eqz p2, :cond_4

    const/4 v15, 0x1

    if-ne v13, v15, :cond_5

    .line 286
    :cond_4
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 287
    .local v4, indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    iput-boolean v13, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 288
    iput v9, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    aget-object v15, v15, v14

    iput-object v15, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 290
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v4           #indexInfo:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v1           #baseString:Ljava/lang/String;
    .end local v2           #count:I
    .end local v6           #mflag:Z
    .end local v9           #posFound:I
    .end local v10           #pr:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v11           #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v12           #searchString:Ljava/lang/String;
    .end local v13           #sectionFound:Z
    .end local v14           #sectionIndex:I
    :cond_6
    move-object/from16 v1, p1

    .line 217
    goto :goto_1

    .line 266
    .restart local v1       #baseString:Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v6       #mflag:Z
    .restart local v7       #name_0:Ljava/lang/String;
    .restart local v8       #name_1:Ljava/lang/String;
    .restart local v11       #retIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :cond_7
    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 267
    const/4 v6, 0x1

    goto :goto_2

    .line 294
    .end local v7           #name_0:Ljava/lang/String;
    .end local v8           #name_1:Ljava/lang/String;
    .restart local v14       #sectionIndex:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V

    goto/16 :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method getPositionForString(Ljava/lang/String;Z)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .locals 20
    .parameter "searchString"
    .parameter "skipFirst"

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 328
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v3

    .line 330
    .local v3, count:I
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 331
    :cond_0
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    .line 492
    :goto_0
    return-object v18

    .line 333
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 335
    :cond_2
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    .line 338
    :cond_3
    const/16 v16, 0x0

    .line 339
    .local v16, start:I
    move v6, v3

    .line 341
    .local v6, end:I
    const/4 v9, 0x0

    .line 342
    .local v9, matchFound:Z
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 343
    .local v8, letter:C
    move-object/from16 v17, p1

    .line 344
    .local v17, targetLetter:Ljava/lang/String;
    move v7, v8

    .line 346
    .local v7, key:I
    const/high16 v18, -0x8000

    const/high16 v19, -0x8000

    move/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .local v12, pos:I
    move/from16 v0, v18

    if-eq v0, v12, :cond_9

    .line 380
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 423
    :cond_4
    :goto_1
    add-int v18, v6, v16

    div-int/lit8 v12, v18, 0x2

    .line 424
    :goto_2
    if-ge v12, v6, :cond_6

    .line 426
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, curName:Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v18, ""

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_c

    .line 428
    :cond_5
    if-nez v12, :cond_b

    .line 482
    .end local v4           #curName:Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 483
    invoke-virtual {v2, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    :cond_7
    if-ge v12, v3, :cond_8

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    .restart local v4       #curName:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 492
    .end local v4           #curName:Ljava/lang/String;
    :cond_8
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto :goto_0

    .line 384
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 386
    .local v15, sectionIndex:I
    if-lez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-le v7, v0, :cond_a

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 388
    .local v13, prevLetter:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 389
    .local v14, prevLetterPos:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    if-eq v14, v0, :cond_a

    .line 390
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 396
    .end local v13           #prevLetter:I
    .end local v14           #prevLetterPos:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 398
    .local v10, nextLetter:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 399
    .local v11, nextLetterPos:I
    const/high16 v18, -0x8000

    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 400
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    .line 431
    .end local v10           #nextLetter:I
    .end local v11           #nextLetterPos:I
    .end local v15           #sectionIndex:I
    .restart local v4       #curName:Ljava/lang/String;
    :cond_b
    add-int/lit8 v12, v12, -0x1

    .line 432
    goto/16 :goto_2

    .line 436
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 438
    .local v5, diff:I
    if-eqz v5, :cond_11

    .line 450
    if-gez v5, :cond_e

    .line 451
    add-int/lit8 v16, v12, 0x1

    .line 453
    if-eqz p2, :cond_d

    if-eqz v12, :cond_6

    .line 457
    :cond_d
    move/from16 v0, v16

    if-lt v0, v3, :cond_10

    .line 458
    move v12, v3

    .line 459
    goto/16 :goto_3

    .line 463
    :cond_e
    if-eqz p2, :cond_f

    if-nez v12, :cond_f

    .line 464
    const/4 v12, 0x1

    .line 465
    goto/16 :goto_3

    .line 468
    :cond_f
    move v6, v12

    .line 480
    :cond_10
    :goto_4
    add-int v18, v16, v6

    div-int/lit8 v12, v18, 0x2

    .line 481
    goto/16 :goto_2

    .line 472
    :cond_11
    move/from16 v0, v16

    if-eq v0, v12, :cond_6

    .line 477
    move v6, v12

    goto :goto_4
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "alphabet"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 145
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    .line 147
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 154
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 155
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 156
    return-void
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 2

    .prologue
    .line 572
    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onBeginTransaction is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 524
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 526
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 530
    return-void
.end method

.method protected onEndTransaction()V
    .locals 2

    .prologue
    .line 576
    const-string v0, "TwAbstractIndexer"

    const-string v1, "TwAbstractIndexer.onEndTransaction  is now being called !! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 540
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 507
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 510
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_1
    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 569
    return-void
.end method
