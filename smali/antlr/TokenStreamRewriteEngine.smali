.class public Lantlr/TokenStreamRewriteEngine;
.super Ljava/lang/Object;
.source "TokenStreamRewriteEngine.java"

# interfaces
.implements Lantlr/TokenStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lantlr/TokenStreamRewriteEngine$DeleteOp;,
        Lantlr/TokenStreamRewriteEngine$ReplaceOp;,
        Lantlr/TokenStreamRewriteEngine$InsertBeforeOp;,
        Lantlr/TokenStreamRewriteEngine$RewriteOperation;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROGRAM_NAME:Ljava/lang/String; = "default"

.field public static final MIN_TOKEN_INDEX:I = 0x0

.field public static final PROGRAM_INIT_SIZE:I = 0x64


# instance fields
.field protected discardMask:Lantlr/collections/impl/BitSet;

.field protected index:I

.field protected lastRewriteTokenIndexes:Ljava/util/Map;

.field protected programs:Ljava/util/Map;

.field protected stream:Lantlr/TokenStream;

.field protected tokens:Ljava/util/List;


# direct methods
.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 132
    invoke-direct {p0, p1, v0}, Lantlr/TokenStreamRewriteEngine;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;I)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    .line 120
    iput-object v0, p0, Lantlr/TokenStreamRewriteEngine;->lastRewriteTokenIndexes:Ljava/util/Map;

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lantlr/TokenStreamRewriteEngine;->index:I

    .line 129
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-direct {v0}, Lantlr/collections/impl/BitSet;-><init>()V

    iput-object v0, p0, Lantlr/TokenStreamRewriteEngine;->discardMask:Lantlr/collections/impl/BitSet;

    .line 136
    iput-object p1, p0, Lantlr/TokenStreamRewriteEngine;->stream:Lantlr/TokenStream;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    .line 138
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    .line 139
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "default"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lantlr/TokenStreamRewriteEngine;->lastRewriteTokenIndexes:Ljava/util/Map;

    return-void
.end method

.method private initializeProgram(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    iget-object v1, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected addToSortedRewriteList(Lantlr/TokenStreamRewriteEngine$RewriteOperation;)V
    .locals 1

    const-string v0, "default"

    .line 187
    invoke-virtual {p0, v0, p1}, Lantlr/TokenStreamRewriteEngine;->addToSortedRewriteList(Ljava/lang/String;Lantlr/TokenStreamRewriteEngine$RewriteOperation;)V

    return-void
.end method

.method protected addToSortedRewriteList(Ljava/lang/String;Lantlr/TokenStreamRewriteEngine$RewriteOperation;)V
    .locals 3

    .line 191
    invoke-virtual {p0, p1}, Lantlr/TokenStreamRewriteEngine;->getProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    iget v1, p2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    invoke-virtual {p0, p1}, Lantlr/TokenStreamRewriteEngine;->getLastRewriteTokenIndex(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 194
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget p2, p2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    invoke-virtual {p0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->setLastRewriteTokenIndex(Ljava/lang/String;I)V

    return-void

    .line 200
    :cond_0
    new-instance p1, Lantlr/TokenStreamRewriteEngine$1;

    invoke-direct {p1, p0}, Lantlr/TokenStreamRewriteEngine$1;-><init>(Lantlr/TokenStreamRewriteEngine;)V

    .line 209
    invoke-static {v0, p2, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-gez p1, :cond_1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 211
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public delete(I)V
    .locals 1

    const-string v0, "default"

    .line 276
    invoke-virtual {p0, v0, p1, p1}, Lantlr/TokenStreamRewriteEngine;->delete(Ljava/lang/String;II)V

    return-void
.end method

.method public delete(II)V
    .locals 1

    const-string v0, "default"

    .line 280
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->delete(Ljava/lang/String;II)V

    return-void
.end method

.method public delete(Lantlr/Token;)V
    .locals 1

    const-string v0, "default"

    .line 284
    invoke-virtual {p0, v0, p1, p1}, Lantlr/TokenStreamRewriteEngine;->delete(Ljava/lang/String;Lantlr/Token;Lantlr/Token;)V

    return-void
.end method

.method public delete(Lantlr/Token;Lantlr/Token;)V
    .locals 1

    const-string v0, "default"

    .line 288
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->delete(Ljava/lang/String;Lantlr/Token;Lantlr/Token;)V

    return-void
.end method

.method public delete(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, p2, p3, v0}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Lantlr/Token;Lantlr/Token;)V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, p1, p2, p3, v0}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V

    return-void
.end method

.method public deleteProgram()V
    .locals 1

    const-string v0, "default"

    .line 176
    invoke-virtual {p0, v0}, Lantlr/TokenStreamRewriteEngine;->deleteProgram(Ljava/lang/String;)V

    return-void
.end method

.method public deleteProgram(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Lantlr/TokenStreamRewriteEngine;->rollback(Ljava/lang/String;I)V

    return-void
.end method

.method public discard(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->discardMask:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/BitSet;->add(I)V

    return-void
.end method

.method public getLastRewriteTokenIndex()I
    .locals 1

    const-string v0, "default"

    .line 394
    invoke-virtual {p0, v0}, Lantlr/TokenStreamRewriteEngine;->getLastRewriteTokenIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLastRewriteTokenIndex(Ljava/lang/String;)I
    .locals 1

    .line 398
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->lastRewriteTokenIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 402
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getProgram(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 410
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lantlr/TokenStreamRewriteEngine;->initializeProgram(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getToken(I)Lantlr/TokenWithIndex;
    .locals 1

    .line 304
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/TokenWithIndex;

    return-object p1
.end method

.method public getTokenStreamSize()I
    .locals 1

    .line 308
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public insertAfter(ILjava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 220
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->insertAfter(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public insertAfter(Lantlr/Token;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 216
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->insertAfter(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;)V

    return-void
.end method

.method public insertAfter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lantlr/TokenStreamRewriteEngine;->insertBefore(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public insertAfter(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;)V
    .locals 0

    .line 224
    check-cast p2, Lantlr/TokenWithIndex;

    invoke-virtual {p2}, Lantlr/TokenWithIndex;->getIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lantlr/TokenStreamRewriteEngine;->insertAfter(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public insertBefore(ILjava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 237
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->insertBefore(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public insertBefore(Lantlr/Token;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 233
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->insertBefore(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;)V

    return-void
.end method

.method public insertBefore(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 245
    new-instance v0, Lantlr/TokenStreamRewriteEngine$InsertBeforeOp;

    invoke-direct {v0, p2, p3}, Lantlr/TokenStreamRewriteEngine$InsertBeforeOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lantlr/TokenStreamRewriteEngine;->addToSortedRewriteList(Ljava/lang/String;Lantlr/TokenStreamRewriteEngine$RewriteOperation;)V

    return-void
.end method

.method public insertBefore(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;)V
    .locals 0

    .line 241
    check-cast p2, Lantlr/TokenWithIndex;

    invoke-virtual {p2}, Lantlr/TokenWithIndex;->getIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lantlr/TokenStreamRewriteEngine;->insertBefore(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public nextToken()Lantlr/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 148
    :cond_0
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->stream:Lantlr/TokenStream;

    invoke-interface {v0}, Lantlr/TokenStream;->nextToken()Lantlr/Token;

    move-result-object v0

    check-cast v0, Lantlr/TokenWithIndex;

    if-eqz v0, :cond_2

    .line 150
    iget v1, p0, Lantlr/TokenStreamRewriteEngine;->index:I

    invoke-virtual {v0, v1}, Lantlr/TokenWithIndex;->setIndex(I)V

    .line 151
    invoke-virtual {v0}, Lantlr/TokenWithIndex;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 152
    iget-object v1, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    iget v1, p0, Lantlr/TokenStreamRewriteEngine;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Lantlr/TokenStreamRewriteEngine;->index:I

    :cond_2
    if-eqz v0, :cond_3

    .line 156
    iget-object v1, p0, Lantlr/TokenStreamRewriteEngine;->discardMask:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/TokenWithIndex;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return-object v0
.end method

.method public replace(IILjava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 253
    invoke-virtual {p0, v0, p1, p2, p3}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public replace(ILjava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 249
    invoke-virtual {p0, v0, p1, p1, p2}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public replace(Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 261
    invoke-virtual {p0, v0, p1, p2, p3}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V

    return-void
.end method

.method public replace(Lantlr/Token;Ljava/lang/String;)V
    .locals 1

    const-string v0, "default"

    .line 257
    invoke-virtual {p0, v0, p1, p1, p2}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V

    return-void
.end method

.method public replace(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 265
    new-instance p1, Lantlr/TokenStreamRewriteEngine$ReplaceOp;

    invoke-direct {p1, p2, p3, p4}, Lantlr/TokenStreamRewriteEngine$ReplaceOp;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lantlr/TokenStreamRewriteEngine;->addToSortedRewriteList(Lantlr/TokenStreamRewriteEngine$RewriteOperation;)V

    return-void
.end method

.method public replace(Ljava/lang/String;Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V
    .locals 0

    .line 269
    check-cast p2, Lantlr/TokenWithIndex;

    invoke-virtual {p2}, Lantlr/TokenWithIndex;->getIndex()I

    move-result p2

    check-cast p3, Lantlr/TokenWithIndex;

    invoke-virtual {p3}, Lantlr/TokenWithIndex;->getIndex()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lantlr/TokenStreamRewriteEngine;->replace(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public rollback(I)V
    .locals 1

    const-string v0, "default"

    .line 161
    invoke-virtual {p0, v0, p1}, Lantlr/TokenStreamRewriteEngine;->rollback(Ljava/lang/String;I)V

    return-void
.end method

.method public rollback(Ljava/lang/String;I)V
    .locals 3

    .line 169
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected setLastRewriteTokenIndex(Ljava/lang/String;I)V
    .locals 2

    .line 406
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->lastRewriteTokenIndexes:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .line 382
    invoke-virtual {p0}, Lantlr/TokenStreamRewriteEngine;->getTokenStreamSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lantlr/TokenStreamRewriteEngine;->toDebugString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDebugString(II)Ljava/lang/String;
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 387
    iget-object v1, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lantlr/TokenStreamRewriteEngine;->getToken(I)Lantlr/TokenWithIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toOriginalString()Ljava/lang/String;
    .locals 2

    .line 312
    invoke-virtual {p0}, Lantlr/TokenStreamRewriteEngine;->getTokenStreamSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lantlr/TokenStreamRewriteEngine;->toOriginalString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toOriginalString(II)Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 317
    iget-object v1, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lantlr/TokenStreamRewriteEngine;->getToken(I)Lantlr/TokenWithIndex;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/TokenWithIndex;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 324
    invoke-virtual {p0}, Lantlr/TokenStreamRewriteEngine;->getTokenStreamSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lantlr/TokenStreamRewriteEngine;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    .line 332
    invoke-virtual {p0, v0, p1, p2}, Lantlr/TokenStreamRewriteEngine;->toString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 328
    invoke-virtual {p0}, Lantlr/TokenStreamRewriteEngine;->getTokenStreamSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lantlr/TokenStreamRewriteEngine;->toString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .line 336
    iget-object v0, p0, Lantlr/TokenStreamRewriteEngine;->programs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ltz p2, :cond_4

    if-gt p2, p3, :cond_4

    .line 348
    iget-object v2, p0, Lantlr/TokenStreamRewriteEngine;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 351
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;

    .line 353
    :cond_2
    :goto_1
    iget v3, v2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->index:I

    if-ne p2, v3, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 359
    invoke-virtual {v2, v0}, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->execute(Ljava/lang/StringBuffer;)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    .line 361
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 362
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;

    goto :goto_1

    :cond_3
    if-ge p2, p3, :cond_1

    .line 367
    invoke-virtual {p0, p2}, Lantlr/TokenStreamRewriteEngine;->getToken(I)Lantlr/TokenWithIndex;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/TokenWithIndex;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 372
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lantlr/TokenStreamRewriteEngine$RewriteOperation;

    .line 375
    invoke-virtual {p2, v0}, Lantlr/TokenStreamRewriteEngine$RewriteOperation;->execute(Ljava/lang/StringBuffer;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 378
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
