.class public final Lcom/ibm/icu/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/util/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICU_DATA_VERSION:Lcom/ibm/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_VERSION_PATH:Ljava/lang/String; = "69b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field private static final INVALID_VERSION_NUMBER_:Ljava/lang/String; = "Invalid version number: Version number may be negative or greater than 255"

.field private static final LAST_BYTE_MASK_:I = 0xff

.field private static final MAP_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ibm/icu/util/VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDATA_VERSION:Ljava/lang/String;

.field public static final UCOL_BUILDER_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field public static final UCOL_RUNTIME_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field public static final UCOL_TAILORINGS_VERSION:Lcom/ibm/icu/util/VersionInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_10_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_11_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_12_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_12_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_13_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_0_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_1_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_1_5:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_2:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_5:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_8:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_9:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_0_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_1_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_1_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_2:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_4_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_4_0_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_4_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_5_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_5_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_5_2:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_6_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_6_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_6_2:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_6_3:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_7_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_8_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_9_0:Lcom/ibm/icu/util/VersionInfo;

.field private static final UNICODE_VERSION:Lcom/ibm/icu/util/VersionInfo;


# instance fields
.field private m_version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 506
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 523
    invoke-static {v0, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_0:Lcom/ibm/icu/util/VersionInfo;

    .line 524
    invoke-static {v0, v1, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_0_1:Lcom/ibm/icu/util/VersionInfo;

    .line 525
    invoke-static {v0, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_1_0:Lcom/ibm/icu/util/VersionInfo;

    const/4 v2, 0x5

    .line 526
    invoke-static {v0, v0, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_1_5:Lcom/ibm/icu/util/VersionInfo;

    const/4 v3, 0x2

    .line 527
    invoke-static {v3, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_0:Lcom/ibm/icu/util/VersionInfo;

    .line 528
    invoke-static {v3, v0, v3, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_2:Lcom/ibm/icu/util/VersionInfo;

    .line 529
    invoke-static {v3, v0, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v4

    sput-object v4, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_5:Lcom/ibm/icu/util/VersionInfo;

    const/16 v4, 0x8

    .line 530
    invoke-static {v3, v0, v4, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v5

    sput-object v5, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_8:Lcom/ibm/icu/util/VersionInfo;

    const/16 v5, 0x9

    .line 531
    invoke-static {v3, v0, v5, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v6

    sput-object v6, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_9:Lcom/ibm/icu/util/VersionInfo;

    const/4 v6, 0x3

    .line 532
    invoke-static {v6, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_0:Lcom/ibm/icu/util/VersionInfo;

    .line 533
    invoke-static {v6, v1, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_0_1:Lcom/ibm/icu/util/VersionInfo;

    .line 534
    invoke-static {v6, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_1_0:Lcom/ibm/icu/util/VersionInfo;

    .line 535
    invoke-static {v6, v0, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_1_1:Lcom/ibm/icu/util/VersionInfo;

    .line 536
    invoke-static {v6, v3, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_2:Lcom/ibm/icu/util/VersionInfo;

    const/4 v7, 0x4

    .line 537
    invoke-static {v7, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v8

    sput-object v8, Lcom/ibm/icu/util/VersionInfo;->UNICODE_4_0:Lcom/ibm/icu/util/VersionInfo;

    .line 538
    invoke-static {v7, v1, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v8

    sput-object v8, Lcom/ibm/icu/util/VersionInfo;->UNICODE_4_0_1:Lcom/ibm/icu/util/VersionInfo;

    .line 539
    invoke-static {v7, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_4_1:Lcom/ibm/icu/util/VersionInfo;

    .line 540
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_5_0:Lcom/ibm/icu/util/VersionInfo;

    .line 541
    invoke-static {v2, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_5_1:Lcom/ibm/icu/util/VersionInfo;

    .line 542
    invoke-static {v2, v3, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_5_2:Lcom/ibm/icu/util/VersionInfo;

    const/4 v2, 0x6

    .line 543
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_6_0:Lcom/ibm/icu/util/VersionInfo;

    .line 544
    invoke-static {v2, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v7

    sput-object v7, Lcom/ibm/icu/util/VersionInfo;->UNICODE_6_1:Lcom/ibm/icu/util/VersionInfo;

    .line 545
    invoke-static {v2, v3, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Lcom/ibm/icu/util/VersionInfo;->UNICODE_6_2:Lcom/ibm/icu/util/VersionInfo;

    .line 546
    invoke-static {v2, v6, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_6_3:Lcom/ibm/icu/util/VersionInfo;

    const/4 v2, 0x7

    .line 547
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_7_0:Lcom/ibm/icu/util/VersionInfo;

    .line 548
    invoke-static {v4, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_8_0:Lcom/ibm/icu/util/VersionInfo;

    .line 549
    invoke-static {v5, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_9_0:Lcom/ibm/icu/util/VersionInfo;

    const/16 v2, 0xa

    .line 550
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_10_0:Lcom/ibm/icu/util/VersionInfo;

    const/16 v2, 0xb

    .line 551
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_11_0:Lcom/ibm/icu/util/VersionInfo;

    const/16 v2, 0xc

    .line 552
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v3

    sput-object v3, Lcom/ibm/icu/util/VersionInfo;->UNICODE_12_0:Lcom/ibm/icu/util/VersionInfo;

    .line 553
    invoke-static {v2, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_12_1:Lcom/ibm/icu/util/VersionInfo;

    const/16 v2, 0xd

    .line 554
    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_13_0:Lcom/ibm/icu/util/VersionInfo;

    const/16 v3, 0x45

    .line 556
    invoke-static {v3, v0, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/VersionInfo;->ICU_VERSION:Lcom/ibm/icu/util/VersionInfo;

    .line 557
    sput-object v1, Lcom/ibm/icu/util/VersionInfo;->ICU_DATA_VERSION:Lcom/ibm/icu/util/VersionInfo;

    .line 558
    sput-object v2, Lcom/ibm/icu/util/VersionInfo;->UNICODE_VERSION:Lcom/ibm/icu/util/VersionInfo;

    .line 560
    invoke-static {v5}, Lcom/ibm/icu/util/VersionInfo;->getInstance(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Lcom/ibm/icu/util/VersionInfo;

    .line 561
    invoke-static {v5}, Lcom/ibm/icu/util/VersionInfo;->getInstance(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Lcom/ibm/icu/util/VersionInfo;

    .line 562
    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UCOL_TAILORINGS_VERSION:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x0

    .line 672
    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput p1, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    return-void
.end method

.method public static getInstance(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-static {p0, v0, v0, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(II)Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 359
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(III)Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    .line 320
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/util/VersionInfo;->getInt(IIII)I

    move-result p0

    .line 321
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 322
    sget-object p2, Lcom/ibm/icu/util/VersionInfo;->MAP_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ibm/icu/util/VersionInfo;

    if-nez p3, :cond_0

    .line 324
    new-instance p3, Lcom/ibm/icu/util/VersionInfo;

    invoke-direct {p3, p0}, Lcom/ibm/icu/util/VersionInfo;-><init>(I)V

    .line 325
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/VersionInfo;

    if-eqz p0, :cond_0

    move-object p3, p0

    :cond_0
    return-object p3

    .line 318
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
    .locals 9

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 270
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "Invalid version number: Version number may be negative or greater than 255"

    if-ge v4, v1, :cond_2

    if-ge v5, v0, :cond_2

    .line 275
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, -0x30

    int-to-char v7, v7

    if-ltz v7, :cond_1

    const/16 v8, 0x9

    if-gt v7, v8, :cond_1

    .line 284
    aget v6, v2, v4

    mul-int/lit8 v6, v6, 0xa

    aput v6, v2, v4

    .line 285
    aget v6, v2, v4

    add-int/2addr v6, v7

    aput v6, v2, v4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ne v5, v0, :cond_5

    const/4 p0, 0x0

    :goto_2
    if-ge p0, v1, :cond_4

    .line 294
    aget v0, v2, p0

    if-ltz v0, :cond_3

    aget v0, v2, p0

    const/16 v4, 0xff

    if-gt v0, v4, :cond_3

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 295
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    aget p0, v2, v3

    const/4 v0, 0x1

    aget v0, v2, v0

    const/4 v1, 0x2

    aget v1, v2, v1

    const/4 v3, 0x3

    aget v2, v2, v3

    .line 299
    invoke-static {p0, v0, v1, v2}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0

    .line 290
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number: String \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' exceeds version format"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getInt(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method static getTZDataVersion()Ljava/lang/String;
    .locals 3

    .line 675
    sget-object v0, Lcom/ibm/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 676
    const-class v0, Lcom/ibm/icu/util/VersionInfo;

    monitor-enter v0

    .line 677
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "zoneinfo64"

    .line 678
    invoke-static {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "TZVersion"

    .line 680
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    .line 682
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 684
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/util/VersionInfo;->TZDATA_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    .line 596
    sget-object p0, Lcom/ibm/icu/util/VersionInfo;->ICU_VERSION:Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v0

    const-string v1, "M"

    const-string v2, ""

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-gt v0, v3, :cond_2

    .line 597
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v0

    rem-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v0

    .line 600
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v0, v0, 0x1

    .line 605
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMilli()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {p0, v4, v4}, Lcom/ibm/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v0

    if-nez v0, :cond_3

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMilli()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_3
    invoke-virtual {p0, v4, v4}, Lcom/ibm/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "International Components for Unicode for Java "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implementation Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Lcom/ibm/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 623
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unicode Data Version:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ibm/icu/util/VersionInfo;->UNICODE_VERSION:Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {v1, v4, v3}, Lcom/ibm/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLDR Data Version:      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ibm/icu/util/LocaleData;->getCLDRVersion()Lcom/ibm/icu/util/VersionInfo;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/ibm/icu/util/VersionInfo;->getVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 625
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time Zone Data Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ibm/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/util/VersionInfo;)I
    .locals 3

    .line 479
    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    ushr-int/lit8 v1, v0, 0x1

    iget p1, p1, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    ushr-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMajor()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMicro()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMilli()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getVersionString(II)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    const/4 v1, 0x4

    if-gt p1, v1, :cond_3

    if-gt p2, v1, :cond_3

    if-gt p1, p2, :cond_3

    new-array v1, v1, [I

    .line 646
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 647
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x2

    .line 648
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMilli()I

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x3

    .line 649
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMicro()I

    move-result v4

    aput v4, v1, v2

    :goto_0
    if-le p2, p1, :cond_1

    add-int/lit8 v2, p2, -0x1

    .line 653
    aget v2, v1, v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 659
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    aget v2, v1, v3

    .line 660
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v0, p2, :cond_2

    const-string v2, "."

    .line 662
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 666
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 642
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid min/maxDigits range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public hashCode()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMilli()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMicro()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
