.class public final Lcom/ibm/icu/util/CompactCharArray;
.super Ljava/lang/Object;
.source "CompactCharArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BLOCKCOUNT:I = 0x20

.field static final BLOCKMASK:I = 0x1f

.field public static final BLOCKSHIFT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final INDEXCOUNT:I = 0x800

.field static final INDEXSHIFT:I = 0xb

.field public static final UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field defaultValue:C

.field private hashes:[I

.field private indices:[C

.field private isCompact:Z

.field private values:[C


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/CompactCharArray;-><init>(C)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    new-array v1, v0, [C

    .line 68
    iput-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    const/16 v1, 0x800

    new-array v2, v1, [C

    .line 69
    iput-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    new-array v2, v1, [I

    .line 70
    iput-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 72
    iget-object v4, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    aput-char p1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 75
    iget-object v3, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    shl-int/lit8 v4, v0, 0x5

    int-to-char v4, v4

    aput-char v4, v3, v0

    .line 76
    iget-object v3, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    iput-boolean v2, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    .line 80
    iput-char p1, p0, Lcom/ibm/icu/util/CompactCharArray;->defaultValue:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object p1

    .line 124
    invoke-static {p2}, Lcom/ibm/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object p2

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CompactCharArray;-><init>([C[C)V

    return-void
.end method

.method public constructor <init>([C[C)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    array-length v0, p1

    const-string v1, "Index out of bounds."

    const/16 v2, 0x800

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 99
    aget-char v3, p1, v0

    .line 100
    array-length v4, p2

    add-int/lit8 v4, v4, 0x20

    if-ge v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    .line 104
    iput-object p2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    return-void

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private FindOverlappingPosition(I[CI)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, v0, 0x20

    if-le v1, p3, :cond_0

    sub-int v1, p3, v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x20

    .line 265
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    invoke-static {v2, p1, p2, v0, v1}, Lcom/ibm/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method static final arrayRegionMatches([CI[CII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 283
    aget-char v0, p0, p1

    add-int v1, p1, p3

    aget-char v1, p2, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final blockTouched(I)Z
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    aget p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private expand()V
    .locals 6

    .line 401
    iget-boolean v0, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x800

    new-array v1, v0, [I

    .line 403
    iput-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    const/high16 v1, 0x10000

    new-array v2, v1, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-char v5, v4

    .line 406
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/CompactCharArray;->elementAt(C)C

    move-result v5

    aput-char v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 409
    iget-object v4, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    shl-int/lit8 v5, v1, 0x5

    int-to-char v5, v5

    aput-char v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_1
    iput-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    .line 413
    iput-boolean v3, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    :cond_2
    return-void
.end method

.method private final touchBlock(II)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    aget v1, v0, p1

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr v1, p2

    or-int/lit8 p2, v1, 0x1

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/CompactCharArray;

    .line 340
    iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    .line 341
    iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    .line 342
    iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compact()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CompactCharArray;->compact(Z)V

    return-void
.end method

.method public compact(Z)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_0

    const/high16 v0, 0x10000

    new-array v0, v0, [C

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    :goto_0
    const v1, 0xffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xffff

    const/4 v6, 0x0

    .line 205
    :goto_1
    iget-object v7, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    array-length v8, v7

    if-ge v3, v8, :cond_8

    .line 206
    aput-char v1, v7, v3

    .line 207
    invoke-direct {p0, v3}, Lcom/ibm/icu/util/CompactCharArray;->blockTouched(I)Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v5, v1, :cond_1

    .line 212
    iget-object v7, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    aput-char v5, v7, v3

    goto :goto_5

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v3, :cond_3

    .line 217
    iget-object v10, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    aget v11, v10, v3

    aget v10, v10, v8

    if-ne v11, v10, :cond_2

    iget-object v10, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    const/16 v11, 0x20

    .line 218
    invoke-static {v10, v6, v10, v9, v11}, Lcom/ibm/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 220
    iget-object v10, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    aget-char v11, v10, v8

    aput-char v11, v10, v3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x20

    goto :goto_2

    .line 223
    :cond_3
    iget-object v8, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    aget-char v8, v8, v3

    if-ne v8, v1, :cond_7

    if-eqz p1, :cond_4

    .line 227
    invoke-direct {p0, v6, v0, v4}, Lcom/ibm/icu/util/CompactCharArray;->FindOverlappingPosition(I[CI)I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    add-int/lit8 v10, v8, 0x20

    if-le v10, v4, :cond_6

    :goto_4
    if-ge v4, v10, :cond_5

    .line 236
    iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    add-int v12, v6, v4

    sub-int/2addr v12, v8

    aget-char v11, v11, v12

    aput-char v11, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v10

    .line 240
    :cond_6
    iget-object v10, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    int-to-char v8, v8

    aput-char v8, v10, v3

    if-nez v7, :cond_7

    int-to-char v5, v9

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x20

    goto :goto_1

    .line 250
    :cond_8
    new-array p1, v4, [C

    .line 251
    invoke-static {v0, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iput-object p1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    const/4 p1, 0x1

    .line 253
    iput-boolean p1, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    const/4 p1, 0x0

    .line 254
    iput-object p1, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I

    :cond_9
    return-void
.end method

.method public elementAt(C)C
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 139
    iget-object p1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    array-length v1, p1

    if-lt v0, v1, :cond_0

    iget-char p1, p0, Lcom/ibm/icu/util/CompactCharArray;->defaultValue:C

    goto :goto_0

    :cond_0
    aget-char p1, p1, v0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 363
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 365
    :cond_2
    check-cast p1, Lcom/ibm/icu/util/CompactCharArray;

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_4

    int-to-char v3, v2

    .line 368
    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/CompactCharArray;->elementAt(C)C

    move-result v4

    invoke-virtual {p1, v3}, Lcom/ibm/icu/util/CompactCharArray;->elementAt(C)C

    move-result v3

    if-eq v4, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getIndexArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C

    return-object v0
.end method

.method public getValueArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x10

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 384
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    array-length v4, v3

    if-ge v1, v4, :cond_0

    mul-int/lit8 v2, v2, 0x25

    .line 385
    aget-char v3, v3, v1

    add-int/2addr v2, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method public setElementAt(CC)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/ibm/icu/util/CompactCharArray;->expand()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    aput-char p2, v0, p1

    shr-int/lit8 p1, p1, 0x5

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CompactCharArray;->touchBlock(II)V

    return-void
.end method

.method public setElementAt(CCC)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/ibm/icu/util/CompactCharArray;->expand()V

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_1

    .line 176
    iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C

    aput-char p3, v0, p1

    shr-int/lit8 v0, p1, 0x5

    .line 177
    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/util/CompactCharArray;->touchBlock(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
