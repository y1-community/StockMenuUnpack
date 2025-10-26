.class public final Lcom/ibm/icu/text/Edits;
.super Ljava/lang/Object;
.source "Edits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Edits$Iterator;
    }
.end annotation


# static fields
.field private static final LENGTH_IN_1TRAIL:I = 0x3d

.field private static final LENGTH_IN_2TRAIL:I = 0x3e

.field private static final MAX_SHORT_CHANGE:I = 0x6fff

.field private static final MAX_SHORT_CHANGE_NEW_LENGTH:I = 0x7

.field private static final MAX_SHORT_CHANGE_OLD_LENGTH:I = 0x6

.field private static final MAX_UNCHANGED:I = 0xfff

.field private static final MAX_UNCHANGED_LENGTH:I = 0x1000

.field private static final SHORT_CHANGE_NUM_MASK:I = 0x1ff

.field private static final STACK_CAPACITY:I = 0x64


# instance fields
.field private array:[C

.field private delta:I

.field private length:I

.field private numChanges:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 89
    iput-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    return-void
.end method

.method private append(I)V
    .locals 3

    .line 212
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->growArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    :cond_1
    return-void
.end method

.method private growArray()Z
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v1, v0

    const v2, 0x7fffffff

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const/16 v2, 0x7d0

    goto :goto_0

    .line 221
    :cond_0
    array-length v1, v0

    if-eq v1, v2, :cond_3

    .line 223
    array-length v1, v0

    const v3, 0x3fffffff    # 1.9999999f

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 229
    :goto_0
    array-length v1, v0

    sub-int v1, v2, v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    .line 232
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    const/4 v0, 0x1

    return v0

    .line 230
    :cond_2
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 222
    :cond_3
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method private lastUnit()I
    .locals 2

    .line 104
    iget v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    :goto_0
    return v0
.end method

.method private setLastUnit(I)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v1, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v1, v1, -0x1

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method


# virtual methods
.method public addReplace(II)V
    .locals 9

    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 153
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Edits;->numChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/Edits;->numChanges:I

    sub-int v0, p2, p1

    if-eqz v0, :cond_4

    if-lez v0, :cond_1

    .line 156
    iget v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-ltz v1, :cond_1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_2

    :cond_1
    if-gez v0, :cond_3

    iget v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    if-gez v1, :cond_3

    const/high16 v2, -0x80000000

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 161
    :cond_3
    :goto_0
    iget v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/text/Edits;->delta:I

    :cond_4
    const/4 v0, 0x6

    if-lez p1, :cond_6

    if-gt p1, v0, :cond_6

    const/4 v1, 0x7

    if-gt p2, v1, :cond_6

    shl-int/lit8 p1, p1, 0xc

    shl-int/lit8 p2, p2, 0x9

    or-int/2addr p1, p2

    .line 168
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->lastUnit()I

    move-result p2

    const/16 v0, 0xfff

    if-ge v0, p2, :cond_5

    const/16 v0, 0x6fff

    if-ge p2, v0, :cond_5

    and-int/lit16 v0, p2, -0x200

    if-ne v0, p1, :cond_5

    and-int/lit16 v0, p2, 0x1ff

    const/16 v1, 0x1ff

    if-ge v0, v1, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 172
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    return-void

    .line 175
    :cond_5
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Edits;->append(I)V

    return-void

    :cond_6
    const/16 v1, 0x7000

    const/16 v2, 0x3d

    if-ge p1, v2, :cond_7

    if-ge p2, v2, :cond_7

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    or-int/2addr p1, p2

    .line 183
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Edits;->append(I)V

    goto/16 :goto_3

    .line 184
    :cond_7
    iget-object v3, p0, Lcom/ibm/icu/text/Edits;->array:[C

    array-length v3, v3

    iget v4, p0, Lcom/ibm/icu/text/Edits;->length:I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    if-ge v3, v4, :cond_8

    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->growArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 185
    :cond_8
    iget v3, p0, Lcom/ibm/icu/text/Edits;->length:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x7fff

    const v6, 0x8000

    if-ge p1, v2, :cond_9

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    goto :goto_1

    :cond_9
    if-gt p1, v5, :cond_a

    const/16 v0, 0x7f40

    .line 190
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v7, v4, 0x1

    or-int/2addr p1, v6

    int-to-char p1, p1

    aput-char p1, v1, v4

    move v4, v7

    const/16 p1, 0x7f40

    goto :goto_1

    :cond_a
    shr-int/lit8 v7, p1, 0x1e

    add-int/lit8 v7, v7, 0x3e

    shl-int/lit8 v0, v7, 0x6

    or-int/2addr v0, v1

    .line 193
    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, p1, 0xf

    or-int/2addr v8, v6

    int-to-char v8, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v7, 0x1

    or-int/2addr p1, v6

    int-to-char p1, p1

    .line 194
    aput-char p1, v1, v7

    move p1, v0

    :goto_1
    if-ge p2, v2, :cond_b

    or-int/2addr p1, p2

    goto :goto_2

    :cond_b
    if-gt p2, v5, :cond_c

    or-int/2addr p1, v2

    .line 200
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v1, v4, 0x1

    or-int/2addr p2, v6

    int-to-char p2, p2

    aput-char p2, v0, v4

    move v4, v1

    goto :goto_2

    :cond_c
    shr-int/lit8 v0, p2, 0x1e

    add-int/lit8 v0, v0, 0x3e

    or-int/2addr p1, v0

    .line 203
    iget-object v0, p0, Lcom/ibm/icu/text/Edits;->array:[C

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, p2, 0xf

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v0, v4

    add-int/lit8 v4, v1, 0x1

    or-int/2addr p2, v6

    int-to-char p2, p2

    .line 204
    aput-char p2, v0, v1

    .line 206
    :goto_2
    iget-object p2, p0, Lcom/ibm/icu/text/Edits;->array:[C

    int-to-char p1, p1

    aput-char p1, p2, v3

    .line 207
    iput v4, p0, Lcom/ibm/icu/text/Edits;->length:I

    :cond_d
    :goto_3
    return-void

    .line 146
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReplace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): both lengths must be non-negative"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUnchanged(I)V
    .locals 3

    if-ltz p1, :cond_4

    .line 118
    invoke-direct {p0}, Lcom/ibm/icu/text/Edits;->lastUnit()I

    move-result v0

    const/16 v1, 0xfff

    if-ge v0, v1, :cond_1

    rsub-int v2, v0, 0xfff

    if-lt v2, p1, :cond_0

    add-int/2addr v0, p1

    .line 122
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    return-void

    .line 125
    :cond_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/Edits;->setLastUnit(I)V

    sub-int/2addr p1, v2

    :cond_1
    :goto_0
    const/16 v0, 0x1000

    if-lt p1, v0, :cond_2

    .line 130
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/Edits;->append(I)V

    add-int/lit16 p1, p1, -0x1000

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Edits;->append(I)V

    :cond_3
    return-void

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUnchanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): length must not be negative"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getCoarseChangesIterator()Lcom/ibm/icu/text/Edits$Iterator;
    .locals 7

    .line 861
    new-instance v6, Lcom/ibm/icu/text/Edits$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZLcom/ibm/icu/text/Edits$1;)V

    return-object v6
.end method

.method public getCoarseIterator()Lcom/ibm/icu/text/Edits$Iterator;
    .locals 7

    .line 873
    new-instance v6, Lcom/ibm/icu/text/Edits$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZLcom/ibm/icu/text/Edits$1;)V

    return-object v6
.end method

.method public getFineChangesIterator()Lcom/ibm/icu/text/Edits$Iterator;
    .locals 7

    .line 885
    new-instance v6, Lcom/ibm/icu/text/Edits$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZLcom/ibm/icu/text/Edits$1;)V

    return-object v6
.end method

.method public getFineIterator()Lcom/ibm/icu/text/Edits$Iterator;
    .locals 7

    .line 896
    new-instance v6, Lcom/ibm/icu/text/Edits$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/text/Edits;->array:[C

    iget v2, p0, Lcom/ibm/icu/text/Edits;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Edits$Iterator;-><init>([CIZZLcom/ibm/icu/text/Edits$1;)V

    return-object v6
.end method

.method public hasChanges()Z
    .locals 1

    .line 246
    iget v0, p0, Lcom/ibm/icu/text/Edits;->numChanges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthDelta()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    return v0
.end method

.method public mergeAndAppend(Lcom/ibm/icu/text/Edits;Lcom/ibm/icu/text/Edits;)Lcom/ibm/icu/text/Edits;
    .locals 10

    .line 926
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits;->getFineIterator()Lcom/ibm/icu/text/Edits$Iterator;

    move-result-object p1

    .line 927
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits;->getFineIterator()Lcom/ibm/icu/text/Edits$Iterator;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 948
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->oldLength()I

    move-result v3

    .line 950
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->newLength()I

    move-result v8

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 953
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr v6, v8

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v6, v8

    .line 954
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    if-nez v4, :cond_9

    if-eqz v2, :cond_5

    .line 965
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->next()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 966
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->oldLength()I

    move-result v7

    .line 967
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->newLength()I

    move-result v4

    if-nez v4, :cond_9

    .line 970
    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->oldLength()I

    move-result v9

    if-eq v3, v9, :cond_4

    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr v5, v7

    goto :goto_1

    :cond_4
    :goto_4
    add-int/2addr v5, v7

    .line 971
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    goto :goto_3

    :cond_5
    if-nez v3, :cond_8

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 1056
    :cond_6
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    :cond_7
    return-object p0

    .line 983
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The ab output string is shorter than the bc input string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-eqz v3, :cond_12

    .line 999
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_d

    if-nez v5, :cond_a

    if-eqz v6, :cond_b

    .line 1002
    :cond_a
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_b
    if-gt v7, v8, :cond_c

    move v3, v7

    goto :goto_5

    :cond_c
    move v3, v8

    .line 1006
    :goto_5
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/Edits;->addUnchanged(I)V

    sub-int/2addr v7, v3

    sub-int/2addr v8, v3

    move v4, v7

    move v3, v8

    goto/16 :goto_1

    .line 1012
    :cond_d
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-eqz v9, :cond_e

    if-lt v4, v3, :cond_10

    add-int/2addr v5, v3

    add-int/2addr v6, v8

    .line 1016
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    sub-int v7, v4, v3

    move v4, v7

    const/4 v3, 0x0

    goto :goto_3

    .line 1023
    :cond_e
    invoke-virtual {p1}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p2}, Lcom/ibm/icu/text/Edits$Iterator;->hasChange()Z

    move-result v9

    if-nez v9, :cond_f

    if-gt v4, v3, :cond_10

    add-int/2addr v5, v7

    add-int/2addr v6, v4

    .line 1027
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    sub-int v8, v3, v4

    move v3, v8

    goto :goto_6

    :cond_f
    if-ne v4, v3, :cond_10

    add-int/2addr v5, v7

    add-int/2addr v6, v8

    .line 1037
    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/text/Edits;->addReplace(II)V

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    add-int/2addr v5, v7

    add-int/2addr v6, v8

    if-ge v4, v3, :cond_11

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_11
    sub-int/2addr v4, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 988
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The bc input string is shorter than the ab output string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public numberOfChanges()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/ibm/icu/text/Edits;->numChanges:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/ibm/icu/text/Edits;->numChanges:I

    iput v0, p0, Lcom/ibm/icu/text/Edits;->delta:I

    iput v0, p0, Lcom/ibm/icu/text/Edits;->length:I

    return-void
.end method
