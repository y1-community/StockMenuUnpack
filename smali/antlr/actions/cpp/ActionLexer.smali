.class public Lantlr/actions/cpp/ActionLexer;
.super Lantlr/CharScanner;
.source "ActionLexer.java"

# interfaces
.implements Lantlr/actions/cpp/ActionLexerTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_10:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_11:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_12:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_13:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_14:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_15:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_16:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_17:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_18:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_19:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_20:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_21:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_22:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_23:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_24:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_25:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_26:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_6:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_7:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_8:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_9:Lantlr/collections/impl/BitSet;


# instance fields
.field private antlrTool:Lantlr/Tool;

.field protected currentRule:Lantlr/RuleBlock;

.field protected generator:Lantlr/CodeGenerator;

.field protected lineOffset:I

.field transInfo:Lantlr/ActionTransInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2401
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 2408
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 2415
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 2420
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 2425
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 2430
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 2435
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 2443
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    .line 2451
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    .line 2456
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_9()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    .line 2461
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_10()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    .line 2466
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_11()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    .line 2471
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_12()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    .line 2476
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_13()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_13:Lantlr/collections/impl/BitSet;

    .line 2483
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_14()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_14:Lantlr/collections/impl/BitSet;

    .line 2488
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_15()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_15:Lantlr/collections/impl/BitSet;

    .line 2493
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_16()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_16:Lantlr/collections/impl/BitSet;

    .line 2498
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_17()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_17:Lantlr/collections/impl/BitSet;

    .line 2503
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_18()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_18:Lantlr/collections/impl/BitSet;

    .line 2508
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_19()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_19:Lantlr/collections/impl/BitSet;

    .line 2513
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_20()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_20:Lantlr/collections/impl/BitSet;

    .line 2518
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_21()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_21:Lantlr/collections/impl/BitSet;

    .line 2523
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_22()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_22:Lantlr/collections/impl/BitSet;

    .line 2528
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_23()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_23:Lantlr/collections/impl/BitSet;

    .line 2533
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_24()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    .line 2538
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_25()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_25:Lantlr/collections/impl/BitSet;

    .line 2543
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/cpp/ActionLexer;->mk_tokenSet_26()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/cpp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 107
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lantlr/actions/cpp/ActionLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lantlr/actions/cpp/ActionLexer;->lineOffset:I

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lantlr/actions/cpp/ActionLexer;->caseSensitiveLiterals:Z

    .line 112
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->setCaseSensitive(Z)V

    .line 113
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 101
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/actions/cpp/ActionLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 104
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/actions/cpp/ActionLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lantlr/actions/cpp/ActionLexer;-><init>(Ljava/io/Reader;)V

    .line 68
    iput-object p2, p0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    .line 69
    iput-object p3, p0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    .line 70
    iput-object p4, p0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x1800000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 2398
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_1()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x840000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 2405
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_10()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2458
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff089400000000L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_11()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2463
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff1a9500002600L
        0x7fffffea7fffffeL    # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_12()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2468
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x400000000000000L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_13()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2473
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3400ff0100002600L    # 3.3845454728352894E-58
        0x28000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_14()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x4000000000000008L    # -1.9999999999999982

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 2480
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_15()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2485
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff038d00002600L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_16()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2490
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2000be0100002600L
        0x20000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_17()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2495
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2000000100002600L    # 1.491669568808863E-154
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_18()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2500
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0xbe0100002600L
        0x20000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_19()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2505
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x400010c00000000L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_2()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x809c00002408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 2412
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_20()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2510
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0xac0100002600L
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_21()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2515
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ffad8d00002600L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_22()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2520
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff7b9500002600L
        0x7fffffeaffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_23()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2525
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff0a9500002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_24()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2530
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff089500002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_25()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2535
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7fffe9500002600L
        0x7fffffea7fffffeL    # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_26()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2540
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ffbe9500002600L
        0x7fffffea7fffffeL    # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_3()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2417
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x400000100002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_4()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2422
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x100002600L    # 2.122000597E-314
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_5()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2427
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x10100002600L
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_6()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2432
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff099500002600L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_7()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x400000008L

    aput-wide v2, v0, v1

    const-wide/32 v1, -0x10000001

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 2440
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_8()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000000008L

    aput-wide v2, v0, v1

    const-wide/32 v1, -0x10000001

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 2448
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_9()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2453
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x7ff000000000000L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final mACTION(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 163
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_4

    const/16 v5, 0x24

    if-eq v4, v5, :cond_3

    .line 175
    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mSTUFF(Z)V

    goto :goto_2

    :cond_0
    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 186
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 187
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 189
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 179
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 171
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ITEM(Z)V

    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mAST_ITEM(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected final mARG(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1769
    iget-object v1, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 1774
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    const/16 v5, 0x27

    const/16 v6, 0xff

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 1788
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_19:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_0

    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_0

    invoke-virtual {v0, v9}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_0

    invoke-virtual {v0, v9}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_0

    .line 1789
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mTREE_ELEMENT(Z)V

    goto :goto_0

    .line 1791
    :cond_0
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_1

    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_1

    invoke-virtual {v0, v9}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_1

    invoke-virtual {v0, v9}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1792
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mSTRING(Z)V

    goto :goto_0

    .line 1795
    :cond_1
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1784
    :pswitch_0
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mINT_OR_FLOAT(Z)V

    goto :goto_0

    .line 1777
    :cond_2
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mCHAR(Z)V

    .line 1802
    :goto_0
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_20:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_21:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v9}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_c

    invoke-virtual {v0, v9}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_c

    .line 1804
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v10, 0x20

    const/16 v11, 0xd

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x2b

    const/16 v15, 0x2a

    const/16 v6, 0x2f

    const/16 v7, 0x2d

    if-eq v3, v13, :cond_4

    if-eq v3, v12, :cond_4

    if-eq v3, v11, :cond_4

    if-eq v3, v10, :cond_4

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_5

    if-eq v3, v15, :cond_5

    if-ne v3, v14, :cond_3

    goto :goto_1

    .line 1816
    :cond_3
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1807
    :cond_4
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1821
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_9

    if-eq v3, v14, :cond_8

    if-eq v3, v7, :cond_7

    if-ne v3, v6, :cond_6

    .line 1839
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_2

    .line 1844
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1829
    :cond_7
    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_2

    .line 1824
    :cond_8
    invoke-virtual {v0, v14}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_2

    .line 1834
    :cond_9
    invoke-virtual {v0, v15}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1849
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v13, :cond_a

    if-eq v3, v12, :cond_a

    if-eq v3, v11, :cond_a

    if-eq v3, v10, :cond_a

    const/16 v6, 0x5f

    if-eq v3, v6, :cond_b

    if-eq v3, v4, :cond_b

    const/16 v6, 0x23

    if-eq v3, v6, :cond_b

    if-eq v3, v5, :cond_b

    const/16 v6, 0x28

    if-eq v3, v6, :cond_b

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    .line 1878
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1852
    :cond_a
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1882
    :cond_b
    :pswitch_1
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mARG(Z)V

    const/16 v6, 0xff

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_d

    const/16 v2, 0x10

    .line 1891
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 1892
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    .line 1894
    :goto_3
    iput-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final mAST_CONSTRUCTOR(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1059
    iget-object v1, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 1065
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/16 v3, 0x5b

    .line 1066
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1067
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    const/4 v2, 0x1

    .line 1069
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x22

    const/16 v6, 0x5f

    const/16 v7, 0x28

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/16 v10, 0xd

    const/16 v11, 0x9

    const/16 v12, 0xa

    if-eq v3, v11, :cond_0

    if-eq v3, v12, :cond_0

    if-eq v3, v10, :cond_0

    if-eq v3, v9, :cond_0

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 1099
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1072
    :cond_0
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1073
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1074
    iget-object v13, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1103
    :cond_1
    :pswitch_0
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1104
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mAST_CTOR_ELEMENT(Z)V

    .line 1105
    iget-object v13, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1106
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1108
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v13

    const/16 v14, 0x2c

    const/16 v15, 0x5d

    if-eq v13, v11, :cond_3

    if-eq v13, v12, :cond_3

    if-eq v13, v10, :cond_3

    if-eq v13, v9, :cond_3

    if-eq v13, v14, :cond_4

    if-ne v13, v15, :cond_2

    goto :goto_0

    .line 1122
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1111
    :cond_3
    iget-object v13, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v13

    .line 1112
    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1113
    iget-object v8, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v13}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1127
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v8

    const/4 v13, 0x0

    if-eq v8, v14, :cond_6

    if-ne v8, v15, :cond_5

    move-object v4, v13

    goto/16 :goto_1

    .line 1199
    :cond_5
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1130
    :cond_6
    iget-object v8, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v8

    .line 1131
    invoke-virtual {v0, v14}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1132
    iget-object v14, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v8}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1134
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v8

    if-eq v8, v11, :cond_7

    if-eq v8, v12, :cond_7

    if-eq v8, v10, :cond_7

    if-eq v8, v9, :cond_7

    if-eq v8, v7, :cond_8

    if-eq v8, v6, :cond_8

    if-eq v8, v5, :cond_8

    if-eq v8, v4, :cond_8

    packed-switch v8, :pswitch_data_3

    packed-switch v8, :pswitch_data_4

    packed-switch v8, :pswitch_data_5

    .line 1164
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1137
    :cond_7
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    const/4 v5, 0x0

    .line 1138
    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1139
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1168
    :cond_8
    :pswitch_1
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1169
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mAST_CTOR_ELEMENT(Z)V

    .line 1170
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1171
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1173
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v5

    if-eq v5, v11, :cond_a

    if-eq v5, v12, :cond_a

    if-eq v5, v10, :cond_a

    if-eq v5, v9, :cond_a

    if-ne v5, v15, :cond_9

    goto :goto_1

    .line 1187
    :cond_9
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1176
    :cond_a
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/4 v5, 0x0

    .line 1177
    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1178
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1203
    :goto_1
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1204
    invoke-virtual {v0, v15}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1205
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1209
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/CodeGenerator;->processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_b

    .line 1214
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    :cond_b
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v4, v13, v2}, Lantlr/CodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 1219
    invoke-virtual {v0, v12}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v13

    .line 1220
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v3

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v13, v2}, Lantlr/Token;->setText(Ljava/lang/String;)V

    .line 1222
    :cond_c
    iput-object v13, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final mAST_CTOR_ELEMENT(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1718
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1722
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x22

    if-ne v2, v7, :cond_0

    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v4, :cond_0

    .line 1723
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->mSTRING(Z)V

    goto :goto_0

    .line 1725
    :cond_0
    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_19:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v2, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_1

    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v4, :cond_1

    .line 1726
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->mTREE_ELEMENT(Z)V

    goto :goto_0

    .line 1728
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_3

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x39

    if-gt v2, v4, :cond_3

    .line 1729
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->mINT(Z)V

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0xb

    .line 1736
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1737
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1739
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1732
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mAST_ITEM(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_0

    .line 265
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 266
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 267
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 268
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mTREE(Z)V

    .line 269
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_2

    .line 271
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-ne v2, v4, :cond_7

    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v2, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 273
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 274
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 276
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 301
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 279
    :cond_1
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 305
    :cond_2
    :pswitch_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mID(Z)V

    .line 306
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 308
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    .line 309
    iget-object v4, p0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    invoke-virtual {v4, v2, v7}, Lantlr/CodeGenerator;->mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 312
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 314
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "if"

    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "define"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ifdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ifndef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "else"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "elif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "endif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "warning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ident"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "pragma"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 331
    :cond_4
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 336
    :cond_5
    :goto_0
    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 337
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 344
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-ne v1, v5, :cond_c

    .line 345
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->mVAR_ASSIGN(Z)V

    goto/16 :goto_2

    .line 352
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_8

    .line 353
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 354
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 355
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 356
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mAST_CONSTRUCTOR(Z)V

    .line 357
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    goto :goto_2

    .line 359
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_e

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_e

    const-string v2, "##"

    .line 360
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 362
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    if-eqz v3, :cond_9

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v3}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_AST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    if-eqz v3, :cond_a

    .line 368
    iput-object v2, v3, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v3, "\"##\" not valid in this context"

    .line 373
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->reportWarning(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 378
    :cond_a
    :goto_1
    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 379
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 386
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-ne v1, v5, :cond_c

    .line 387
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->mVAR_ASSIGN(Z)V

    :cond_c
    :goto_2
    if-eqz p1, :cond_d

    const/4 p1, 0x6

    .line 399
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 400
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 402
    :goto_3
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 395
    :cond_e
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mCHAR(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x27

    .line 703
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    const/4 v2, 0x1

    .line 705
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 706
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->mESC(Z)V

    goto :goto_0

    .line 708
    :cond_0
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->matchNot(C)V

    .line 716
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    if-eqz p1, :cond_1

    const/16 p1, 0x16

    .line 718
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 719
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 721
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 712
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mCOMMENT(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 652
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 653
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->mSL_COMMENT(Z)V

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_2

    .line 656
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->mML_COMMENT(Z)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x13

    .line 663
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 664
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 666
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 659
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 2382
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 2386
    invoke-virtual {p0, v1, v2}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    .line 2388
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2389
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2391
    :goto_0
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mESC(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 2269
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 2273
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    const/4 v2, 0x1

    .line 2275
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_e

    const/16 v4, 0x27

    if-eq v3, v4, :cond_d

    if-eq v3, v1, :cond_c

    const/16 v1, 0x62

    if-eq v3, v1, :cond_b

    const/16 v1, 0x66

    if-eq v3, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_9

    const/16 v1, 0x72

    if-eq v3, v1, :cond_8

    const/16 v1, 0x74

    if-eq v3, v1, :cond_7

    const/16 v1, 0x76

    if-eq v3, v1, :cond_6

    const/4 v1, 0x0

    const/16 v4, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_0

    .line 2370
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v3, 0x34

    const/16 v9, 0x37

    .line 2353
    invoke-virtual {p0, v3, v9}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    .line 2356
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_0

    .line 2357
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 2359
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_1

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_1

    goto/16 :goto_0

    .line 2362
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v3, 0x33

    .line 2324
    invoke-virtual {p0, v5, v3}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    .line 2327
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_4

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_4

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_4

    .line 2328
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mDIGIT(Z)V

    .line 2330
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_2

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_2

    .line 2331
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 2333
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_3

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_3

    goto :goto_0

    .line 2336
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2341
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    goto :goto_0

    .line 2344
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2293
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2288
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2283
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2278
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2303
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2298
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2318
    :cond_c
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2313
    :cond_d
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2308
    :cond_e
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_f

    const/16 p1, 0x18

    .line 2375
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2376
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const/4 p1, 0x0

    .line 2378
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mID(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 934
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x3a

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/16 v6, 0x5a

    const/16 v7, 0x41

    const-string v8, "::"

    const/16 v9, 0x5f

    if-eq v2, v3, :cond_1

    if-eq v2, v9, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 969
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 943
    :pswitch_0
    invoke-virtual {p0, v5, v4}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 954
    :pswitch_1
    invoke-virtual {p0, v7, v6}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {p0, v9}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p0, v8}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 976
    :goto_0
    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 978
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-eq v2, v9, :cond_2

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    .line 1020
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 987
    :pswitch_2
    invoke-virtual {p0, v5, v4}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 998
    :pswitch_3
    invoke-virtual {p0, v7, v6}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 1015
    :pswitch_4
    invoke-virtual {p0, v8}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x30

    const/16 v3, 0x39

    .line 1005
    invoke-virtual {p0, v2, v3}, Lantlr/actions/cpp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 1010
    :cond_2
    invoke-virtual {p0, v9}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/16 p1, 0x11

    .line 1032
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1033
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 1035
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected final mID_ELEMENT(Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1397
    iget-object v1, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 1402
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mID(Z)V

    .line 1403
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1405
    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_13:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1406
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1407
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1408
    iget-object v7, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_0

    .line 1410
    :cond_0
    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_13:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1418
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v10, 0x5f

    const/16 v11, 0x3e

    const/16 v12, 0x3c

    const/4 v13, 0x3

    const/16 v14, 0x28

    const/16 v15, 0x20

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x9

    if-eq v4, v14, :cond_11

    const/16 v14, 0x2e

    if-eq v4, v14, :cond_10

    const/16 v14, 0x3a

    if-eq v4, v14, :cond_f

    if-eq v4, v12, :cond_11

    const/16 v12, 0x5b

    if-eq v4, v12, :cond_8

    .line 1659
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v10, 0x2d

    if-ne v4, v10, :cond_1

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    if-ne v4, v11, :cond_1

    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v4, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "->"

    .line 1660
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mID_ELEMENT(Z)Z

    goto/16 :goto_b

    .line 1663
    :cond_1
    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_16:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v4, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1666
    iget-object v10, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v11, v0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    invoke-virtual {v10, v3, v11}, Lantlr/CodeGenerator;->mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1669
    iget-object v10, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v10, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v3}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 1673
    :cond_2
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_17:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1675
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_4

    if-eq v3, v15, :cond_4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 1687
    :cond_3
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1678
    :cond_4
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1691
    :goto_1
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mVAR_ASSIGN(Z)V

    goto/16 :goto_c

    .line 1693
    :cond_5
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_18:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_c

    .line 1696
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1702
    :cond_7
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_8
    const/4 v3, 0x0

    .line 1577
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    if-ne v4, v12, :cond_d

    .line 1578
    invoke-virtual {v0, v12}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1580
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    if-eq v4, v9, :cond_9

    if-eq v4, v8, :cond_9

    if-eq v4, v7, :cond_9

    if-eq v4, v15, :cond_9

    if-eq v4, v10, :cond_a

    const/16 v5, 0x22

    if-eq v4, v5, :cond_a

    const/16 v5, 0x23

    if-eq v4, v5, :cond_a

    const/16 v5, 0x27

    if-eq v4, v5, :cond_a

    const/16 v5, 0x28

    if-eq v4, v5, :cond_a

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    .line 1611
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1583
    :cond_9
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1584
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1585
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1615
    :cond_a
    :pswitch_0
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mARG(Z)V

    .line 1617
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x5d

    if-eq v4, v9, :cond_c

    if-eq v4, v8, :cond_c

    if-eq v4, v7, :cond_c

    if-eq v4, v15, :cond_c

    if-ne v4, v5, :cond_b

    goto :goto_3

    .line 1631
    :cond_b
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1620
    :cond_c
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1621
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1622
    iget-object v11, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1635
    :goto_3
    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_d
    if-lt v3, v2, :cond_e

    goto/16 :goto_b

    .line 1638
    :cond_e
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_f
    const-string v2, "::"

    .line 1654
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mID_ELEMENT(Z)Z

    goto/16 :goto_b

    .line 1648
    :cond_10
    invoke-virtual {v0, v14}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1649
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mID_ELEMENT(Z)Z

    goto/16 :goto_b

    .line 1422
    :cond_11
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_14

    if-ne v3, v12, :cond_13

    .line 1425
    invoke-virtual {v0, v12}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1429
    :goto_4
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_14:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1430
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->matchNot(C)V

    goto :goto_4

    .line 1438
    :cond_12
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_5

    .line 1447
    :cond_13
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_14
    :goto_5
    const/16 v3, 0x28

    .line 1451
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1453
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_15

    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_15:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    invoke-virtual {v3, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_15

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_15

    .line 1454
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1455
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1456
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_6

    .line 1458
    :cond_15
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_15:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    invoke-virtual {v3, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_1f

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_1f

    .line 1466
    :goto_6
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v9, :cond_1b

    if-eq v3, v8, :cond_1b

    if-eq v3, v7, :cond_1b

    if-eq v3, v15, :cond_1b

    if-eq v3, v10, :cond_16

    const/16 v4, 0x22

    if-eq v3, v4, :cond_16

    const/16 v4, 0x23

    if-eq v3, v4, :cond_16

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    .line 1545
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1486
    :cond_16
    :pswitch_1
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mARG(Z)V

    .line 1490
    :goto_7
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1b

    .line 1491
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1493
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v9, :cond_19

    if-eq v3, v8, :cond_19

    if-eq v3, v7, :cond_19

    if-eq v3, v15, :cond_19

    const/16 v4, 0x22

    const/16 v5, 0x23

    if-eq v3, v10, :cond_18

    if-eq v3, v4, :cond_18

    const/16 v11, 0x27

    if-eq v3, v5, :cond_17

    const/16 v12, 0x28

    if-eq v3, v11, :cond_1a

    if-eq v3, v12, :cond_1a

    packed-switch v3, :pswitch_data_7

    packed-switch v3, :pswitch_data_8

    packed-switch v3, :pswitch_data_9

    .line 1524
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_17
    :goto_8
    const/16 v12, 0x28

    goto :goto_9

    :cond_18
    const/16 v11, 0x27

    goto :goto_8

    :cond_19
    const/16 v4, 0x22

    const/16 v5, 0x23

    const/16 v11, 0x27

    const/16 v12, 0x28

    .line 1496
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1497
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1498
    iget-object v13, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1528
    :cond_1a
    :goto_9
    :pswitch_2
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mARG(Z)V

    goto :goto_7

    .line 1550
    :cond_1b
    :pswitch_3
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v9, :cond_1d

    if-eq v3, v8, :cond_1d

    if-eq v3, v7, :cond_1d

    if-eq v3, v15, :cond_1d

    if-ne v3, v4, :cond_1c

    goto :goto_a

    .line 1564
    :cond_1c
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1553
    :cond_1d
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1554
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1555
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1568
    :goto_a
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    :goto_b
    const/4 v2, 0x0

    :goto_c
    if-eqz p1, :cond_1e

    const/16 v3, 0xc

    .line 1707
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v3

    .line 1708
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v5

    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    .line 1710
    :goto_d
    iput-object v3, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return v2

    .line 1461
    :cond_1f
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1413
    :cond_20
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_f

    :goto_e
    throw v1

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x27
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x41
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x61
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected final mINT(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1743
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 1751
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    .line 1752
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x1a

    .line 1762
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1763
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1765
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1755
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected final mINT_OR_FLOAT(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 2138
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x2

    if-lt v4, v6, :cond_0

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    if-gt v4, v5, :cond_0

    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_25:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v4, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2139
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_7

    .line 2149
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_1

    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2150
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_2

    .line 2152
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_2

    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2153
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_2

    .line 2155
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_3

    .line 2156
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2160
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_4

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_4

    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2161
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mDIGIT(Z)V

    goto :goto_1

    .line 2170
    :cond_3
    sget-object v1, Lantlr/actions/cpp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    const/16 p1, 0x1b

    .line 2178
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2179
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 2181
    :goto_3
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 2173
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2142
    :cond_7
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected final mML_COMMENT(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 2228
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "/*"

    .line 2232
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 2237
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 2238
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v5, 0xd

    const/16 v6, 0xff

    const/4 v7, 0x3

    if-ne v2, v5, :cond_1

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_1

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_1

    .line 2239
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2240
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2241
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto :goto_0

    .line 2243
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    .line 2244
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2245
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto :goto_0

    .line 2247
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_3

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_3

    .line 2248
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2249
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto/16 :goto_0

    .line 2251
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_4

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_4

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_4

    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_4

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_4

    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_4

    const v1, 0xffff

    .line 2252
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->matchNot(C)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v1, "*/"

    .line 2260
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/16 p1, 0x15

    .line 2262
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2263
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 2265
    :goto_2
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mSL_COMMENT(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 2185
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "//"

    .line 2189
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 2194
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 2195
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v6, 0x3

    if-lt v2, v6, :cond_1

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0xff

    if-gt v2, v7, :cond_1

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_1

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_1

    const v1, 0xffff

    .line 2196
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->matchNot(C)V

    goto :goto_0

    .line 2205
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v1, "\r\n"

    .line 2206
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    goto :goto_2

    .line 2208
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    .line 2209
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_2

    .line 2211
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    .line 2212
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2219
    :goto_2
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    if-eqz p1, :cond_4

    const/16 p1, 0x14

    .line 2221
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2222
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 2224
    :goto_3
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 2215
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected final mSTRING(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 674
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 678
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 679
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->mESC(Z)V

    goto :goto_0

    .line 681
    :cond_0
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->matchNot(C)V

    goto :goto_0

    .line 690
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    if-eqz p1, :cond_2

    const/16 p1, 0x17

    .line 692
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 693
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 695
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mSTUFF(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    const/16 v4, 0x27

    if-eq v2, v4, :cond_7

    .line 218
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2f

    const/4 v6, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 219
    :cond_0
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mCOMMENT(Z)V

    goto/16 :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v1, "\r\n"

    .line 222
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto/16 :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_3

    .line 226
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 227
    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 228
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 233
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_5

    .line 237
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 238
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto :goto_0

    .line 240
    :cond_5
    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 246
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 208
    :cond_7
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mCHAR(Z)V

    goto :goto_0

    .line 203
    :cond_8
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mSTRING(Z)V

    goto :goto_0

    .line 213
    :cond_9
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 214
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    :goto_0
    if-eqz p1, :cond_a

    const/4 p1, 0x5

    .line 250
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 251
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    .line 253
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mTEXT_ARG(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1231
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 1259
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1234
    :cond_0
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    :cond_1
    :pswitch_0
    const/4 v2, 0x0

    .line 1267
    :goto_0
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_4

    .line 1268
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG_ELEMENT(Z)V

    .line 1270
    sget-object v6, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lantlr/actions/cpp/ActionLexer;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v6, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1271
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    goto :goto_1

    .line 1273
    :cond_2
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1276
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_4
    if-lt v2, v1, :cond_6

    if-eqz p1, :cond_5

    .line 1289
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1290
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 1292
    :goto_2
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1282
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final mTEXT_ARG_ELEMENT(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1898
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1902
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0x24

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 1950
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1935
    :pswitch_0
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->mINT_OR_FLOAT(Z)V

    goto :goto_0

    .line 1918
    :cond_0
    :pswitch_1
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto :goto_0

    .line 1945
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_0

    .line 1928
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->mCHAR(Z)V

    goto :goto_0

    .line 1940
    :cond_3
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ITEM(Z)V

    goto :goto_0

    .line 1923
    :cond_4
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->mSTRING(Z)V

    :goto_0
    if-eqz p1, :cond_5

    const/16 p1, 0xe

    .line 1954
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1955
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 1957
    :goto_1
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final mTEXT_ARG_ID_ELEMENT(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1961
    iget-object v1, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 1966
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mID(Z)V

    .line 1967
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1969
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_22:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1970
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1971
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1972
    iget-object v7, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_0

    .line 1974
    :cond_0
    sget-object v4, Lantlr/actions/cpp/ActionLexer;->_tokenSet_22:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v4, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1982
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x28

    const/16 v12, 0xff

    const/4 v13, 0x3

    if-eq v4, v11, :cond_c

    const/16 v3, 0x5b

    if-eq v4, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v4, v3, :cond_4

    const/16 v3, 0x2e

    if-eq v4, v3, :cond_3

    .line 2111
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "::"

    .line 2112
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto/16 :goto_7

    .line 2115
    :cond_1
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_7

    .line 2118
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 2100
    :cond_3
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2101
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto/16 :goto_7

    :cond_4
    const-string v2, "->"

    .line 2106
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto/16 :goto_7

    :cond_5
    const/4 v4, 0x0

    .line 2052
    :goto_1
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-ne v11, v3, :cond_a

    .line 2053
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2055
    sget-object v11, Lantlr/actions/cpp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lantlr/actions/cpp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-lt v11, v13, :cond_6

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-gt v11, v12, :cond_6

    .line 2056
    iget-object v11, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v11

    .line 2057
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 2058
    iget-object v14, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v11}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_2

    .line 2060
    :cond_6
    sget-object v11, Lantlr/actions/cpp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v14

    invoke-virtual {v11, v14}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-lt v11, v13, :cond_9

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-gt v11, v12, :cond_9

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-lt v11, v13, :cond_9

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    if-gt v11, v12, :cond_9

    .line 2067
    :goto_2
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 2069
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v11

    const/16 v14, 0x5d

    if-eq v11, v10, :cond_8

    if-eq v11, v9, :cond_8

    if-eq v11, v8, :cond_8

    if-eq v11, v7, :cond_8

    if-ne v11, v14, :cond_7

    goto :goto_3

    .line 2083
    :cond_7
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 2072
    :cond_8
    iget-object v11, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v11

    .line 2073
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 2074
    iget-object v15, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v11}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 2087
    :goto_3
    invoke-virtual {v0, v14}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2063
    :cond_9
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_a
    if-lt v4, v2, :cond_b

    goto/16 :goto_7

    .line 2090
    :cond_b
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1985
    :cond_c
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1987
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_23:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_d

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v12, :cond_d

    .line 1988
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1989
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 1990
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_4

    .line 1992
    :cond_d
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_23:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_13

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v12, :cond_13

    .line 2002
    :cond_e
    :goto_4
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_f

    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v12, :cond_f

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_f

    invoke-virtual {v0, v13}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v12, :cond_f

    .line 2003
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 2007
    :goto_5
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_e

    .line 2008
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 2009
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    goto :goto_5

    .line 2025
    :cond_f
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v10, :cond_11

    if-eq v3, v9, :cond_11

    if-eq v3, v8, :cond_11

    if-eq v3, v7, :cond_11

    if-ne v3, v4, :cond_10

    goto :goto_6

    .line 2039
    :cond_10
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 2028
    :cond_11
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 2029
    invoke-virtual {v0, v6}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 2030
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 2043
    :goto_6
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    :goto_7
    if-eqz p1, :cond_12

    const/16 v2, 0xf

    .line 2123
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 2124
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    .line 2126
    :goto_8
    iput-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1995
    :cond_13
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1977
    :cond_14
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method protected final mTEXT_ITEM(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 406
    iget-object v1, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 416
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xff

    const-string v5, ": unknown rule or bad lookahead computation"

    const-string v6, ")"

    const/16 v7, 0x46

    const/16 v9, 0x24

    const/16 v12, 0x20

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x28

    if-ne v3, v9, :cond_5

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v7, :cond_5

    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v7, 0x4f

    if-ne v3, v7, :cond_5

    const-string v3, "$FOLLOW"

    .line 417
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 419
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_2

    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_2

    .line 421
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_1

    if-eq v3, v14, :cond_1

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_1

    if-ne v3, v11, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    .line 424
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 437
    :goto_0
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 438
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 439
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v4, 0x29

    .line 440
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 447
    :goto_1
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 449
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    .line 451
    :cond_3
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3, v4, v2}, Lantlr/CodeGenerator;->getFOLLOWBitSet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 454
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FOLLOW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->reportError(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 458
    :cond_4
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 462
    :cond_5
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_b

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v7, 0x46

    if-ne v3, v7, :cond_b

    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v7, 0x49

    if-ne v3, v7, :cond_b

    const-string v3, "$FIRST"

    .line 463
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 465
    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lantlr/actions/cpp/ActionLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_8

    invoke-virtual {v0, v8}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_8

    .line 467
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_7

    if-eq v3, v13, :cond_7

    if-eq v3, v12, :cond_7

    if-ne v3, v11, :cond_6

    goto :goto_2

    .line 479
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_7
    const/4 v3, 0x0

    .line 470
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 483
    :goto_2
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 484
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 485
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v4, 0x29

    .line 486
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 493
    :goto_3
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_9

    .line 495
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    .line 497
    :cond_9
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3, v4, v2}, Lantlr/CodeGenerator;->getFIRSTBitSet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 500
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FIRST("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->reportError(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 504
    :cond_a
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 508
    :cond_b
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_e

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_e

    const-string v3, "$append"

    .line 509
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_d

    if-eq v3, v14, :cond_d

    if-eq v3, v13, :cond_d

    if-eq v3, v12, :cond_d

    if-ne v3, v11, :cond_c

    goto :goto_4

    .line 523
    :cond_c
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_d
    const/4 v3, 0x0

    .line 514
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 527
    :goto_4
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 528
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 529
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 530
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 532
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "text += "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 536
    :cond_e
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_18

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_18

    const-string v3, "$set"

    .line 537
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_11

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_11

    const-string v3, "Text"

    .line 540
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_10

    if-eq v3, v14, :cond_10

    if-eq v3, v13, :cond_10

    if-eq v3, v12, :cond_10

    if-ne v3, v11, :cond_f

    goto :goto_5

    .line 554
    :cond_f
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_10
    const/4 v3, 0x0

    .line 545
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 558
    :goto_5
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 559
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 560
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 561
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 564
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "{ text.erase(_begin); text += "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; }"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 565
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 568
    :cond_11
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_14

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x6f

    if-ne v3, v5, :cond_14

    const-string v3, "Token"

    .line 569
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_13

    if-eq v3, v14, :cond_13

    if-eq v3, v13, :cond_13

    if-eq v3, v12, :cond_13

    if-ne v3, v11, :cond_12

    goto :goto_6

    .line 583
    :cond_12
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_13
    const/4 v3, 0x0

    .line 574
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 587
    :goto_6
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 588
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 589
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 590
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 592
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 596
    :cond_14
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_17

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x79

    if-ne v3, v4, :cond_17

    const-string v3, "Type"

    .line 597
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_16

    if-eq v3, v14, :cond_16

    if-eq v3, v13, :cond_16

    if-eq v3, v12, :cond_16

    if-ne v3, v11, :cond_15

    goto :goto_7

    .line 611
    :cond_15
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_16
    const/4 v3, 0x0

    .line 602
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 615
    :goto_7
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 616
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->mTEXT_ARG(Z)V

    .line 617
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 618
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 620
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_ttype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_8

    .line 625
    :cond_17
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 630
    :cond_18
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_1a

    invoke-virtual {v0, v10}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1a

    const-string v2, "$getText"

    .line 631
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 633
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    const-string v3, "text.substr(_begin,text.length()-_begin)"

    invoke-virtual {v2, v3}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    :goto_8
    if-eqz p1, :cond_19

    const/4 v2, 0x7

    .line 641
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v8

    .line 642
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v3

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v2}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    const/4 v8, 0x0

    .line 644
    :goto_9
    iput-object v8, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 637
    :cond_1a
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1
.end method

.method protected final mTREE(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 725
    iget-object v1, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 733
    new-instance v2, Lantlr/collections/impl/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lantlr/collections/impl/Vector;-><init>(I)V

    .line 736
    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    const/16 v5, 0x28

    .line 737
    invoke-virtual {v0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 738
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    const/4 v4, 0x1

    .line 740
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    const/16 v7, 0x23

    const/16 v8, 0x22

    const/16 v9, 0x5f

    const/16 v10, 0x3a

    const/4 v11, 0x0

    const/16 v12, 0x20

    const/16 v13, 0xd

    const/16 v14, 0x9

    if-eq v6, v14, :cond_0

    if-eq v6, v3, :cond_0

    if-eq v6, v13, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v5, :cond_1

    if-eq v6, v10, :cond_1

    if-eq v6, v9, :cond_1

    if-eq v6, v8, :cond_1

    if-eq v6, v7, :cond_1

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    .line 768
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 743
    :cond_0
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 744
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 745
    iget-object v15, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 772
    :cond_1
    :pswitch_0
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 773
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->mTREE_ELEMENT(Z)V

    .line 774
    iget-object v15, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 775
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 777
    iget-object v15, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v6}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lantlr/CodeGenerator;->processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 782
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    const/16 v15, 0x29

    const/16 v7, 0x2c

    if-eq v6, v14, :cond_3

    if-eq v6, v3, :cond_3

    if-eq v6, v13, :cond_3

    if-eq v6, v12, :cond_3

    if-eq v6, v15, :cond_4

    if-ne v6, v7, :cond_2

    goto :goto_0

    .line 796
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 785
    :cond_3
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 786
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 787
    iget-object v15, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 803
    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    if-ne v6, v7, :cond_b

    .line 804
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 805
    invoke-virtual {v0, v7}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 806
    iget-object v15, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 808
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v6

    if-eq v6, v14, :cond_6

    if-eq v6, v3, :cond_6

    if-eq v6, v13, :cond_6

    if-eq v6, v12, :cond_6

    if-eq v6, v5, :cond_5

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_5

    const/16 v15, 0x23

    if-eq v6, v15, :cond_7

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    .line 836
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_5
    const/16 v15, 0x23

    goto :goto_1

    :cond_6
    const/16 v15, 0x23

    .line 811
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 812
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 813
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 840
    :cond_7
    :goto_1
    :pswitch_1
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    .line 841
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->mTREE_ELEMENT(Z)V

    .line 842
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v5}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 843
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 845
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lantlr/CodeGenerator;->processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 850
    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v5

    if-eq v5, v14, :cond_9

    if-eq v5, v3, :cond_9

    if-eq v5, v13, :cond_9

    if-eq v5, v12, :cond_9

    const/16 v6, 0x29

    if-eq v5, v6, :cond_a

    if-ne v5, v7, :cond_8

    goto :goto_2

    .line 864
    :cond_8
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 853
    :cond_9
    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    .line 854
    invoke-virtual {v0, v11}, Lantlr/actions/cpp/ActionLexer;->mWS(Z)V

    .line 855
    iget-object v6, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v5}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    :cond_a
    :goto_2
    const/16 v5, 0x28

    goto/16 :goto_0

    .line 875
    :cond_b
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v4, v2}, Lantlr/CodeGenerator;->getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 876
    iget-object v2, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/16 v3, 0x29

    .line 877
    invoke-virtual {v0, v3}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 878
    iget-object v3, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    if-eqz p1, :cond_c

    const/16 v2, 0x8

    .line 880
    invoke-virtual {v0, v2}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 881
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    .line 883
    :goto_3
    iput-object v2, v0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final mTREE_ELEMENT(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1302
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_7

    const/16 v3, 0x28

    if-eq v2, v3, :cond_6

    const/16 v6, 0x3a

    if-eq v2, v6, :cond_5

    const/16 v6, 0x5f

    if-eq v2, v6, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 1337
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v6, 0x2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1338
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 1339
    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1340
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1341
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mTREE(Z)V

    goto/16 :goto_0

    .line 1343
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 1344
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 1345
    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1346
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1347
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mAST_CONSTRUCTOR(Z)V

    goto/16 :goto_0

    .line 1349
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_2

    sget-object v2, Lantlr/actions/cpp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1350
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1351
    invoke-virtual {p0, v7}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 1352
    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1353
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->mID_ELEMENT(Z)Z

    move-result v1

    .line 1354
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    if-nez v1, :cond_8

    .line 1358
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lantlr/CodeGenerator;->mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1361
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    const-string v1, "##"

    .line 1367
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(Ljava/lang/String;)V

    .line 1369
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    if-eqz v2, :cond_3

    .line 1371
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_AST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1372
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "\"##\" not valid in this context"

    .line 1376
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->reportError(Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1310
    :pswitch_0
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mAST_CONSTRUCTOR(Z)V

    goto :goto_0

    .line 1328
    :cond_5
    :pswitch_1
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mID_ELEMENT(Z)Z

    goto :goto_0

    .line 1305
    :cond_6
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mTREE(Z)V

    goto :goto_0

    .line 1333
    :cond_7
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->mSTRING(Z)V

    :cond_8
    :goto_0
    if-eqz p1, :cond_9

    const/16 p1, 0x9

    .line 1386
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v4

    .line 1387
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v1

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, p1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    .line 1389
    :cond_9
    iput-object v4, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final mVAR_ASSIGN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3d

    .line 1043
    invoke-virtual {p0, v1}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    const/4 v2, 0x1

    .line 1047
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1048
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    iput-boolean v2, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x12

    .line 1052
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1053
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1055
    :goto_0
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mWS(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 895
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 896
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 897
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 898
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto :goto_1

    .line 900
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    .line 901
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_1

    .line 903
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    .line 904
    invoke-virtual {p0, v6}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    goto :goto_1

    .line 906
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 907
    invoke-virtual {p0, v5}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 908
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    goto :goto_1

    .line 910
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 911
    invoke-virtual {p0, v4}, Lantlr/actions/cpp/ActionLexer;->match(C)V

    .line 912
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->newline()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-lt v1, v2, :cond_6

    if-eqz p1, :cond_5

    const/16 p1, 0x1c

    .line 922
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 923
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/cpp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 925
    :goto_2
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 915
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 122
    :goto_0
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->resetText()V

    const/4 v0, 0x1

    .line 125
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lantlr/actions/cpp/ActionLexer;->mACTION(Z)V

    .line 127
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lantlr/actions/cpp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 134
    :goto_1
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 136
    iget-object v1, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 137
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->_returnToken:Lantlr/Token;

    return-object v0

    .line 131
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/actions/cpp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 140
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_3

    .line 145
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 148
    :cond_3
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Syntax error in action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0, p1}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lantlr/actions/cpp/ActionLexer;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/cpp/ActionLexer;->getColumn()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public setLineOffset(I)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lantlr/actions/cpp/ActionLexer;->setLine(I)V

    return-void
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lantlr/actions/cpp/ActionLexer;->antlrTool:Lantlr/Tool;

    return-void
.end method
