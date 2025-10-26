.class public abstract Lcom/ibm/icu/util/CodePointTrie;
.super Lcom/ibm/icu/util/CodePointMap;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/CodePointTrie$Small8;,
        Lcom/ibm/icu/util/CodePointTrie$Small32;,
        Lcom/ibm/icu/util/CodePointTrie$Small16;,
        Lcom/ibm/icu/util/CodePointTrie$Fast8;,
        Lcom/ibm/icu/util/CodePointTrie$Fast32;,
        Lcom/ibm/icu/util/CodePointTrie$Fast16;,
        Lcom/ibm/icu/util/CodePointTrie$Small;,
        Lcom/ibm/icu/util/CodePointTrie$Fast;,
        Lcom/ibm/icu/util/CodePointTrie$Data8;,
        Lcom/ibm/icu/util/CodePointTrie$Data32;,
        Lcom/ibm/icu/util/CodePointTrie$Data16;,
        Lcom/ibm/icu/util/CodePointTrie$Data;,
        Lcom/ibm/icu/util/CodePointTrie$ValueWidth;,
        Lcom/ibm/icu/util/CodePointTrie$Type;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ASCII_LIMIT:I = 0x80

.field private static final BMP_INDEX_LENGTH:I = 0x400

.field static final CP_PER_INDEX_2_ENTRY:I = 0x200

.field private static final ERROR_VALUE_NEG_DATA_OFFSET:I = 0x1

.field static final FAST_DATA_BLOCK_LENGTH:I = 0x40

.field private static final FAST_DATA_MASK:I = 0x3f

.field static final FAST_SHIFT:I = 0x6

.field private static final HIGH_VALUE_NEG_DATA_OFFSET:I = 0x2

.field static final INDEX_2_BLOCK_LENGTH:I = 0x20

.field static final INDEX_2_MASK:I = 0x1f

.field static final INDEX_3_BLOCK_LENGTH:I = 0x20

.field private static final INDEX_3_MASK:I = 0x1f

.field private static final MAX_UNICODE:I = 0x10ffff

.field static final NO_DATA_NULL_OFFSET:I = 0xfffff

.field static final NO_INDEX3_NULL_OFFSET:I = 0x7fff

.field private static final OMITTED_BMP_INDEX_1_LENGTH:I = 0x4

.field private static final OPTIONS_DATA_LENGTH_MASK:I = 0xf000

.field private static final OPTIONS_DATA_NULL_OFFSET_MASK:I = 0xf00

.field private static final OPTIONS_RESERVED_MASK:I = 0x38

.field private static final OPTIONS_VALUE_BITS_MASK:I = 0x7

.field private static final SHIFT_1:I = 0xe

.field static final SHIFT_1_2:I = 0x5

.field private static final SHIFT_2:I = 0x9

.field static final SHIFT_2_3:I = 0x5

.field static final SHIFT_3:I = 0x4

.field static final SMALL_DATA_BLOCK_LENGTH:I = 0x10

.field static final SMALL_DATA_MASK:I = 0xf

.field private static final SMALL_INDEX_LENGTH:I = 0x40

.field static final SMALL_LIMIT:I = 0x1000

.field private static final SMALL_MAX:I = 0xfff


# instance fields
.field private final ascii:[I

.field protected final data:Lcom/ibm/icu/util/CodePointTrie$Data;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final dataLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final dataNullOffset:I

.field protected final highStart:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final index:[C

.field private final index3NullOffset:I

.field private final nullValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>([CLcom/ibm/icu/util/CodePointTrie$Data;III)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/ibm/icu/util/CodePointMap;-><init>()V

    const/16 v0, 0x80

    new-array v1, v0, [I

    .line 91
    iput-object v1, p0, Lcom/ibm/icu/util/CodePointTrie;->ascii:[I

    .line 92
    iput-object p1, p0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    .line 93
    iput-object p2, p0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    .line 94
    invoke-virtual {p2}, Lcom/ibm/icu/util/CodePointTrie$Data;->getDataLength()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    .line 95
    iput p3, p0, Lcom/ibm/icu/util/CodePointTrie;->highStart:I

    .line 96
    iput p4, p0, Lcom/ibm/icu/util/CodePointTrie;->index3NullOffset:I

    .line 97
    iput p5, p0, Lcom/ibm/icu/util/CodePointTrie;->dataNullOffset:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 100
    iget-object p3, p0, Lcom/ibm/icu/util/CodePointTrie;->ascii:[I

    invoke-virtual {p2, p1}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result p4

    aput p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    if-lt p5, p1, :cond_1

    add-int/lit8 p5, p1, -0x2

    .line 107
    :cond_1
    invoke-virtual {p2, p5}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    return-void
.end method

.method synthetic constructor <init>([CLcom/ibm/icu/util/CodePointTrie$Data;IIILcom/ibm/icu/util/CodePointTrie$1;)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/util/CodePointTrie;-><init>([CLcom/ibm/icu/util/CodePointTrie$Data;III)V

    return-void
.end method

.method public static fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;
    .locals 16

    move-object/from16 v1, p2

    .line 133
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 136
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_16

    .line 142
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v3, 0x33697254

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_1

    const v3, 0x54726933

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "Buffer does not contain a serialized CodePointTrie"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 168
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    .line 171
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v3

    .line 174
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    .line 177
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v11

    .line 180
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v7

    .line 186
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v8

    shr-int/lit8 v9, v0, 0x6

    const/4 v10, 0x3

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    if-ne v9, v4, :cond_4

    .line 193
    sget-object v9, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    goto :goto_3

    .line 195
    :cond_4
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "CodePointTrie data header has an unsupported type"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_5
    sget-object v9, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    :goto_3
    and-int/lit8 v12, v0, 0x7

    const/4 v13, 0x2

    if-eqz v12, :cond_8

    if-eq v12, v4, :cond_7

    if-ne v12, v13, :cond_6

    .line 203
    sget-object v12, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_8:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    goto :goto_4

    .line 205
    :cond_6
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "CodePointTrie data header has an unsupported value width"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_7
    sget-object v12, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    goto :goto_4

    .line 201
    :cond_8
    sget-object v12, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    :goto_4
    and-int/lit8 v14, v0, 0x38

    if-nez v14, :cond_15

    if-nez p0, :cond_9

    move-object v14, v9

    goto :goto_5

    :cond_9
    move-object/from16 v14, p0

    :goto_5
    if-nez p1, :cond_a

    move-object v15, v12

    goto :goto_6

    :cond_a
    move-object/from16 v15, p1

    :goto_6
    if-ne v14, v9, :cond_14

    if-ne v15, v12, :cond_14

    const v9, 0xf000

    and-int/2addr v9, v0

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v6, v9

    and-int/lit16 v0, v0, 0xf00

    shl-int/lit8 v0, v0, 0x8

    or-int v12, v7, v0

    shl-int/lit8 v0, v8, 0x9

    mul-int/lit8 v7, v3, 0x2

    .line 230
    sget-object v8, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    if-ne v15, v8, :cond_b

    mul-int/lit8 v8, v6, 0x2

    :goto_7
    add-int/2addr v7, v8

    goto :goto_8

    .line 232
    :cond_b
    sget-object v8, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    if-ne v15, v8, :cond_c

    mul-int/lit8 v8, v6, 0x4

    goto :goto_7

    :cond_c
    add-int/2addr v7, v6

    .line 237
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lt v8, v7, :cond_13

    .line 241
    invoke-static {v1, v3, v5}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v8

    .line 242
    sget-object v3, Lcom/ibm/icu/util/CodePointTrie$1;->$SwitchMap$com$ibm$icu$util$CodePointTrie$ValueWidth:[I

    invoke-virtual {v15}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v4, :cond_11

    if-eq v3, v13, :cond_f

    if-ne v3, v10, :cond_e

    .line 256
    invoke-static {v1, v6, v5}, Lcom/ibm/icu/impl/ICUBinary;->getBytes(Ljava/nio/ByteBuffer;II)[B

    move-result-object v9

    .line 257
    sget-object v3, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne v14, v3, :cond_d

    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$Fast8;

    move-object v7, v3

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Fast8;-><init>([C[BIII)V

    goto :goto_9

    :cond_d
    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$Small8;

    move-object v7, v3

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Small8;-><init>([C[BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_9
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v3

    .line 262
    :cond_e
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "should be unreachable"

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 250
    :cond_f
    invoke-static {v1, v6, v5}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v9

    .line 251
    sget-object v3, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne v14, v3, :cond_10

    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$Fast32;

    move-object v7, v3

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Fast32;-><init>([C[IIII)V

    goto :goto_a

    :cond_10
    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$Small32;

    move-object v7, v3

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Small32;-><init>([C[IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :goto_a
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v3

    .line 244
    :cond_11
    :try_start_2
    invoke-static {v1, v6, v5}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v9

    .line 245
    sget-object v3, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne v14, v3, :cond_12

    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$Fast16;

    move-object v7, v3

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Fast16;-><init>([C[CIII)V

    goto :goto_b

    :cond_12
    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$Small16;

    move-object v7, v3

    move v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/CodePointTrie$Small16;-><init>([C[CIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :goto_b
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v3

    .line 238
    :cond_13
    :try_start_3
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "Buffer too short for the CodePointTrie data"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_14
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "CodePointTrie data header has a different type or value width than required"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_15
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "CodePointTrie data header has unsupported options"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_16
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v3, "Buffer too short for a CodePointTrie header"

    invoke-direct {v0, v3}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 265
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 266
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method private final internalSmallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I
    .locals 4

    shr-int/lit8 v0, p2, 0xe

    .line 709
    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne p1, v1, :cond_0

    add-int/lit16 v0, v0, 0x3fc

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x40

    .line 716
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    aget-char v0, p1, v0

    shr-int/lit8 v1, p2, 0x9

    and-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    aget-char v0, p1, v0

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0x1f

    const v2, 0x8000

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    add-int/2addr v0, v1

    .line 721
    aget-char p1, p1, v0

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, 0x7fff

    and-int/lit8 v2, v1, -0x8

    add-int/2addr v0, v2

    shr-int/lit8 v2, v1, 0x3

    add-int/2addr v0, v2

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, v0, 0x1

    .line 726
    aget-char v0, p1, v0

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    shl-int/2addr v0, v3

    const/high16 v3, 0x30000

    and-int/2addr v0, v3

    add-int/2addr v2, v1

    .line 727
    aget-char p1, p1, v2

    or-int/2addr p1, v0

    :goto_1
    and-int/lit8 p2, p2, 0xf

    add-int/2addr p1, p2

    return p1
.end method

.method private static final maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I
    .locals 0

    if-ne p0, p1, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 313
    invoke-interface {p3, p0}, Lcom/ibm/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public final asciiGet(I)I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie;->ascii:[I

    aget p1, v0, p1

    return p1
.end method

.method protected abstract cpIndex(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final fastIndex(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    shr-int/lit8 v1, p1, 0x6

    aget-char v0, v0, v1

    and-int/lit8 p1, p1, 0x3f

    add-int/2addr v0, p1

    return v0
.end method

.method public get(I)I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CodePointTrie;->cpIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result p1

    return p1
.end method

.method public final getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-ltz v1, :cond_1b

    const v5, 0x10ffff

    if-ge v5, v1, :cond_0

    goto/16 :goto_e

    .line 327
    :cond_0
    iget v6, v0, Lcom/ibm/icu/util/CodePointTrie;->highStart:I

    const/4 v7, 0x1

    if-lt v1, v6, :cond_2

    .line 328
    iget v4, v0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 v4, v4, -0x2

    .line 329
    iget-object v6, v0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v6, v4}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v4

    if-eqz v2, :cond_1

    .line 330
    invoke-interface {v2, v4}, Lcom/ibm/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v4

    .line 331
    :cond_1
    invoke-virtual {v3, v1, v5, v4}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v7

    .line 335
    :cond_2
    iget v6, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    if-eqz v2, :cond_3

    .line 336
    invoke-interface {v2, v6}, Lcom/ibm/icu/util/CodePointMap$ValueFilter;->apply(I)I

    move-result v6

    .line 337
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/CodePointTrie;->getType()Lcom/ibm/icu/util/CodePointTrie$Type;

    move-result-object v8

    move v10, v1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_0
    const v5, 0xffff

    const/16 v16, 0x40

    if-gt v10, v5, :cond_6

    .line 350
    sget-object v5, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-eq v8, v5, :cond_4

    const/16 v5, 0xfff

    if-gt v10, v5, :cond_6

    :cond_4
    shr-int/lit8 v5, v10, 0x6

    .line 353
    sget-object v4, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne v8, v4, :cond_5

    const/16 v4, 0x400

    goto :goto_1

    :cond_5
    const/16 v4, 0x40

    :goto_1
    move v9, v4

    const/4 v4, 0x0

    const/16 v7, 0x40

    goto :goto_4

    :cond_6
    shr-int/lit8 v4, v10, 0xe

    .line 358
    sget-object v5, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-ne v8, v5, :cond_7

    add-int/lit16 v4, v4, 0x3fc

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x40

    .line 365
    :goto_2
    iget-object v5, v0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    aget-char v4, v5, v4

    shr-int/lit8 v16, v10, 0x9

    and-int/lit8 v16, v16, 0x1f

    add-int v4, v4, v16

    aget-char v4, v5, v4

    if-ne v4, v11, :cond_8

    sub-int v5, v10, v1

    const/16 v9, 0x200

    if-lt v5, v9, :cond_8

    add-int/lit16 v10, v10, 0x200

    :goto_3
    move-object/from16 v18, v8

    goto/16 :goto_c

    .line 373
    :cond_8
    iget v5, v0, Lcom/ibm/icu/util/CodePointTrie;->index3NullOffset:I

    if-ne v4, v5, :cond_b

    if-eqz v12, :cond_9

    if-eq v6, v13, :cond_a

    sub-int/2addr v10, v7

    .line 377
    invoke-virtual {v3, v1, v10, v13}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v7

    .line 381
    :cond_9
    iget v15, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    move v13, v6

    const/4 v12, 0x1

    .line 385
    :cond_a
    iget v14, v0, Lcom/ibm/icu/util/CodePointTrie;->dataNullOffset:I

    add-int/lit16 v10, v10, 0x200

    and-int/lit16 v5, v10, -0x200

    move v11, v4

    move v10, v5

    goto :goto_3

    :cond_b
    shr-int/lit8 v5, v10, 0x4

    and-int/lit8 v5, v5, 0x1f

    const/16 v9, 0x20

    const/16 v11, 0x10

    move v11, v4

    const/16 v7, 0x10

    :goto_4
    const v18, 0x8000

    and-int v18, v4, v18

    if-nez v18, :cond_c

    move-object/from16 v18, v8

    .line 397
    iget-object v8, v0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    add-int v19, v4, v5

    aget-char v8, v8, v19

    move/from16 v20, v4

    goto :goto_5

    :cond_c
    move-object/from16 v18, v8

    and-int/lit16 v8, v4, 0x7fff

    and-int/lit8 v19, v5, -0x8

    add-int v8, v8, v19

    shr-int/lit8 v19, v5, 0x3

    add-int v8, v8, v19

    and-int/lit8 v19, v5, 0x7

    move/from16 v20, v4

    .line 402
    iget-object v4, v0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    add-int/lit8 v21, v8, 0x1

    aget-char v8, v4, v8

    mul-int/lit8 v22, v19, 0x2

    add-int/lit8 v22, v22, 0x2

    shl-int v8, v8, v22

    const/high16 v22, 0x30000

    and-int v8, v8, v22

    add-int v21, v21, v19

    .line 403
    aget-char v4, v4, v21

    or-int/2addr v8, v4

    :goto_5
    if-ne v8, v14, :cond_d

    sub-int v4, v10, v1

    if-lt v4, v7, :cond_d

    add-int/2addr v10, v7

    move/from16 v19, v7

    goto/16 :goto_b

    :cond_d
    add-int/lit8 v4, v7, -0x1

    .line 412
    iget v14, v0, Lcom/ibm/icu/util/CodePointTrie;->dataNullOffset:I

    if-ne v8, v14, :cond_10

    if-eqz v12, :cond_e

    if-eq v6, v13, :cond_f

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    .line 416
    invoke-virtual {v3, v1, v10, v13}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v14

    .line 420
    :cond_e
    iget v15, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    move v13, v6

    const/4 v12, 0x1

    :cond_f
    add-int/2addr v10, v7

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v10

    move v10, v4

    move/from16 v19, v7

    goto :goto_a

    :cond_10
    and-int v14, v10, v4

    add-int/2addr v14, v8

    move/from16 v19, v7

    .line 427
    iget-object v7, v0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v7, v14}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v7

    if-eqz v12, :cond_14

    if-eq v7, v15, :cond_13

    if-eqz v2, :cond_12

    .line 430
    iget v15, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    .line 431
    invoke-static {v7, v15, v6, v2}, Lcom/ibm/icu/util/CodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v15

    if-eq v15, v13, :cond_11

    goto :goto_6

    :cond_11
    move v15, v7

    goto :goto_7

    :cond_12
    :goto_6
    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 433
    invoke-virtual {v3, v1, v10, v13}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v17

    :cond_13
    :goto_7
    const/16 v17, 0x1

    goto :goto_8

    :cond_14
    const/16 v17, 0x1

    .line 440
    iget v12, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    invoke-static {v7, v12, v6, v2}, Lcom/ibm/icu/util/CodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v13

    move v15, v7

    const/4 v12, 0x1

    :goto_8
    add-int/lit8 v10, v10, 0x1

    and-int v7, v10, v4

    if-eqz v7, :cond_17

    .line 444
    iget-object v7, v0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v7, v14}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v7

    if-eq v7, v15, :cond_13

    if-eqz v2, :cond_16

    .line 446
    iget v15, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    .line 447
    invoke-static {v7, v15, v6, v2}, Lcom/ibm/icu/util/CodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v15

    if-eq v15, v13, :cond_15

    goto :goto_9

    :cond_15
    move v15, v7

    goto :goto_8

    :cond_16
    :goto_9
    add-int/lit8 v10, v10, -0x1

    .line 449
    invoke-virtual {v3, v1, v10, v13}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    return v17

    :cond_17
    :goto_a
    move v14, v8

    :goto_b
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v9, :cond_1a

    .line 458
    :goto_c
    iget v4, v0, Lcom/ibm/icu/util/CodePointTrie;->highStart:I

    if-lt v10, v4, :cond_19

    .line 460
    iget v4, v0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 v4, v4, -0x2

    .line 461
    iget-object v5, v0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v5, v4}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v4

    .line 462
    iget v5, v0, Lcom/ibm/icu/util/CodePointTrie;->nullValue:I

    invoke-static {v4, v5, v6, v2}, Lcom/ibm/icu/util/CodePointTrie;->maybeFilterValue(IIILcom/ibm/icu/util/CodePointMap$ValueFilter;)I

    move-result v2

    if-eq v2, v13, :cond_18

    const/4 v4, -0x1

    add-int/lit8 v5, v10, -0x1

    goto :goto_d

    :cond_18
    const v5, 0x10ffff

    .line 467
    :goto_d
    invoke-virtual {v3, v1, v5, v13}, Lcom/ibm/icu/util/CodePointMap$Range;->set(III)V

    const/4 v7, 0x1

    return v7

    :cond_19
    move-object/from16 v8, v18

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v8, v18

    move/from16 v7, v19

    move/from16 v4, v20

    goto/16 :goto_4

    :cond_1b
    :goto_e
    const/4 v1, 0x0

    return v1
.end method

.method public abstract getType()Lcom/ibm/icu/util/CodePointTrie$Type;
.end method

.method public final getValueWidth()Lcom/ibm/icu/util/CodePointTrie$ValueWidth;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v0}, Lcom/ibm/icu/util/CodePointTrie$Data;->getValueWidth()Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    move-result-object v0

    return-object v0
.end method

.method protected final smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    iget v0, p0, Lcom/ibm/icu/util/CodePointTrie;->highStart:I

    if-lt p2, v0, :cond_0

    .line 702
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    add-int/lit8 p1, p1, -0x2

    return p1

    .line 704
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CodePointTrie;->internalSmallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result p1

    return p1
.end method

.method public final toBinary(Ljava/io/OutputStream;)I
    .locals 5

    .line 481
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const p1, 0x54726933

    .line 484
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 485
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    const/high16 v1, 0xf0000

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x4

    iget v2, p0, Lcom/ibm/icu/util/CodePointTrie;->dataNullOffset:I

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    .line 488
    invoke-virtual {p0}, Lcom/ibm/icu/util/CodePointTrie;->getType()Lcom/ibm/icu/util/CodePointTrie$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/CodePointTrie$Type;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    .line 489
    invoke-virtual {p0}, Lcom/ibm/icu/util/CodePointTrie;->getValueWidth()Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->ordinal()I

    move-result v1

    or-int/2addr p1, v1

    .line 485
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 490
    iget-object p1, p0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 491
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->dataLength:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 492
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->index3NullOffset:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 493
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->dataNullOffset:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 494
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie;->highStart:I

    shr-int/lit8 p1, p1, 0x9

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    const/16 p1, 0x10

    .line 497
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie;->index:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 499
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CodePointTrie$Data;->write(Ljava/io/DataOutputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v0

    return p1

    :catch_0
    move-exception p1

    .line 502
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
