.class public final Lcom/ibm/icu/lang/UScriptRun;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static PAREN_STACK_DEPTH:I = 0x20

.field private static pairedCharExtra:I

.field private static pairedCharPower:I

.field private static pairedChars:[I

.field private static parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;


# instance fields
.field private emptyCharArray:[C

.field private fixupCount:I

.field private parenSP:I

.field private pushCount:I

.field private scriptCode:I

.field private scriptLimit:I

.field private scriptStart:I

.field private text:[C

.field private textIndex:I

.field private textLimit:I

.field private textStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    .line 545
    sput-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 623
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    .line 643
    array-length v0, v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->highBit(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/ibm/icu/lang/UScriptRun;->pairedCharPower:I

    .line 644
    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    sput v1, Lcom/ibm/icu/lang/UScriptRun;->pairedCharExtra:I

    return-void

    :array_0
    .array-data 4
        0x28
        0x29
        0x3c
        0x3e
        0x5b
        0x5d
        0x7b
        0x7d
        0xab
        0xbb
        0x2018
        0x2019
        0x201c
        0x201d
        0x2039
        0x203a
        0x3008
        0x3009
        0x300a
        0x300b
        0x300c
        0x300d
        0x300e
        0x300f
        0x3010
        0x3011
        0x3014
        0x3015
        0x3016
        0x3017
        0x3018
        0x3019
        0x301a
        0x301b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 532
    iput-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 547
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 548
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1, v0, v0}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 532
    iput-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 547
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 548
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 84
    invoke-virtual {p0, p1}, Lcom/ibm/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 532
    iput-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 547
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 548
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 532
    iput-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 547
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 548
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/ibm/icu/lang/UScriptRun;->reset([C)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 532
    iput-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 546
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 547
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 548
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method private static final dec(I)I
    .locals 1

    const/4 v0, 0x1

    .line 458
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UScriptRun;->dec(II)I

    move-result p0

    return p0
.end method

.method private static final dec(II)I
    .locals 1

    .line 453
    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    add-int/2addr p0, v0

    sub-int/2addr p0, p1

    invoke-static {p0}, Lcom/ibm/icu/lang/UScriptRun;->mod(I)I

    move-result p0

    return p0
.end method

.method private final fixup(I)V
    .locals 3

    .line 524
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0, v1}, Lcom/ibm/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    .line 526
    :goto_0
    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    if-lez v1, :cond_0

    .line 527
    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    .line 528
    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getPairIndex(I)I
    .locals 4

    .line 601
    sget v0, Lcom/ibm/icu/lang/UScriptRun;->pairedCharPower:I

    .line 604
    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    sget v2, Lcom/ibm/icu/lang/UScriptRun;->pairedCharExtra:I

    aget v1, v1, v2

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    shr-int/lit8 v0, v0, 0x1

    .line 611
    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    add-int v3, v2, v0

    aget v1, v1, v3

    if-lt p0, v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 616
    :cond_2
    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    aget v0, v0, v2

    if-eq v0, p0, :cond_3

    const/4 v2, -0x1

    :cond_3
    return v2
.end method

.method private static final highBit(I)B
    .locals 3

    if-gtz p0, :cond_0

    const/16 p0, -0x20

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

.method private static final inc(I)I
    .locals 1

    const/4 v0, 0x1

    .line 448
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UScriptRun;->inc(II)I

    move-result p0

    return p0
.end method

.method private static final inc(II)I
    .locals 0

    add-int/2addr p0, p1

    .line 443
    invoke-static {p0}, Lcom/ibm/icu/lang/UScriptRun;->mod(I)I

    move-result p0

    return p0
.end method

.method private static final limitInc(I)I
    .locals 1

    .line 463
    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method private static final mod(I)I
    .locals 1

    .line 438
    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    rem-int/2addr p0, v0

    return p0
.end method

.method private final pop()V
    .locals 3

    .line 492
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 496
    :cond_0
    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 498
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 499
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 502
    :cond_1
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 503
    invoke-static {v1}, Lcom/ibm/icu/lang/UScriptRun;->dec(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 507
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 508
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    :cond_2
    return-void
.end method

.method private final push(II)V
    .locals 3

    .line 482
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 483
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 485
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    .line 486
    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    new-instance v2, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;-><init>(II)V

    aput-object v2, v1, v0

    return-void
.end method

.method private static sameScript(II)Z
    .locals 1

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    if-le p1, v0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final stackIsEmpty()Z
    .locals 1

    .line 472
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final stackIsNotEmpty()Z
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final syncFixup()V
    .locals 1

    const/4 v0, 0x0

    .line 519
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    return-void
.end method

.method private final top()Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;
    .locals 2

    .line 514
    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public final getScriptCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    return v0
.end method

.method public final getScriptLimit()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    return v0
.end method

.method public final getScriptStart()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptStart:I

    return v0
.end method

.method public final next()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 347
    :cond_0
    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    .line 348
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptStart:I

    .line 350
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->syncFixup()V

    .line 352
    :cond_1
    :goto_0
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7

    .line 353
    iget-object v3, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    iget v4, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    sub-int/2addr v0, v4

    invoke-static {v3, v4, v1, v0}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    .line 354
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    .line 355
    invoke-static {v0}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v3

    .line 356
    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->getPairIndex(I)I

    move-result v0

    .line 358
    iget v4, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    if-ltz v0, :cond_4

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_2

    .line 368
    iget v4, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v0, v4}, Lcom/ibm/icu/lang/UScriptRun;->push(II)V

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v0, -0x2

    .line 372
    :goto_1
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->top()Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v5

    iget v5, v5, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    if-eq v5, v4, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->pop()V

    goto :goto_1

    .line 376
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->top()Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v3

    iget v3, v3, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    .line 382
    :cond_4
    :goto_2
    iget v4, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    invoke-static {v4, v3}, Lcom/ibm/icu/lang/UScriptRun;->sameScript(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 383
    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    if-gt v1, v2, :cond_5

    if-le v3, v2, :cond_5

    .line 384
    iput v3, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    .line 386
    invoke-direct {p0, v3}, Lcom/ibm/icu/lang/UScriptRun;->fixup(I)V

    :cond_5
    if-ltz v0, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->pop()V

    goto :goto_0

    .line 398
    :cond_6
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    .line 403
    :cond_7
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    return v2
.end method

.method public final reset()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->pop()V

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptStart:I

    .line 154
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    const/4 v1, -0x1

    .line 155
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    .line 156
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    const/4 v1, 0x0

    .line 157
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    .line 158
    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    .line 160
    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    return-void
.end method

.method public final reset(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    if-eqz v0, :cond_0

    .line 182
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_1

    .line 189
    iput p1, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    add-int/2addr p1, p2

    .line 190
    iput p1, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    .line 192
    invoke-virtual {p0}, Lcom/ibm/icu/lang/UScriptRun;->reset()V

    return-void

    .line 186
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public final reset(Ljava/lang/String;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 261
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 234
    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 237
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([CII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 214
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    .line 216
    invoke-virtual {p0, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset(II)V

    return-void
.end method
