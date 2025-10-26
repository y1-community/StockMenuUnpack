.class public Lcom/ibm/icu/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    }
.end annotation


# static fields
.field private static final ALL_CS_RECOGNIZERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field private fEnabledRecognizers:[Z

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field private fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_UTF8;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_UTF8;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    new-array v0, v0, [B

    .line 428
    iput-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    const/16 v0, 0x100

    new-array v0, v0, [S

    .line 433
    iput-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 455
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    return-void
.end method

.method private MungeInput()V
    .locals 10

    .line 362
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 363
    :goto_0
    iget v7, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-ge v0, v7, :cond_4

    iget-object v7, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v8, v7

    if-ge v3, v8, :cond_4

    .line 364
    iget-object v8, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v8, v8, v0

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_1

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    :cond_1
    if-nez v6, :cond_2

    add-int/lit8 v9, v3, 0x1

    .line 374
    aput-byte v8, v7, v3

    move v3, v9

    :cond_2
    const/16 v7, 0x3e

    if-ne v8, v7, :cond_3

    const/4 v6, 0x0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_4
    iput v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v0, 0x5

    if-lt v4, v0, :cond_6

    .line 390
    div-int/2addr v4, v0

    if-lt v4, v5, :cond_6

    iget v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_9

    iget v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    const/16 v3, 0x258

    if-le v0, v3, :cond_9

    .line 392
    :cond_6
    iget v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    const/16 v3, 0x1f40

    if-le v0, v3, :cond_7

    const/16 v0, 0x1f40

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_8

    .line 399
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget-object v5, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v5, v5, v3

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 401
    :cond_8
    iput v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 408
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    const/4 v0, 0x0

    .line 409
    :goto_3
    iget v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    if-ge v0, v3, :cond_a

    .line 410
    iget-object v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    .line 411
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v5, v4, v3

    add-int/2addr v5, v1

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 414
    :cond_a
    iput-boolean v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    const/16 v0, 0x80

    :goto_4
    const/16 v2, 0x9f

    if-gt v0, v2, :cond_c

    .line 416
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v2, v2, v0

    if-eqz v2, :cond_b

    .line 417
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    return-void
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .locals 4

    .line 303
    sget-object v0, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 305
    sget-object v3, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v3, v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v3}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public detect()Lcom/ibm/icu/text/CharsetMatch;
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detectAll()[Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public detectAll()[Lcom/ibm/icu/text/CharsetMatch;
    .locals 4

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetDetector;->MungeInput()V

    const/4 v1, 0x0

    .line 193
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 194
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 195
    iget-object v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v3, :cond_0

    aget-boolean v3, v3, v1

    goto :goto_1

    :cond_0
    iget-boolean v3, v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    :goto_1
    if-eqz v3, :cond_1

    .line 197
    iget-object v2, v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v2, p0}, Lcom/ibm/icu/text/CharsetRecognizer;->match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 204
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/ibm/icu/text/CharsetMatch;

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/CharsetMatch;

    return-object v0
.end method

.method public enableInputFilter(Z)Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 339
    iput-boolean p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public getDetectableCharsets()[Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 528
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 529
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 530
    iget-object v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    goto :goto_1

    :cond_0
    aget-boolean v3, v3, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 532
    iget-object v2, v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v2}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 234
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    const/4 p2, 0x0

    .line 237
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;

    .line 239
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 269
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    const/4 p2, 0x0

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetDetector;->setText([B)Lcom/ibm/icu/text/CharsetDetector;

    .line 274
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, -0x1

    .line 280
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public inputFilterEnabled()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Lcom/ibm/icu/text/CharsetDetector;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setDetectableCharset(Ljava/lang/String;Z)Lcom/ibm/icu/text/CharsetDetector;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 557
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 558
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 559
    iget-object v4, v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    iget-boolean v3, v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    if-ne v3, p2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ltz v1, :cond_5

    .line 570
    iget-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez p1, :cond_3

    if-nez v3, :cond_3

    .line 572
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    .line 575
    :goto_2
    sget-object p1, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 576
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-boolean p1, p1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    aput-boolean p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 580
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz p1, :cond_4

    .line 581
    aput-boolean p2, p1, v1

    :cond_4
    return-object p0

    .line 567
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid encoding: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    const/16 v0, 0x1f40

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    new-array p1, v0, [B

    .line 118
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    :goto_0
    if-lez v0, :cond_1

    .line 125
    iget-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iget v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    iget v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 132
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object p0
.end method

.method public setText([B)Lcom/ibm/icu/text/CharsetDetector;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 92
    array-length p1, p1

    iput p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    return-object p0
.end method
