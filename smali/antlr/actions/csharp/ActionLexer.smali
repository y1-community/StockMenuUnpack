.class public Lantlr/actions/csharp/ActionLexer;
.super Lantlr/CharScanner;
.source "ActionLexer.java"

# interfaces
.implements Lantlr/actions/csharp/ActionLexerTokenTypes;
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

    .line 2432
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 2439
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 2446
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 2451
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 2456
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 2461
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 2466
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 2474
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    .line 2482
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    .line 2487
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_9()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    .line 2492
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_10()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    .line 2497
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_11()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    .line 2502
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_12()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    .line 2507
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_13()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_13:Lantlr/collections/impl/BitSet;

    .line 2512
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_14()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_14:Lantlr/collections/impl/BitSet;

    .line 2517
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_15()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_15:Lantlr/collections/impl/BitSet;

    .line 2522
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_16()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_16:Lantlr/collections/impl/BitSet;

    .line 2527
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_17()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_17:Lantlr/collections/impl/BitSet;

    .line 2532
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_18()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_18:Lantlr/collections/impl/BitSet;

    .line 2537
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_19()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_19:Lantlr/collections/impl/BitSet;

    .line 2542
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_20()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_20:Lantlr/collections/impl/BitSet;

    .line 2547
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_21()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_21:Lantlr/collections/impl/BitSet;

    .line 2552
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_22()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_22:Lantlr/collections/impl/BitSet;

    .line 2557
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_23()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_23:Lantlr/collections/impl/BitSet;

    .line 2562
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_24()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    .line 2567
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_25()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_25:Lantlr/collections/impl/BitSet;

    .line 2572
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/actions/csharp/ActionLexer;->mk_tokenSet_26()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/actions/csharp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 107
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lantlr/actions/csharp/ActionLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lantlr/actions/csharp/ActionLexer;->lineOffset:I

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lantlr/actions/csharp/ActionLexer;->caseSensitiveLiterals:Z

    .line 112
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->setCaseSensitive(Z)V

    .line 113
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 101
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/actions/csharp/ActionLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 104
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/actions/csharp/ActionLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lantlr/actions/csharp/ActionLexer;-><init>(Ljava/io/Reader;)V

    .line 68
    iput-object p2, p0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    .line 69
    iput-object p3, p0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    .line 70
    iput-object p4, p0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

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

    .line 2429
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

    .line 2436
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

    .line 2489
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff010d00002600L
        0x7fffffe8ffffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_11()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2494
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff089400000000L
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_12()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2499
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff1a9500002600L    # 1.99479437137812E-289
        0x7fffffea7fffffeL    # 3.7857645700037357E-270
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_13()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2504
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x7fffffe87fffffeL
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_14()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2509
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2000ff0100002600L    # 1.58453465115535E-154
        0x28000000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_15()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 2514
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff038d00002600L
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

    .line 2519
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

    .line 2524
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

    .line 2529
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

    .line 2534
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x10c00000000L
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

    .line 2443
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

    .line 2539
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

    .line 2544
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ffad8d00002600L
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

    .line 2549
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff7b9500002600L
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

    .line 2554
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff0a9500002600L
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

    .line 2559
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff089500002600L
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

    .line 2564
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3fffe9500002600L
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

    .line 2569
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ffbe9500002600L
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

    .line 2448
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x100002600L    # 2.122000597E-314
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

    .line 2453
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

    .line 2458
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

    .line 2463
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff099500002600L
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

    .line 2471
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

    .line 2479
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

    .line 2484
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3ff000000000000L
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
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 163
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_4

    const/16 v5, 0x24

    if-eq v4, v5, :cond_3

    .line 175
    sget-object v4, Lantlr/actions/csharp/ActionLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mSTUFF(Z)V

    goto :goto_2

    :cond_0
    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 186
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 187
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

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
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 179
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 171
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ITEM(Z)V

    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mAST_ITEM(Z)V

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

    .line 1790
    iget-object v1, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 1795
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    const/16 v5, 0x27

    const/16 v6, 0xff

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 1809
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_19:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_0

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_0

    invoke-virtual {v0, v9}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_0

    invoke-virtual {v0, v9}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_0

    .line 1810
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mTREE_ELEMENT(Z)V

    goto :goto_0

    .line 1812
    :cond_0
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_1

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_1

    invoke-virtual {v0, v9}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_1

    invoke-virtual {v0, v9}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1813
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mSTRING(Z)V

    goto :goto_0

    .line 1816
    :cond_1
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1805
    :pswitch_0
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mINT_OR_FLOAT(Z)V

    goto :goto_0

    .line 1798
    :cond_2
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mCHAR(Z)V

    .line 1823
    :goto_0
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_20:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_21:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v10

    invoke-virtual {v3, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v9}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_c

    invoke-virtual {v0, v9}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_c

    .line 1825
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

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

    .line 1837
    :cond_3
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1828
    :cond_4
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1842
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_9

    if-eq v3, v14, :cond_8

    if-eq v3, v7, :cond_7

    if-ne v3, v6, :cond_6

    .line 1860
    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_2

    .line 1865
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1850
    :cond_7
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_2

    .line 1845
    :cond_8
    invoke-virtual {v0, v14}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_2

    .line 1855
    :cond_9
    invoke-virtual {v0, v15}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1870
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

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

    .line 1898
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1873
    :cond_a
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1902
    :cond_b
    :pswitch_1
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mARG(Z)V

    const/16 v6, 0xff

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_d

    const/16 v2, 0x10

    .line 1911
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 1912
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    .line 1914
    :goto_3
    iput-object v2, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 1048
    iget-object v1, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 1055
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/16 v3, 0x5b

    .line 1056
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1057
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    const/4 v2, 0x1

    .line 1059
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

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

    .line 1089
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1062
    :cond_0
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1063
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1064
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1093
    :cond_1
    :pswitch_0
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1094
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mAST_CTOR_ELEMENT(Z)V

    .line 1095
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1096
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1098
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    const/16 v14, 0x5d

    const/16 v15, 0x2c

    if-eq v13, v11, :cond_3

    if-eq v13, v12, :cond_3

    if-eq v13, v10, :cond_3

    if-eq v13, v9, :cond_3

    if-eq v13, v15, :cond_4

    if-ne v13, v14, :cond_2

    goto :goto_0

    .line 1112
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1101
    :cond_3
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v13

    .line 1102
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1103
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1117
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    if-ne v13, v15, :cond_9

    sget-object v13, Lantlr/actions/csharp/ActionLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v14

    invoke-virtual {v13, v14}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v14

    if-lt v14, v13, :cond_9

    invoke-virtual {v0, v13}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    const/16 v14, 0xff

    if-gt v13, v14, :cond_9

    .line 1118
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v13

    .line 1119
    invoke-virtual {v0, v15}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1120
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1122
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    if-eq v13, v11, :cond_5

    if-eq v13, v12, :cond_5

    if-eq v13, v10, :cond_5

    if-eq v13, v9, :cond_5

    if-eq v13, v7, :cond_6

    if-eq v13, v6, :cond_6

    if-eq v13, v5, :cond_6

    if-eq v13, v4, :cond_6

    packed-switch v13, :pswitch_data_3

    packed-switch v13, :pswitch_data_4

    packed-switch v13, :pswitch_data_5

    .line 1152
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1125
    :cond_5
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v13

    .line 1126
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1127
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1156
    :cond_6
    :pswitch_1
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v13

    .line 1157
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mAST_CTOR_ELEMENT(Z)V

    .line 1158
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v13}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1159
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1161
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v14

    if-eq v14, v11, :cond_8

    if-eq v14, v12, :cond_8

    if-eq v14, v10, :cond_8

    if-eq v14, v9, :cond_8

    if-eq v14, v15, :cond_c

    const/16 v4, 0x5d

    if-ne v14, v4, :cond_7

    goto :goto_2

    .line 1175
    :cond_7
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1164
    :cond_8
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1165
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1166
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_2

    .line 1180
    :cond_9
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    if-eq v4, v15, :cond_b

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v13, 0x5d

    if-ne v4, v13, :cond_a

    goto :goto_1

    .line 1183
    :cond_a
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_b
    :goto_1
    const/4 v13, 0x0

    .line 1188
    :cond_c
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    if-eq v4, v15, :cond_e

    const/16 v14, 0x5d

    if-ne v4, v14, :cond_d

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1260
    :cond_d
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1191
    :cond_e
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1192
    invoke-virtual {v0, v15}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1193
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1195
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    if-eq v4, v11, :cond_f

    if-eq v4, v12, :cond_f

    if-eq v4, v10, :cond_f

    if-eq v4, v9, :cond_f

    if-eq v4, v7, :cond_10

    if-eq v4, v6, :cond_10

    if-eq v4, v5, :cond_10

    const/16 v5, 0x23

    if-eq v4, v5, :cond_10

    packed-switch v4, :pswitch_data_6

    packed-switch v4, :pswitch_data_7

    packed-switch v4, :pswitch_data_8

    .line 1225
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1198
    :cond_f
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1199
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1200
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1229
    :cond_10
    :pswitch_2
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    .line 1230
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mAST_CTOR_ELEMENT(Z)V

    .line 1231
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1232
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1234
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    if-eq v5, v11, :cond_12

    if-eq v5, v12, :cond_12

    if-eq v5, v10, :cond_12

    if-eq v5, v9, :cond_12

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_11

    goto :goto_3

    .line 1248
    :cond_11
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1237
    :cond_12
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1238
    invoke-virtual {v0, v8}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1239
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1264
    :goto_3
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/16 v5, 0x5d

    .line 1265
    invoke-virtual {v0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1266
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1268
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/CodeGenerator;->processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    if-eqz v13, :cond_13

    .line 1273
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    if-eqz v4, :cond_14

    .line 1275
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1277
    :cond_14
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lantlr/CodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 1280
    invoke-virtual {v0, v12}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v14

    .line 1281
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v3

    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v14, v2}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_4

    :cond_15
    move-object v14, v5

    .line 1283
    :goto_4
    iput-object v14, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    :pswitch_data_6
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
    .end packed-switch

    :pswitch_data_7
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

    :pswitch_data_8
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

.method protected final mAST_CTOR_ELEMENT(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1739
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1743
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x22

    if-ne v2, v7, :cond_0

    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v4, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v4, :cond_0

    .line 1744
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->mSTRING(Z)V

    goto :goto_0

    .line 1746
    :cond_0
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_19:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v2, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_1

    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v4, :cond_1

    .line 1747
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->mTREE_ELEMENT(Z)V

    goto :goto_0

    .line 1749
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_3

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x39

    if-gt v2, v4, :cond_3

    .line 1750
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->mINT(Z)V

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0xb

    .line 1757
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1758
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1760
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1753
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_0

    .line 265
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 266
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 267
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 268
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mTREE(Z)V

    .line 269
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_2

    .line 271
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-ne v2, v4, :cond_7

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v2, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 273
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 274
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 276
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 301
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 279
    :cond_1
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 305
    :cond_2
    :pswitch_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mID(Z)V

    .line 306
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 308
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    .line 309
    iget-object v4, p0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    invoke-virtual {v4, v2, v7}, Lantlr/CodeGenerator;->mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 312
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 314
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "define"

    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "undef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "if"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "elif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "else"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "endif"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "line"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "warning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "region"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "endregion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    :cond_4
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 335
    :cond_5
    :goto_0
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 336
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 343
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-ne v1, v5, :cond_c

    .line 344
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->mVAR_ASSIGN(Z)V

    goto/16 :goto_2

    .line 351
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_8

    .line 352
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 353
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 354
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 355
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mAST_CONSTRUCTOR(Z)V

    .line 356
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    goto :goto_2

    .line 358
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_e

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_e

    const-string v2, "##"

    .line 359
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    if-eqz v3, :cond_9

    .line 363
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v3}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_AST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    if-eqz v3, :cond_a

    .line 367
    iput-object v2, v3, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v3, "\"##\" not valid in this context"

    .line 372
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->reportWarning(Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 377
    :cond_a
    :goto_1
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 378
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 385
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-ne v1, v5, :cond_c

    .line 386
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->mVAR_ASSIGN(Z)V

    :cond_c
    :goto_2
    if-eqz p1, :cond_d

    const/4 p1, 0x6

    .line 398
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 399
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 401
    :goto_3
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 394
    :cond_e
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 698
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x27

    .line 702
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    const/4 v2, 0x1

    .line 704
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 705
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->mESC(Z)V

    goto :goto_0

    .line 707
    :cond_0
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 708
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->matchNot(C)V

    .line 715
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    if-eqz p1, :cond_1

    const/16 p1, 0x16

    .line 717
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 718
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 720
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 711
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 647
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 651
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 652
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->mSL_COMMENT(Z)V

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2a

    if-ne v2, v4, :cond_2

    .line 655
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->mML_COMMENT(Z)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x13

    .line 662
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 663
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 665
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 658
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 2413
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 2417
    invoke-virtual {p0, v1, v2}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    .line 2419
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2420
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2422
    :goto_0
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 2305
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 2309
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    const/4 v2, 0x1

    .line 2311
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_d

    const/16 v4, 0x27

    if-eq v3, v4, :cond_c

    if-eq v3, v1, :cond_b

    const/16 v1, 0x62

    if-eq v3, v1, :cond_a

    const/16 v1, 0x66

    if-eq v3, v1, :cond_9

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_8

    const/16 v1, 0x72

    if-eq v3, v1, :cond_7

    const/16 v1, 0x74

    if-eq v3, v1, :cond_6

    const/4 v1, 0x0

    const/16 v4, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_0

    .line 2401
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v3, 0x34

    const/16 v9, 0x37

    .line 2384
    invoke-virtual {p0, v3, v9}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    .line 2387
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_0

    .line 2388
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 2390
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_1

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_1

    goto/16 :goto_0

    .line 2393
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v3, 0x33

    .line 2355
    invoke-virtual {p0, v5, v3}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    .line 2358
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_4

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_4

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_4

    .line 2359
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mDIGIT(Z)V

    .line 2361
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_2

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_2

    .line 2362
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mDIGIT(Z)V

    goto :goto_0

    .line 2364
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_3

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_3

    goto :goto_0

    .line 2367
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2372
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    goto :goto_0

    .line 2375
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2324
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2319
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2314
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2334
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2329
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2349
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2344
    :cond_c
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 2339
    :cond_d
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_e

    const/16 p1, 0x18

    .line 2406
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2407
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const/4 p1, 0x0

    .line 2409
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 933
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    const/16 v7, 0x5f

    packed-switch v2, :pswitch_data_0

    .line 963
    :pswitch_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 942
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 958
    :pswitch_2
    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 953
    :pswitch_3
    invoke-virtual {p0, v6, v5}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    .line 970
    :goto_0
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 972
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-eq v2, v7, :cond_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 1009
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 981
    :pswitch_4
    invoke-virtual {p0, v4, v3}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 992
    :pswitch_5
    invoke-virtual {p0, v6, v5}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x30

    const/16 v8, 0x39

    .line 999
    invoke-virtual {p0, v2, v8}, Lantlr/actions/csharp/ActionLexer;->matchRange(CC)V

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x11

    .line 1021
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1022
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1024
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_data_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
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
    .packed-switch 0x30
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
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

    .line 1457
    iget-object v1, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 1462
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mID(Z)V

    .line 1463
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1465
    sget-object v4, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    sget-object v5, Lantlr/actions/csharp/ActionLexer;->_tokenSet_14:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v5, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1466
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    .line 1467
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1468
    iget-object v8, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v5}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_0

    .line 1470
    :cond_0
    sget-object v5, Lantlr/actions/csharp/ActionLexer;->_tokenSet_14:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v5, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1478
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    const/16 v10, 0x22

    const/16 v11, 0x5f

    const/16 v12, 0x28

    const/4 v13, 0x3

    const/16 v14, 0x20

    const/16 v15, 0xd

    const/16 v8, 0xa

    const/16 v9, 0x9

    if-eq v5, v12, :cond_10

    const/16 v4, 0x2e

    if-eq v5, v4, :cond_f

    const/16 v4, 0x5b

    if-eq v5, v4, :cond_8

    .line 1680
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    sget-object v4, Lantlr/actions/csharp/ActionLexer;->_tokenSet_13:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v13}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "->"

    .line 1681
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mID_ELEMENT(Z)Z

    goto/16 :goto_8

    .line 1684
    :cond_1
    sget-object v4, Lantlr/actions/csharp/ActionLexer;->_tokenSet_16:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1687
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v10, v0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    invoke-virtual {v5, v3, v10}, Lantlr/CodeGenerator;->mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1690
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v3}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 1694
    :cond_2
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_17:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1696
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_4

    if-eq v3, v15, :cond_4

    if-eq v3, v14, :cond_4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 1708
    :cond_3
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1699
    :cond_4
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1712
    :goto_1
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mVAR_ASSIGN(Z)V

    goto/16 :goto_9

    .line 1714
    :cond_5
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_18:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_9

    .line 1717
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1723
    :cond_7
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_8
    const/4 v3, 0x0

    .line 1605
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    if-ne v5, v4, :cond_d

    .line 1606
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1608
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    if-eq v5, v9, :cond_9

    if-eq v5, v8, :cond_9

    if-eq v5, v15, :cond_9

    if-eq v5, v14, :cond_9

    if-eq v5, v11, :cond_a

    if-eq v5, v10, :cond_a

    const/16 v6, 0x23

    if-eq v5, v6, :cond_a

    const/16 v6, 0x27

    if-eq v5, v6, :cond_a

    if-eq v5, v12, :cond_a

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    .line 1638
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1611
    :cond_9
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    .line 1612
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1613
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v5}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1642
    :cond_a
    :pswitch_0
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mARG(Z)V

    .line 1644
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    const/16 v6, 0x5d

    if-eq v5, v9, :cond_c

    if-eq v5, v8, :cond_c

    if-eq v5, v15, :cond_c

    if-eq v5, v14, :cond_c

    if-ne v5, v6, :cond_b

    goto :goto_3

    .line 1658
    :cond_b
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1647
    :cond_c
    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    .line 1648
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1649
    iget-object v13, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v5}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1662
    :goto_3
    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_d
    if-lt v3, v2, :cond_e

    goto/16 :goto_8

    .line 1665
    :cond_e
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1675
    :cond_f
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1676
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mID_ELEMENT(Z)Z

    goto/16 :goto_8

    .line 1481
    :cond_10
    invoke-virtual {v0, v12}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1483
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_11

    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_15:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v13}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_11

    invoke-virtual {v0, v13}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_11

    .line 1484
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1485
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1486
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_4

    .line 1488
    :cond_11
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_15:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v13, :cond_1a

    invoke-virtual {v0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_1a

    .line 1496
    :goto_4
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v9, :cond_16

    if-eq v3, v8, :cond_16

    if-eq v3, v15, :cond_16

    if-eq v3, v14, :cond_16

    if-eq v3, v11, :cond_12

    if-eq v3, v10, :cond_12

    const/16 v4, 0x23

    if-eq v3, v4, :cond_12

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    .line 1573
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1515
    :cond_12
    :pswitch_1
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mARG(Z)V

    .line 1519
    :goto_5
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_16

    .line 1520
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1522
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v9, :cond_14

    if-eq v3, v8, :cond_14

    if-eq v3, v15, :cond_14

    if-eq v3, v14, :cond_14

    if-eq v3, v11, :cond_13

    if-eq v3, v10, :cond_13

    const/16 v4, 0x23

    const/16 v5, 0x27

    if-eq v3, v4, :cond_15

    if-eq v3, v5, :cond_15

    if-eq v3, v12, :cond_15

    packed-switch v3, :pswitch_data_7

    packed-switch v3, :pswitch_data_8

    packed-switch v3, :pswitch_data_9

    .line 1552
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_13
    const/16 v4, 0x23

    const/16 v5, 0x27

    goto :goto_6

    :cond_14
    const/16 v4, 0x23

    const/16 v5, 0x27

    .line 1525
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1526
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1527
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1556
    :cond_15
    :goto_6
    :pswitch_2
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mARG(Z)V

    goto :goto_5

    .line 1578
    :cond_16
    :pswitch_3
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v9, :cond_18

    if-eq v3, v8, :cond_18

    if-eq v3, v15, :cond_18

    if-eq v3, v14, :cond_18

    if-ne v3, v4, :cond_17

    goto :goto_7

    .line 1592
    :cond_17
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1581
    :cond_18
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1582
    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1583
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1596
    :goto_7
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-eqz p1, :cond_19

    const/16 v3, 0xc

    .line 1728
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v3

    .line 1729
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v5

    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    .line 1731
    :goto_a
    iput-object v3, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return v2

    .line 1491
    :cond_1a
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1473
    :cond_1b
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b

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

    .line 1764
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 1772
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    .line 1773
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x1a

    .line 1783
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1784
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1786
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1776
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 2166
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 2174
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x39

    const/16 v6, 0x30

    const/4 v7, 0x2

    if-lt v4, v6, :cond_0

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    if-gt v4, v5, :cond_0

    sget-object v4, Lantlr/actions/csharp/ActionLexer;->_tokenSet_25:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v4, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2175
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_7

    .line 2185
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_1

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2186
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_2

    .line 2188
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_2

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v8

    invoke-virtual {v2, v8}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2189
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_2

    .line 2191
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_3

    .line 2192
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2196
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_4

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_4

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2197
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mDIGIT(Z)V

    goto :goto_1

    .line 2206
    :cond_3
    sget-object v1, Lantlr/actions/csharp/ActionLexer;->_tokenSet_26:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    const/16 p1, 0x1b

    .line 2214
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2215
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 2217
    :goto_3
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 2209
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2178
    :cond_7
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 2264
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "/*"

    .line 2268
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 2273
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 2274
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v5, 0xd

    const/16 v6, 0xff

    const/4 v7, 0x3

    if-ne v2, v5, :cond_1

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_1

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_1

    .line 2275
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2276
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2277
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto :goto_0

    .line 2279
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    .line 2280
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2281
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto :goto_0

    .line 2283
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_3

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_3

    .line 2284
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2285
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto/16 :goto_0

    .line 2287
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_4

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_4

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_4

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_4

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_4

    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_4

    const v1, 0xffff

    .line 2288
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->matchNot(C)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v1, "*/"

    .line 2296
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/16 p1, 0x15

    .line 2298
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2299
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 2301
    :goto_2
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 2221
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "//"

    .line 2225
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 2230
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 2231
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v6, 0x3

    if-lt v2, v6, :cond_1

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0xff

    if-gt v2, v7, :cond_1

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_1

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_1

    const v1, 0xffff

    .line 2232
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->matchNot(C)V

    goto :goto_0

    .line 2241
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v1, "\r\n"

    .line 2242
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    goto :goto_2

    .line 2244
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    .line 2245
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_2

    .line 2247
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    .line 2248
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2255
    :goto_2
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    if-eqz p1, :cond_4

    const/16 p1, 0x14

    .line 2257
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2258
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 2260
    :goto_3
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 2251
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 669
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 673
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 677
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 678
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->mESC(Z)V

    goto :goto_0

    .line 680
    :cond_0
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->matchNot(C)V

    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    if-eqz p1, :cond_2

    const/16 p1, 0x17

    .line 691
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 692
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 694
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v2, v4, :cond_8

    const/16 v4, 0x27

    if-eq v2, v4, :cond_7

    .line 218
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2f

    const/4 v6, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 219
    :cond_0
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mCOMMENT(Z)V

    goto/16 :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v1, "\r\n"

    .line 222
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto/16 :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_3

    .line 226
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 227
    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 228
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 233
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v5, :cond_5

    .line 237
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 238
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto :goto_0

    .line 240
    :cond_5
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 246
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 208
    :cond_7
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mCHAR(Z)V

    goto :goto_0

    .line 203
    :cond_8
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mSTRING(Z)V

    goto :goto_0

    .line 213
    :cond_9
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 214
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    :goto_0
    if-eqz p1, :cond_a

    const/4 p1, 0x5

    .line 250
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 251
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

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
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 1287
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1292
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

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

    .line 1320
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1295
    :cond_0
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    :cond_1
    :pswitch_0
    const/4 v2, 0x0

    .line 1328
    :goto_0
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_11:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_4

    .line 1329
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG_ELEMENT(Z)V

    .line 1331
    sget-object v6, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lantlr/actions/csharp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v6, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1332
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    goto :goto_1

    .line 1334
    :cond_2
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_12:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1337
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_4
    if-lt v2, v1, :cond_6

    if-eqz p1, :cond_5

    .line 1350
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1351
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 1353
    :goto_2
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1343
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 1918
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1922
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

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

    .line 1970
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1955
    :pswitch_0
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->mINT_OR_FLOAT(Z)V

    goto :goto_0

    .line 1938
    :cond_0
    :pswitch_1
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto :goto_0

    .line 1965
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_0

    .line 1948
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->mCHAR(Z)V

    goto :goto_0

    .line 1960
    :cond_3
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ITEM(Z)V

    goto :goto_0

    .line 1943
    :cond_4
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->mSTRING(Z)V

    :goto_0
    if-eqz p1, :cond_5

    const/16 p1, 0xe

    .line 1974
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1975
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 1977
    :goto_1
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1981
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1986
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mID(Z)V

    .line 1987
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 1989
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_22:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1990
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1991
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 1992
    iget-object v6, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_0

    .line 1994
    :cond_0
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_22:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2002
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_d

    const/16 v7, 0xa

    if-eq v3, v7, :cond_d

    const/16 v8, 0xd

    if-eq v3, v8, :cond_d

    const/16 v9, 0x20

    if-eq v3, v9, :cond_d

    const/16 v10, 0x22

    if-eq v3, v10, :cond_d

    const/16 v10, 0x24

    if-eq v3, v10, :cond_d

    const/16 v10, 0x5d

    if-eq v3, v10, :cond_d

    const/16 v11, 0x5f

    if-eq v3, v11, :cond_d

    const/16 v11, 0xff

    const/4 v12, 0x3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    .line 2154
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/4 v2, 0x0

    .line 2072
    :goto_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v13, 0x5b

    if-ne v3, v13, :cond_5

    .line 2073
    invoke-virtual {p0, v13}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2075
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    invoke-virtual {v3, v13}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    invoke-virtual {v3, v13}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v12, :cond_1

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v11, :cond_1

    .line 2076
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 2077
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 2078
    iget-object v13, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_2

    .line 2080
    :cond_1
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v13

    invoke-virtual {v3, v13}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v12, :cond_4

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v11, :cond_4

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v12, :cond_4

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v11, :cond_4

    .line 2087
    :goto_2
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 2089
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    if-ne v3, v10, :cond_2

    goto :goto_3

    .line 2103
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2092
    :cond_3
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 2093
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 2094
    iget-object v13, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v13, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 2107
    :goto_3
    invoke-virtual {p0, v10}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 2083
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_5
    if-lt v2, v1, :cond_6

    goto/16 :goto_7

    .line 2110
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v1, 0x2e

    .line 2120
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2121
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto/16 :goto_7

    :pswitch_2
    const-string v1, "->"

    .line 2126
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG_ID_ELEMENT(Z)V

    goto/16 :goto_7

    :pswitch_3
    const/16 v3, 0x28

    .line 2005
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2007
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_23:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v12, :cond_7

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v11, :cond_7

    .line 2008
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 2009
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 2010
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_4

    .line 2012
    :cond_7
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_23:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v12, :cond_c

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v11, :cond_c

    .line 2022
    :cond_8
    :goto_4
    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_24:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v12, :cond_9

    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v11, :cond_9

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-lt v2, v12, :cond_9

    invoke-virtual {p0, v12}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-gt v2, v11, :cond_9

    .line 2023
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 2027
    :goto_5
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_8

    .line 2028
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 2029
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    goto :goto_5

    .line 2045
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v6, :cond_b

    if-eq v2, v7, :cond_b

    if-eq v2, v8, :cond_b

    if-eq v2, v9, :cond_b

    if-ne v2, v3, :cond_a

    goto :goto_6

    .line 2059
    :cond_a
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 2048
    :cond_b
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 2049
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 2050
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 2063
    :goto_6
    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_7

    .line 2015
    :cond_c
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :cond_d
    :goto_7
    :pswitch_4
    if-eqz p1, :cond_e

    const/16 p1, 0xf

    .line 2159
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 2160
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    const/4 p1, 0x0

    .line 2162
    :goto_8
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1997
    :cond_f
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
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

    .line 405
    iget-object v1, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 415
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xff

    const-string v5, ": unknown rule or bad lookahead computation"

    const/16 v6, 0x46

    const-string v8, ")"

    const/16 v9, 0x24

    const/16 v12, 0x20

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x28

    if-ne v3, v9, :cond_5

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x4f

    if-ne v3, v6, :cond_5

    const-string v3, "$FOLLOW"

    .line 416
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 418
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_2

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_2

    .line 420
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_1

    if-eq v3, v14, :cond_1

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_1

    if-ne v3, v11, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    .line 423
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 436
    :goto_0
    invoke-virtual {v0, v11}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 437
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 438
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v4, 0x29

    .line 439
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 446
    :goto_1
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 448
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    .line 450
    :cond_3
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3, v4, v2}, Lantlr/CodeGenerator;->getFOLLOWBitSet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 453
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FOLLOW("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->reportError(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 457
    :cond_4
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 461
    :cond_5
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_b

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x46

    if-ne v3, v6, :cond_b

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x49

    if-ne v3, v6, :cond_b

    const-string v3, "$FIRST"

    .line 462
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 464
    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lantlr/actions/csharp/ActionLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_8

    invoke-virtual {v0, v7}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_8

    .line 466
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_7

    if-eq v3, v13, :cond_7

    if-eq v3, v12, :cond_7

    if-ne v3, v11, :cond_6

    goto :goto_2

    .line 478
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_7
    const/4 v3, 0x0

    .line 469
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 482
    :goto_2
    invoke-virtual {v0, v11}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 483
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 484
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v4, 0x29

    .line 485
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 492
    :goto_3
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_9

    .line 494
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    .line 496
    :cond_9
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v3, v4, v2}, Lantlr/CodeGenerator;->getFIRSTBitSet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 499
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "$FIRST("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->reportError(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 503
    :cond_a
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 507
    :cond_b
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_e

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_e

    const-string v3, "$append"

    .line 508
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_d

    if-eq v3, v14, :cond_d

    if-eq v3, v13, :cond_d

    if-eq v3, v12, :cond_d

    if-ne v3, v11, :cond_c

    goto :goto_4

    .line 522
    :cond_c
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_d
    const/4 v3, 0x0

    .line 513
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 526
    :goto_4
    invoke-virtual {v0, v11}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 527
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 528
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 529
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 531
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "text.Append("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 535
    :cond_e
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_18

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_18

    const-string v3, "$set"

    .line 536
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_11

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_11

    const-string v3, "Text"

    .line 539
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_10

    if-eq v3, v14, :cond_10

    if-eq v3, v13, :cond_10

    if-eq v3, v12, :cond_10

    if-ne v3, v11, :cond_f

    goto :goto_5

    .line 553
    :cond_f
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_10
    const/4 v3, 0x0

    .line 544
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 557
    :goto_5
    invoke-virtual {v0, v11}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 558
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 559
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 560
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 563
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "text.Length = _begin; text.Append("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 567
    :cond_11
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_14

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x6f

    if-ne v3, v5, :cond_14

    const-string v3, "Token"

    .line 568
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_13

    if-eq v3, v14, :cond_13

    if-eq v3, v13, :cond_13

    if-eq v3, v12, :cond_13

    if-ne v3, v11, :cond_12

    goto :goto_6

    .line 582
    :cond_12
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_13
    const/4 v3, 0x0

    .line 573
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 586
    :goto_6
    invoke-virtual {v0, v11}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 587
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 588
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 589
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 591
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 595
    :cond_14
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_17

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x79

    if-ne v3, v4, :cond_17

    const-string v3, "Type"

    .line 596
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v15, :cond_16

    if-eq v3, v14, :cond_16

    if-eq v3, v13, :cond_16

    if-eq v3, v12, :cond_16

    if-ne v3, v11, :cond_15

    goto :goto_7

    .line 610
    :cond_15
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    :cond_16
    const/4 v3, 0x0

    .line 601
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 614
    :goto_7
    invoke-virtual {v0, v11}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 615
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->mTEXT_ARG(Z)V

    .line 616
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    const/16 v3, 0x29

    .line 617
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 619
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_ttype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_8

    .line 624
    :cond_17
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 629
    :cond_18
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v9, :cond_1a

    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1a

    const-string v2, "$getText"

    .line 630
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 632
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    const-string v3, "text.ToString(_begin, text.Length-_begin)"

    invoke-virtual {v2, v3}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    :goto_8
    if-eqz p1, :cond_19

    const/4 v2, 0x7

    .line 640
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v7

    .line 641
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v3

    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v2}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    const/4 v7, 0x0

    .line 643
    :goto_9
    iput-object v7, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 636
    :cond_1a
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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

    .line 724
    iget-object v1, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 732
    new-instance v2, Lantlr/collections/impl/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lantlr/collections/impl/Vector;-><init>(I)V

    .line 735
    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    const/16 v5, 0x28

    .line 736
    invoke-virtual {v0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 737
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6, v4}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    const/4 v4, 0x1

    .line 739
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    const/16 v7, 0x23

    const/16 v8, 0x22

    const/16 v9, 0x5f

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/16 v12, 0xd

    const/16 v13, 0x9

    if-eq v6, v13, :cond_0

    if-eq v6, v3, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v11, :cond_0

    if-eq v6, v5, :cond_1

    if-eq v6, v9, :cond_1

    if-eq v6, v8, :cond_1

    if-eq v6, v7, :cond_1

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    .line 767
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 742
    :cond_0
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 743
    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 744
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 771
    :cond_1
    :pswitch_0
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 772
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->mTREE_ELEMENT(Z)V

    .line 773
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 774
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 776
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v6}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lantlr/CodeGenerator;->processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 781
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    const/16 v14, 0x29

    const/16 v15, 0x2c

    if-eq v6, v13, :cond_3

    if-eq v6, v3, :cond_3

    if-eq v6, v12, :cond_3

    if-eq v6, v11, :cond_3

    if-eq v6, v14, :cond_4

    if-ne v6, v15, :cond_2

    goto :goto_0

    .line 795
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 784
    :cond_3
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 785
    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 786
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 802
    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    if-ne v6, v15, :cond_9

    .line 803
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 804
    invoke-virtual {v0, v15}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 805
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 807
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    if-eq v6, v13, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, v12, :cond_5

    if-eq v6, v11, :cond_5

    if-eq v6, v5, :cond_6

    if-eq v6, v9, :cond_6

    if-eq v6, v8, :cond_6

    if-eq v6, v7, :cond_6

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    .line 835
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 810
    :cond_5
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 811
    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 812
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 839
    :cond_6
    :pswitch_1
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 840
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->mTREE_ELEMENT(Z)V

    .line 841
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 842
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 844
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v6}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lantlr/CodeGenerator;->processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 849
    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v6

    if-eq v6, v13, :cond_8

    if-eq v6, v3, :cond_8

    if-eq v6, v12, :cond_8

    if-eq v6, v11, :cond_8

    const/16 v14, 0x29

    if-eq v6, v14, :cond_4

    if-ne v6, v15, :cond_7

    goto/16 :goto_0

    .line 863
    :cond_7
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v4}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 852
    :cond_8
    iget-object v6, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v6

    .line 853
    invoke-virtual {v0, v10}, Lantlr/actions/csharp/ActionLexer;->mWS(Z)V

    .line 854
    iget-object v14, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v14, v6}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 874
    :cond_9
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v4, v2}, Lantlr/CodeGenerator;->getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    .line 875
    iget-object v2, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/16 v3, 0x29

    .line 876
    invoke-virtual {v0, v3}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 877
    iget-object v3, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    if-eqz p1, :cond_a

    const/16 v2, 0x8

    .line 879
    invoke-virtual {v0, v2}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 880
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    .line 882
    :goto_1
    iput-object v2, v0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 1357
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1363
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_7

    const/16 v3, 0x28

    if-eq v2, v3, :cond_6

    const/16 v6, 0x5f

    if-eq v2, v6, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 1398
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/4 v6, 0x2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_0

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1399
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 1400
    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1401
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1402
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTREE(Z)V

    goto/16 :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_1

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 1405
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 1406
    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1407
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1408
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mAST_CONSTRUCTOR(Z)V

    goto/16 :goto_0

    .line 1410
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_2

    sget-object v2, Lantlr/actions/csharp/ActionLexer;->_tokenSet_13:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1411
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1412
    invoke-virtual {p0, v7}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 1413
    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1414
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->mID_ELEMENT(Z)Z

    move-result v1

    .line 1415
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    if-nez v1, :cond_8

    .line 1419
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lantlr/CodeGenerator;->mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1421
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 1426
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    const-string v1, "##"

    .line 1427
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(Ljava/lang/String;)V

    .line 1429
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    if-eqz v2, :cond_3

    .line 1431
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_AST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1432
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "\"##\" not valid in this context"

    .line 1436
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->reportError(Ljava/lang/String;)V

    .line 1437
    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v0}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 1442
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1371
    :pswitch_0
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mAST_CONSTRUCTOR(Z)V

    goto :goto_0

    .line 1389
    :cond_5
    :pswitch_1
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mID_ELEMENT(Z)Z

    goto :goto_0

    .line 1366
    :cond_6
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mTREE(Z)V

    goto :goto_0

    .line 1394
    :cond_7
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->mSTRING(Z)V

    :cond_8
    :goto_0
    if-eqz p1, :cond_9

    const/16 p1, 0x9

    .line 1446
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v4

    .line 1447
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v1

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, p1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    .line 1449
    :cond_9
    iput-object v4, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 1028
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3d

    .line 1032
    invoke-virtual {p0, v1}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    const/4 v2, 0x1

    .line 1036
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->transInfo:Lantlr/ActionTransInfo;

    iput-boolean v2, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x12

    .line 1041
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1042
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1044
    :goto_0
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

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

    .line 886
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 894
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 895
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 896
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 897
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto :goto_1

    .line 899
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x20

    if-ne v3, v6, :cond_1

    .line 900
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_1

    .line 902
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    .line 903
    invoke-virtual {p0, v6}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    goto :goto_1

    .line 905
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 906
    invoke-virtual {p0, v5}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 907
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    goto :goto_1

    .line 909
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 910
    invoke-virtual {p0, v4}, Lantlr/actions/csharp/ActionLexer;->match(C)V

    .line 911
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->newline()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-lt v1, v2, :cond_6

    if-eqz p1, :cond_5

    const/16 p1, 0x1c

    .line 921
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 922
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/actions/csharp/ActionLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 924
    :goto_2
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 914
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->resetText()V

    const/4 v0, 0x1

    .line 125
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lantlr/actions/csharp/ActionLexer;->mACTION(Z)V

    .line 127
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lantlr/actions/csharp/ActionLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    .line 134
    :goto_1
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 136
    iget-object v1, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 137
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->_returnToken:Lantlr/Token;

    return-object v0

    .line 131
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/actions/csharp/ActionLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

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
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Syntax error in action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0, p1}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lantlr/actions/csharp/ActionLexer;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/actions/csharp/ActionLexer;->getColumn()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public setLineOffset(I)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lantlr/actions/csharp/ActionLexer;->setLine(I)V

    return-void
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lantlr/actions/csharp/ActionLexer;->antlrTool:Lantlr/Tool;

    return-void
.end method
