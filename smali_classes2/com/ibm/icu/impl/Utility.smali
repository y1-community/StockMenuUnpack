.class public final Lcom/ibm/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final APOSTROPHE:C = '\''

.field private static final BACKSLASH:C = '\\'

.field static final DIGITS:[C

.field private static final ESCAPE:C = '\ua5a5'

.field static final ESCAPE_BYTE:B = -0x5bt

.field static final HEX_DIGIT:[C

.field public static LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final MAGIC_UNSIGNED:I = -0x80000000

.field private static final UNESCAPE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    .line 640
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 695
    fill-array-data v1, :array_0

    sput-object v1, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    new-array v0, v0, [C

    .line 765
    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 1347
    fill-array-data v0, :array_2

    sput-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x7s
        0x62s
        0x8s
        0x65s
        0x1bs
        0x66s
        0xcs
        0x6es
        0xas
        0x72s
        0xds
        0x74s
        0x9s
        0x76s
        0xbs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final RLEStringToByteArray(Ljava/lang/String;)[B
    .locals 13

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 572
    new-array v3, v1, [B

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v5, v1, :cond_8

    if-eqz v7, :cond_0

    add-int/lit8 v7, v8, 0x1

    .line 585
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    shr-int/lit8 v8, v9, 0x8

    int-to-byte v8, v8

    move v11, v9

    move v9, v7

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    and-int/lit16 v7, v9, 0xff

    int-to-byte v7, v7

    move v11, v9

    move v9, v8

    move v8, v7

    const/4 v7, 0x1

    :goto_1
    const/16 v12, -0x5b

    if-eqz v6, :cond_6

    if-eq v6, v2, :cond_2

    if-eq v6, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_3

    add-int/lit8 v12, v5, 0x1

    .line 625
    aput-byte v8, v3, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v12

    goto :goto_2

    :cond_2
    if-ne v8, v12, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 612
    aput-byte v12, v3, v5

    move v5, v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    if-gez v8, :cond_5

    add-int/lit16 v8, v8, 0x100

    :cond_5
    move v10, v8

    const/4 v6, 0x2

    goto :goto_3

    :cond_6
    if-ne v8, v12, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v12, v5, 0x1

    .line 605
    aput-byte v8, v3, v5

    move v5, v12

    :goto_3
    move v8, v9

    move v9, v11

    goto :goto_0

    :cond_8
    if-nez v6, :cond_a

    .line 634
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v8, p0, :cond_9

    return-object v3

    .line 635
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Excess data in RLE byte array string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static final RLEStringToCharArray(Ljava/lang/String;)[C
    .locals 10

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 542
    new-array v3, v1, [C

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 544
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 545
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xa5a5

    if-ne v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 547
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 549
    aput-char v6, v3, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 552
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 553
    aput-char v7, v3, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 557
    aput-char v6, v3, v5

    :goto_2
    move v5, v7

    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    return-object v3

    .line 562
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded short array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static final RLEStringToIntArray(Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x0

    .line 472
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 473
    new-array v2, v1, [I

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    if-ge v4, v3, :cond_3

    add-int/lit8 v6, v4, 0x1

    .line 478
    invoke-static {p0, v4}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v7, 0xa5a5

    if-ne v4, v7, :cond_2

    add-int/lit8 v4, v6, 0x1

    .line 481
    invoke-static {p0, v6}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 483
    aput v6, v2, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v4, 0x1

    .line 486
    invoke-static {p0, v4}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 488
    aput v4, v2, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v5, 0x1

    .line 493
    aput v4, v2, v5

    move v4, v6

    :goto_2
    move v5, v7

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    if-ne v4, v3, :cond_4

    return-object v2

    .line 498
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded int array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static final RLEStringToShortArray(Ljava/lang/String;)[S
    .locals 10

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v1, v3

    .line 512
    new-array v3, v1, [S

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 514
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 515
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xa5a5

    if-ne v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 517
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    int-to-short v6, v6

    .line 519
    aput-short v6, v3, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 522
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-short v7, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 523
    aput-short v7, v3, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    int-to-short v6, v6

    .line 527
    aput-short v6, v3, v5

    :goto_2
    move v5, v7

    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    if-ne v5, v1, :cond_4

    return-object v3

    .line 532
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Bad run-length encoded short array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static addExact(II)I
    .locals 1

    add-int v0, p0, p1

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    and-int/2addr p0, p1

    if-ltz p0, :cond_0

    return v0

    .line 1814
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final appendEncodedByte(Ljava/lang/Appendable;B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;B[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 454
    :try_start_0
    aget-byte v1, p2, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 455
    aget-byte v1, p2, v2

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-char p1, p1

    .line 456
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 457
    aput-byte v0, p2, v0

    goto :goto_0

    .line 460
    :cond_0
    aput-byte v2, p2, v0

    .line 461
    aput-byte p1, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 464
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final appendInt(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)V"
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    .line 380
    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-char p1, p1

    .line 381
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 383
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/16 v0, 0x24

    if-gt p2, v0, :cond_1

    if-gez p1, :cond_0

    neg-int p1, p1

    :try_start_0
    const-string v0, "-"

    .line 1406
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1409
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    return-object p0

    .line 1398
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal radix "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1413
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TA;)TA;"
        }
    .end annotation

    .line 1856
    :try_start_0
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 1859
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
    .locals 6

    const/16 v0, 0x5c

    const/16 v1, 0x27

    if-nez p2, :cond_8

    if-eqz p3, :cond_0

    .line 1561
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1613
    :cond_0
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-nez p2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    .line 1615
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 1621
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-gtz p2, :cond_7

    const/16 p2, 0x21

    if-lt p1, p2, :cond_5

    const/16 p2, 0x7e

    if-gt p1, p2, :cond_5

    const/16 p2, 0x30

    if-lt p1, p2, :cond_3

    const/16 p2, 0x39

    if-le p1, p2, :cond_5

    :cond_3
    const/16 p2, 0x41

    if-lt p1, p2, :cond_4

    const/16 p2, 0x5a

    if-le p1, p2, :cond_5

    :cond_4
    const/16 p2, 0x61

    if-lt p1, p2, :cond_7

    const/16 p2, 0x7a

    if-gt p1, p2, :cond_7

    .line 1626
    :cond_5
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    .line 1636
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 1627
    :cond_7
    :goto_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    if-ne p1, v1, :cond_f

    int-to-char p0, p1

    .line 1630
    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 1562
    :cond_8
    :goto_1
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    const/4 v2, 0x1

    if-lez p2, :cond_c

    .line 1570
    :goto_2
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt p2, v4, :cond_9

    .line 1571
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_9

    .line 1572
    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, v1, :cond_9

    .line 1573
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1574
    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    .line 1579
    :goto_3
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lt v5, v4, :cond_a

    .line 1580
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_a

    .line 1581
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_a

    .line 1582
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1585
    :cond_a
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1586
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1587
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1588
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1589
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_b
    :goto_4
    add-int/lit8 p4, p2, -0x1

    if-lez p2, :cond_c

    .line 1592
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, p4

    goto :goto_4

    :cond_c
    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    const/16 p2, 0x20

    if-ne p1, p2, :cond_d

    .line 1602
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_f

    sub-int/2addr p1, v2

    .line 1603
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    if-eq p1, p2, :cond_f

    .line 1604
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    if-eqz p3, :cond_e

    .line 1606
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result p2

    if-nez p2, :cond_f

    .line 1607
    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    :cond_f
    :goto_5
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1664
    invoke-interface {p1, p2}, Lcom/ibm/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1649
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1651
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 80
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 81
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 82
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 83
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result p0

    return p0

    .line 84
    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    .line 85
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 86
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 87
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result p0

    return p0

    .line 88
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final arrayEquals([BLjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v2, p1, [B

    if-nez v2, :cond_2

    return v1

    .line 67
    :cond_2
    check-cast p1, [B

    check-cast p1, [B

    .line 68
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 69
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayEquals([DLjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 59
    :cond_1
    instance-of v2, p1, [D

    if-nez v2, :cond_2

    return v1

    .line 60
    :cond_2
    check-cast p1, [D

    check-cast p1, [D

    .line 61
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 62
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayEquals([ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, [I

    if-nez v2, :cond_2

    return v1

    .line 48
    :cond_2
    check-cast p1, [I

    check-cast p1, [I

    .line 49
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 50
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 35
    :cond_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 37
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_3

    array-length v2, p0

    .line 38
    invoke-static {p0, v1, p1, v1, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final arrayRegionMatches([BI[BII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 171
    aget-byte v0, p0, p1

    add-int v1, p1, p3

    aget-byte v1, p2, v1

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

.method public static final arrayRegionMatches([CI[CII)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 123
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

.method public static final arrayRegionMatches([DI[DII)Z
    .locals 5

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 161
    aget-wide v0, p0, p1

    add-int v2, p1, p3

    aget-wide v2, p2, v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayRegionMatches([II[III)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 142
    aget v0, p0, p1

    add-int v1, p1, p3

    aget v1, p2, v1

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

.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .locals 2

    add-int/2addr p4, p1

    sub-int/2addr p3, p1

    :goto_0
    if-ge p1, p4, :cond_1

    .line 104
    aget-object v0, p0, p1

    add-int v1, p1, p3

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final arrayToRLEString([B)Ljava/lang/String;
    .locals 9

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 330
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 333
    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_1

    .line 334
    aget-byte v7, p0, v5

    if-ne v7, v2, :cond_0

    const/16 v8, 0xff

    if-ge v6, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 337
    :cond_0
    invoke-static {v0, v2, v6, v3}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    move v2, v7

    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {v0, v2, v6, v3}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    aget-byte p0, v3, v1

    if-eqz p0, :cond_2

    .line 346
    invoke-static {v0, v1, v3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 348
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayToRLEString([C)Ljava/lang/String;
    .locals 7

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 297
    aget-char v1, p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 299
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 300
    aget-char v5, p0, v3

    if-ne v5, v1, :cond_0

    const v6, 0xffff

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    int-to-short v1, v1

    .line 303
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    move v1, v5

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-short p0, v1

    .line 308
    invoke-static {v0, p0, v4}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayToRLEString([I)Ljava/lang/String;
    .locals 7

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    array-length v1, p0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    const/4 v1, 0x0

    .line 231
    aget v1, p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 233
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 234
    aget v5, p0, v3

    if-ne v5, v1, :cond_0

    const v6, 0xffff

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    :cond_0
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    move v1, v5

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayToRLEString([S)Ljava/lang/String;
    .locals 7

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 265
    aget-short v1, p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 267
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 268
    aget-short v5, p0, v3

    if-ne v5, v1, :cond_0

    const v6, 0xffff

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 271
    :cond_0
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    move v1, v5

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {v0, v1, v4}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 1829
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 1832
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1833
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static charSequenceHashCode(Ljava/lang/CharSequence;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1845
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 1846
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)I"
        }
    .end annotation

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static checkHash(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final compareUnsigned(II)I
    .locals 1

    const/high16 v0, -0x80000000

    sub-int/2addr p0, v0

    sub-int/2addr p1, v0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static final encodeRun(Ljava/lang/Appendable;BI[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;BI[B)V"
        }
    .end annotation

    const/16 v0, -0x5b

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    if-ne p1, v0, :cond_0

    .line 427
    invoke-static {p0, v0, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 428
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-byte v1, p2

    if-ne v1, v0, :cond_3

    if-ne p1, v0, :cond_2

    .line 433
    invoke-static {p0, v0, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 434
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    add-int/lit8 p2, p2, -0x1

    .line 437
    :cond_3
    invoke-static {p0, v0, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    int-to-byte p2, p2

    .line 438
    invoke-static {p0, p2, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 439
    invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;II)V"
        }
    .end annotation

    const v0, 0xa5a5

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    if-ne p1, v0, :cond_0

    .line 359
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 361
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    if-ne p1, v0, :cond_2

    .line 367
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 369
    :cond_2
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    add-int/lit8 p2, p2, -0x1

    .line 372
    :cond_3
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 373
    invoke-static {p0, p2}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 374
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;SI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;SI)V"
        }
    .end annotation

    int-to-char p1, p1

    const/4 v0, 0x4

    const v1, 0xa5a5

    if-ge p2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    if-ne p1, v1, :cond_0

    .line 397
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 399
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    if-ne p1, v1, :cond_2

    .line 405
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 407
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    .line 410
    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    int-to-char p2, p2

    .line 411
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 412
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 415
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 746
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 747
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 748
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const-string v3, "\\\\"

    .line 751
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    int-to-char v3, v3

    .line 753
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v4, 0xffff

    if-gt v3, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    const-string v5, "\\u"

    goto :goto_2

    :cond_3
    const-string v5, "\\U"

    .line 757
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v3

    if-eqz v4, :cond_4

    const/4 v3, 0x4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    .line 758
    :goto_3
    invoke-static {v5, v6, v3}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 761
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeUnprintable(Ljava/lang/Appendable;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    .line 1479
    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    .line 1480
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    .line 1482
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1483
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v1, p1, 0x18

    and-int/lit8 v1, v1, 0xf

    .line 1484
    aget-char v1, v0, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0xf

    .line 1485
    aget-char v1, v0, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    .line 1486
    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/16 v0, 0x75

    .line 1488
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1490
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    .line 1491
    aget-char v1, v0, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 1492
    aget-char v1, v0, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit8 p1, p1, 0xf

    .line 1493
    aget-char p1, v0, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 1498
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final format1ForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 705
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    .line 706
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x7e

    if-gt v1, v3, :cond_1

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v3, "\\u"

    .line 729
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    sget-object v3, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    const v4, 0xf000

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0xc

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v1, 0xf00

    shr-int/lit8 v4, v4, 0x8

    .line 731
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v1, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 732
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0xf

    .line 733
    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    const-string v1, "\\n"

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v3, 0x9

    if-ne v1, v3, :cond_4

    const-string v1, "\\t"

    .line 711
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    const-string v1, "\\r"

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 719
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    sget-object v3, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v1, 0x38

    shr-int/lit8 v4, v4, 0x3

    .line 721
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0x7

    .line 722
    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v1, v2

    goto/16 :goto_0

    .line 736
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 649
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    if-lez v1, :cond_0

    const/16 v2, 0x2b

    .line 650
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ibm/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "        \""

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    .line 653
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    if-ge v1, v3, :cond_7

    const/16 v3, 0x50

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    .line 654
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    const/16 v6, 0x5c

    if-lt v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x7e

    if-gt v1, v4, :cond_2

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    const-string v4, "\\u"

    .line 682
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    const v5, 0xf000

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0xc

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v5, v1, 0xf00

    shr-int/lit8 v5, v5, 0x8

    .line 684
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    .line 685
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0xf

    .line 686
    aget-char v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x6

    goto :goto_4

    :cond_3
    :goto_2
    const/16 v4, 0xa

    if-ne v1, v4, :cond_4

    const-string v1, "\\n"

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_4
    const/16 v4, 0x9

    if-ne v1, v4, :cond_5

    const-string v1, "\\t"

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/16 v4, 0xd

    if-ne v1, v4, :cond_6

    const-string v1, "\\r"

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 670
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0x1c0

    shr-int/lit8 v5, v5, 0x6

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v1, 0x38

    shr-int/lit8 v5, v5, 0x3

    .line 672
    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0x7

    .line 673
    aget-char v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    :goto_4
    move v1, v3

    goto/16 :goto_1

    .line 690
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 692
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\\s+"

    .line 1781
    :goto_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/Utility;->fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;
    .locals 4

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1793
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 1794
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    .line 1795
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p1, :cond_0

    const/16 v3, 0x10

    .line 1798
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1796
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "code point too short: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1801
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final getInt(Ljava/lang/String;I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    .line 504
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            "U::",
            "Ljava/lang/CharSequence;",
            "T::",
            "Ljava/lang/Appendable;",
            ">(TS;ITU;ZTT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1002
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 1003
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p3

    if-eqz v0, :cond_0

    .line 1005
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    int-to-long v1, p3

    .line 1007
    invoke-static {v1, v2, p1}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1002
    invoke-static {p3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p3

    add-int/2addr v0, p3

    goto :goto_0

    .line 1010
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge v0, p3, :cond_3

    if-eqz v0, :cond_2

    .line 1012
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1014
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    int-to-long v1, p3

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p4

    :catch_0
    move-exception p0

    .line 1019
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static hex(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    .line 963
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex(JI)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "-8000000000000000"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    neg-long p0, p0

    :cond_2
    const/16 v1, 0x10

    .line 975
    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 976
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, p2, :cond_3

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0000000000000000"

    invoke-virtual {v2, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static hex(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    const-string v2, ","

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            ">(TS;ITS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex([BIILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 1027
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_0
    aget-byte v1, p0, p1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final highBit(I)B
    .locals 3

    if-gtz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    const/16 v2, 0x10

    if-lt p0, v1, :cond_1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte v0, v2

    :cond_1
    const/16 v1, 0x100

    if-lt p0, v1, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    if-lt p0, v2, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_5
    return v0
.end method

.method public static isUnprintable(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1875
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    .line 1877
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1878
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 1881
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1885
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1888
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1872
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Delimiter or elements is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static lookup(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1102
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1103
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static parseChar(Ljava/lang/String;[IC)Z
    .locals 4

    const/4 v0, 0x0

    .line 1121
    aget v1, p1, v0

    .line 1122
    aget v2, p1, v0

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    aput v2, p1, v0

    .line 1123
    aget v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    aget v2, p1, v0

    .line 1124
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    aget p0, p1, v0

    const/4 p2, 0x1

    add-int/2addr p0, p2

    aput p0, p1, v0

    return p2

    .line 1125
    :cond_1
    :goto_0
    aput v1, p1, v0

    return v0
.end method

.method public static parseInteger(Ljava/lang/String;[II)I
    .locals 8

    const/4 v0, 0x0

    .line 1274
    aget v7, p1, v0

    const/4 v2, 0x1

    const-string v4, "0x"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move v3, v7

    .line 1277
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v7, v7, 0x2

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    if-ge v7, p2, :cond_1

    .line 1280
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v7, p2, :cond_4

    add-int/lit8 v4, v7, 0x1

    .line 1287
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v5

    if-gez v5, :cond_2

    add-int/lit8 v7, v4, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    mul-int v6, v3, v1

    add-int/2addr v6, v5

    if-gt v6, v3, :cond_3

    return v0

    :cond_3
    move v7, v4

    move v3, v6

    goto :goto_2

    :cond_4
    :goto_3
    if-lez v2, :cond_5

    .line 1304
    aput v7, p1, v0

    :cond_5
    return v3
.end method

.method public static parseNumber(Ljava/lang/String;[II)I
    .locals 5

    const/4 v0, 0x0

    .line 1439
    aget v1, p1, v0

    const/4 v2, 0x0

    .line 1440
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    .line 1441
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1442
    invoke-static {v3, p2}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int v2, v2, p2

    add-int/2addr v2, v3

    if-gez v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1454
    :cond_2
    :goto_1
    aget p0, p1, v0

    if-ne v1, p0, :cond_3

    return v4

    .line 1457
    :cond_3
    aput v1, p1, v0

    return v2
.end method

.method public static parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1157
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 1158
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    const/4 v6, -0x1

    if-eq v4, v5, :cond_4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_7

    if-lt p1, p2, :cond_0

    return v6

    :cond_0
    add-int/lit8 v5, p1, 0x1

    .line 1186
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I

    move-result p1

    int-to-char p1, p1

    if-eq p1, v4, :cond_1

    return v6

    :cond_1
    move p1, v5

    goto :goto_1

    :cond_2
    aput p1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .line 1175
    invoke-static {p0, v0, p2}, Lcom/ibm/icu/impl/Utility;->parseInteger(Ljava/lang/String;[II)I

    move-result v5

    aput v5, p4, v3

    aget v3, v0, v1

    if-ne v3, p1, :cond_3

    return v6

    :cond_3
    aget p1, v0, v1

    move v3, v4

    goto :goto_1

    :cond_4
    if-lt p1, p2, :cond_5

    return v6

    :cond_5
    add-int/lit8 v4, p1, 0x1

    .line 1165
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1166
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p1

    if-nez p1, :cond_6

    return v6

    :cond_6
    move p1, v4

    .line 1171
    :cond_7
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return p1
.end method

.method public static parsePattern(Ljava/lang/String;Lcom/ibm/icu/text/Replaceable;II)I
    .locals 5

    .line 1219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    .line 1223
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-ge p2, p3, :cond_4

    .line 1226
    invoke-interface {p1, p2}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v3

    const/16 v4, 0x7e

    if-ne v1, v4, :cond_2

    .line 1230
    invoke-static {v3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1231
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return p2

    :cond_2
    if-ne v3, v1, :cond_4

    .line 1243
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    .line 1246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    return p2

    .line 1257
    :cond_3
    invoke-static {p0, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 5

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1325
    aget v2, p1, v1

    .line 1326
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1327
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1329
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 1335
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1336
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1341
    :goto_1
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1343
    :cond_2
    aput v2, p1, v1

    .line 1344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_3

    .line 1521
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_0
    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_2

    .line 1526
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 1527
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    return p1

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static recursiveAppendNumber(Ljava/lang/Appendable;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)V"
        }
    .end annotation

    .line 1369
    :try_start_0
    rem-int v0, p1, p2

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    if-le p3, v1, :cond_1

    .line 1372
    :cond_0
    div-int/2addr p1, p2

    sub-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    .line 1374
    :cond_1
    sget-object p1, Lcom/ibm/icu/impl/Utility;->DIGITS:[C

    aget-char p1, p1, v0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1376
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p0

    .line 1755
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 1757
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static split(Ljava/lang/String;C[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1056
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1057
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 1058
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, 0x1

    .line 1062
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    .line 1063
    :goto_1
    array-length p0, p2

    if-ge p1, p0, :cond_2

    add-int/lit8 p0, p1, 0x1

    const-string v0, ""

    .line 1064
    aput-object v0, p2, p1

    move p1, p0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1081
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1082
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1083
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\E"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "\\s+"

    .line 1770
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 915
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 916
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    aput v4, v1, v2

    .line 919
    invoke-static {p0, v1}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 924
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    aget v3, v1, v2

    goto :goto_0

    .line 921
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v4, v4, 0x8

    .line 922
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    .line 930
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeAt(Ljava/lang/String;[I)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 800
    aget v2, p1, v1

    .line 801
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ltz v2, :cond_15

    if-lt v2, v3, :cond_0

    goto/16 :goto_9

    .line 807
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 808
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v2, v6

    const/16 v6, 0x55

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eq v5, v6, :cond_5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_4

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    .line 829
    invoke-static {v5, v9}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v6

    if-ltz v6, :cond_1

    const/4 v7, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x3

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    if-ge v2, v3, :cond_3

    .line 820
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    const/16 v11, 0x7b

    if-ne v6, v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    const/4 v11, 0x4

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v11, 0x8

    :goto_0
    const/4 v12, 0x4

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    if-eqz v7, :cond_10

    :goto_3
    if-ge v2, v3, :cond_8

    if-ge v13, v11, :cond_8

    .line 841
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    if-ne v12, v8, :cond_6

    const/16 v15, 0x8

    goto :goto_4

    :cond_6
    const/16 v15, 0x10

    .line 842
    :goto_4
    invoke-static {v5, v15}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v15

    if-gez v15, :cond_7

    goto :goto_5

    :cond_7
    shl-int/2addr v6, v12

    or-int/2addr v6, v15

    .line 847
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int/2addr v2, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    if-ge v13, v7, :cond_9

    return v4

    :cond_9
    if-eqz v14, :cond_b

    const/16 v7, 0x7d

    if-eq v5, v7, :cond_a

    return v4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    if-ltz v6, :cond_f

    const/high16 v5, 0x110000

    if-lt v6, v5, :cond_c

    goto :goto_6

    :cond_c
    if-ge v2, v3, :cond_e

    int-to-char v4, v6

    .line 867
    invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_e

    add-int/lit8 v5, v2, 0x1

    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_d

    if-ge v5, v3, :cond_d

    new-array v3, v10, [I

    aput v5, v3, v1

    .line 872
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v7

    aget v5, v3, v1

    :cond_d
    int-to-char v0, v7

    .line 875
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 877
    invoke-static {v4, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    move v2, v5

    .line 880
    :cond_e
    aput v2, p1, v1

    return v6

    :cond_f
    :goto_6
    return v4

    :cond_10
    const/4 v4, 0x0

    .line 885
    :goto_7
    sget-object v6, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C

    array-length v7, v6

    if-ge v4, v7, :cond_13

    .line 886
    aget-char v7, v6, v4

    if-ne v5, v7, :cond_11

    .line 887
    aput v2, p1, v1

    add-int/2addr v4, v10

    .line 888
    aget-char v0, v6, v4

    return v0

    .line 889
    :cond_11
    aget-char v6, v6, v4

    if-ge v5, v6, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    :cond_13
    :goto_8
    const/16 v4, 0x63

    if-ne v5, v4, :cond_14

    if-ge v2, v3, :cond_14

    .line 896
    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 897
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 903
    :cond_14
    aput v2, p1, v1

    return v5

    :cond_15
    :goto_9
    return v4
.end method

.method public static unescapeLeniently(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 940
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 941
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_1

    aput v4, v1, v2

    .line 944
    invoke-static {p0, v1}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v5

    if-gez v5, :cond_0

    .line 946
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 948
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    aget v4, v1, v2

    goto :goto_1

    .line 952
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v3, v4

    goto :goto_0

    .line 955
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([I)Ljava/lang/String;
    .locals 3

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1740
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1741
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1743
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
