.class public Lantlr/preprocessor/PreprocessorLexer;
.super Lantlr/CharScanner;
.source "PreprocessorLexer.java"

# interfaces
.implements Lantlr/preprocessor/PreprocessorTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_10:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_6:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_7:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_8:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_9:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1321
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 1326
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 1333
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 1340
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 1345
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 1353
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 1360
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 1368
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    .line 1376
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    .line 1381
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_9()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    .line 1386
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/PreprocessorLexer;->mk_tokenSet_10()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 38
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 3

    .line 41
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lantlr/preprocessor/PreprocessorLexer;->caseSensitiveLiterals:Z

    .line 43
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->setCaseSensitive(Z)V

    .line 44
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    .line 45
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "public"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "class"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "throws"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "catch"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "private"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "extends"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "protected"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "returns"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "tokens"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "exception"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 32
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 35
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800000000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1318
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_1()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 1323
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

.method private static final mk_tokenSet_10()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 1383
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x800100002600L
        0x800000000000000L
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

    const-wide v2, -0x20000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1330
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_3()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800020000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1337
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_4()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 1342
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x100002600L    # 2.122000597E-314
        0x1000000000000000L
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_5()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x800838400002408L

    aput-wide v2, v0, v1

    const-wide v1, -0x800000000000001L

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1350
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_6()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, -0x8000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1357
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
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

    .line 1365
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

    .line 1373
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

    .line 1378
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x800500002600L
        0x800000000000000L
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final mACTION(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7b

    .line 532
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 537
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 538
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_2

    :cond_1
    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_2

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_2

    .line 539
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_3

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_3

    .line 542
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    goto :goto_0

    .line 544
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_4

    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 547
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_6

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v10, 0x2a

    if-eq v3, v10, :cond_5

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    .line 548
    :cond_5
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 550
    :cond_6
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_7

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_7

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_7

    .line 551
    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto/16 :goto_0

    .line 553
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_8

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_8

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v8, :cond_8

    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_8

    const v2, 0xffff

    .line 554
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto/16 :goto_0

    .line 562
    :cond_8
    :goto_1
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_9

    const/4 p1, 0x7

    .line 564
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 565
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    .line 567
    :goto_2
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mALT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 332
    :goto_0
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mELEMENT(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x1b

    .line 342
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 343
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 345
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mARG_ACTION(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5b

    .line 1279
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 1284
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 1285
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_1

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1286
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mARG_ACTION(Z)V

    goto :goto_0

    .line 1288
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v9, 0xa

    if-eq v3, v9, :cond_2

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v9, 0xd

    if-ne v3, v9, :cond_3

    :cond_2
    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_3

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_3

    .line 1289
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 1291
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v9, 0x27

    if-ne v3, v9, :cond_4

    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v9

    invoke-virtual {v3, v9}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1292
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 1294
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v9, 0x22

    if-ne v3, v9, :cond_5

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_5

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_5

    .line 1295
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 1297
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_6

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_6

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_6

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_6

    const v2, 0xffff

    .line 1298
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto/16 :goto_0

    .line 1306
    :cond_6
    :goto_1
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_7

    const/16 p1, 0x14

    .line 1308
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1309
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 1311
    :goto_2
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mASSIGN_RHS(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 1004
    iget-object v1, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/16 v2, 0x3d

    .line 1005
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 1006
    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    :goto_0
    const/4 v1, 0x1

    .line 1011
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 1012
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_1

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_1

    .line 1013
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_2

    sget-object v2, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1016
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 1018
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    :cond_3
    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_4

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_4

    .line 1019
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 1021
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_5

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_5

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_5

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_5

    const v1, 0xffff

    .line 1022
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto :goto_0

    .line 1030
    :cond_5
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_6

    const/16 p1, 0xe

    .line 1032
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1033
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 1035
    :goto_2
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mBANG(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x21

    .line 661
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    .line 663
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 664
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 666
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCHAR_LITERAL(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x27

    .line 604
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    const/4 v2, 0x1

    .line 606
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 607
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mESC(Z)V

    goto :goto_0

    .line 609
    :cond_0
    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 610
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    .line 617
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_1

    const/16 p1, 0x26

    .line 619
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 620
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 622
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 613
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mCOMMA(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2c

    .line 687
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    .line 689
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 690
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 692
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCOMMENT(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 v0, 0x1

    .line 508
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    .line 509
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mSL_COMMENT(Z)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_1

    .line 512
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mML_COMMENT(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 524
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 515
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method protected final mCURLY_BLOCK_SCARF(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7b

    .line 964
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    :goto_0
    const/4 v1, 0x1

    .line 969
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 970
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_2

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_2

    .line 971
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 973
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x22

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v6, :cond_3

    .line 974
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 976
    :cond_3
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_4

    sget-object v2, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 977
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 979
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_6

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v9, 0x2a

    if-eq v2, v9, :cond_5

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_6

    .line 980
    :cond_5
    invoke-virtual {p0, v5}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 982
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v7, :cond_7

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_7

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v7, :cond_7

    invoke-virtual {p0, v8}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v6, :cond_7

    const v1, 0xffff

    .line 983
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto/16 :goto_0

    .line 991
    :cond_7
    :goto_1
    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_8

    const/16 p1, 0x20

    .line 993
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 994
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 996
    :goto_2
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
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

    .line 1225
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 1229
    invoke-virtual {p0, v1, v2}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0x29

    .line 1231
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1232
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1234
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mELEMENT(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 454
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    const/16 v3, 0x22

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    .line 486
    sget-object v2, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 492
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 477
    :cond_1
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mSUBRULE_BLOCK(Z)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    goto :goto_0

    .line 457
    :cond_4
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 467
    :cond_5
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    goto :goto_0

    .line 482
    :cond_6
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    :goto_0
    if-eqz p1, :cond_7

    const/16 p1, 0x1c

    .line 496
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 497
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 499
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

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

    .line 1098
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 1102
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    const/4 v2, 0x1

    .line 1104
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_10

    const/16 v4, 0x27

    if-eq v3, v4, :cond_f

    if-eq v3, v1, :cond_e

    const/16 v1, 0x66

    if-eq v3, v1, :cond_d

    const/16 v1, 0x6e

    if-eq v3, v1, :cond_c

    const/16 v1, 0x72

    if-eq v3, v1, :cond_b

    const/16 v1, 0x77

    if-eq v3, v1, :cond_a

    const/16 v1, 0x61

    if-eq v3, v1, :cond_9

    const/16 v1, 0x62

    if-eq v3, v1, :cond_8

    const/16 v1, 0x74

    if-eq v3, v1, :cond_7

    const/16 v1, 0x75

    const/4 v4, 0x0

    if-eq v3, v1, :cond_6

    const/16 v1, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_0

    .line 1213
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v3, 0x34

    const/16 v9, 0x37

    .line 1187
    invoke-virtual {p0, v3, v9}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    .line 1190
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_0

    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_0

    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_0

    .line 1191
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 1193
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_1

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_1

    goto/16 :goto_0

    .line 1196
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v3, 0x33

    .line 1158
    invoke-virtual {p0, v5, v3}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    .line 1161
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_4

    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_4

    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_4

    .line 1162
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mDIGIT(Z)V

    .line 1164
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_2

    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_2

    invoke-virtual {p0, v6}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_2

    .line 1165
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 1167
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_3

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_3

    goto/16 :goto_0

    .line 1170
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1175
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    goto :goto_0

    .line 1178
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1204
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 1205
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    .line 1206
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    .line 1207
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    .line 1208
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mXDIGIT(Z)V

    goto :goto_0

    .line 1117
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1122
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1137
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1132
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1112
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1107
    :cond_c
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1127
    :cond_d
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1152
    :cond_e
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1147
    :cond_f
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 1142
    :cond_10
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_11

    const/16 p1, 0x28

    .line 1218
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1219
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    const/4 p1, 0x0

    .line 1221
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

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

    .line 867
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 872
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    const/16 v7, 0x5f

    packed-switch v2, :pswitch_data_0

    .line 902
    :pswitch_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 881
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    goto :goto_0

    .line 897
    :pswitch_2
    invoke-virtual {p0, v7}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    .line 892
    :pswitch_3
    invoke-virtual {p0, v6, v5}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    .line 909
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-eq v2, v7, :cond_1

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 951
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lantlr/preprocessor/PreprocessorLexer;->testLiteralsTable(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq v1, p1, :cond_0

    .line 953
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 954
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 956
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 918
    :pswitch_4
    invoke-virtual {p0, v4, v3}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    goto :goto_0

    .line 929
    :pswitch_5
    invoke-virtual {p0, v6, v5}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x30

    const/16 v8, 0x39

    .line 941
    invoke-virtual {p0, v2, v8}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {p0, v7}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_0

    nop

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

.method public final mID_OR_KEYWORD(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 742
    iget-object v1, v0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 747
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mID(Z)V

    .line 748
    iget-object v3, v0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    .line 749
    invoke-virtual {v3}, Lantlr/Token;->getType()I

    move-result v4

    .line 751
    sget-object v5, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_9:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    const/16 v8, 0xff

    const/4 v9, 0x3

    const/16 v11, 0x20

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0xd

    const/4 v15, 0x2

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    if-lt v6, v9, :cond_7

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    if-gt v6, v8, :cond_7

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v10, "header"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 753
    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    invoke-virtual {v5, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    invoke-virtual {v5, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-lt v3, v9, :cond_6

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-gt v3, v8, :cond_6

    .line 764
    :goto_0
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-eq v3, v13, :cond_3

    if-eq v3, v12, :cond_3

    if-eq v3, v14, :cond_3

    if-eq v3, v11, :cond_3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 777
    :cond_1
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 767
    :cond_2
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    .line 784
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-eq v3, v13, :cond_5

    if-eq v3, v12, :cond_5

    if-eq v3, v14, :cond_5

    if-eq v3, v11, :cond_5

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_4

    .line 802
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    const/4 v4, 0x5

    goto/16 :goto_4

    .line 792
    :cond_4
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_1

    .line 787
    :cond_5
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_1

    .line 759
    :cond_6
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 805
    :cond_7
    sget-object v5, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_10:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    if-lt v6, v9, :cond_a

    invoke-virtual {v0, v15}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    if-gt v6, v8, :cond_a

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v8, "tokens"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 809
    :goto_2
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-eq v3, v13, :cond_9

    if-eq v3, v12, :cond_9

    if-eq v3, v14, :cond_9

    if-eq v3, v11, :cond_9

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_8

    .line 827
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCURLY_BLOCK_SCARF(Z)V

    const/16 v4, 0xc

    goto :goto_4

    .line 817
    :cond_8
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_2

    .line 812
    :cond_9
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_2

    .line 830
    :cond_a
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, "options"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 834
    :goto_3
    invoke-virtual {v0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    if-eq v3, v13, :cond_c

    if-eq v3, v12, :cond_c

    if-eq v3, v14, :cond_c

    if-eq v3, v11, :cond_c

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_b

    const/16 v3, 0x7b

    .line 852
    invoke-virtual {v0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    const/16 v4, 0xd

    goto :goto_4

    :cond_b
    const/16 v3, 0x7b

    .line 842
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    goto :goto_3

    :cond_c
    const/16 v3, 0x7b

    const/16 v5, 0x2f

    .line 837
    invoke-virtual {v0, v7}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_3

    :cond_d
    :goto_4
    if-eqz p1, :cond_e

    const/4 v2, -0x1

    if-eq v4, v2, :cond_e

    .line 860
    invoke-virtual {v0, v4}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 861
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    .line 863
    :goto_5
    iput-object v2, v0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mLPAREN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 713
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    .line 715
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 716
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 718
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mML_COMMENT(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "/*"

    .line 1071
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 1076
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2a

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1077
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v5, 0xff

    const/4 v6, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_2

    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_2

    const/4 v1, 0x0

    .line 1078
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_3

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v5, :cond_3

    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-lt v1, v6, :cond_3

    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v5, :cond_3

    const v1, 0xffff

    .line 1081
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto :goto_0

    :cond_3
    :goto_1
    const-string v1, "*/"

    .line 1089
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/16 p1, 0x25

    .line 1091
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1092
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 1094
    :goto_2
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mNEWLINE(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 631
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v2, v4, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 632
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 633
    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 634
    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->newline()V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 637
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 638
    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->newline()V

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    .line 641
    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 642
    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->newline()V

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x22

    .line 650
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 651
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 653
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 645
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mRCURLY(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7d

    .line 700
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 702
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 703
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 705
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mRPAREN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x29

    .line 726
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    .line 728
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 729
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 731
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mRULE_BLOCK(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3a

    .line 204
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 206
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 208
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 209
    iget-object v5, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_0

    .line 211
    :cond_0
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 218
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    .line 220
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v5, 0x20

    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x3b

    const/16 v10, 0x7c

    if-eq v1, v8, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v9, :cond_3

    if-ne v1, v10, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 223
    :cond_2
    iget-object v1, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 224
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 225
    iget-object v11, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 241
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-ne v1, v10, :cond_8

    .line 242
    invoke-virtual {p0, v10}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 244
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v11

    invoke-virtual {v1, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v11

    invoke-virtual {v1, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    iget-object v1, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 246
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 247
    iget-object v11, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_2

    .line 249
    :cond_4
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v11

    invoke-virtual {v1, v11}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    :goto_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    .line 258
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_6

    if-eq v1, v9, :cond_3

    if-ne v1, v10, :cond_5

    goto :goto_1

    .line 272
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 261
    :cond_6
    iget-object v1, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 262
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 263
    iget-object v11, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_1

    .line 252
    :cond_7
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 283
    :cond_8
    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_9

    const/16 p1, 0x16

    .line 285
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 286
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    .line 288
    :goto_3
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 214
    :cond_a
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final mSEMI(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 674
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 676
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 677
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 679
    :goto_0
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mSL_COMMENT(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "//"

    .line 1043
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 1048
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1049
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v4

    if-lt v4, v3, :cond_1

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-gt v1, v2, :cond_1

    const v1, 0xffff

    .line 1050
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 1058
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    if-eqz p1, :cond_2

    const/16 p1, 0x24

    .line 1060
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1061
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 1063
    :goto_2
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSTRING_LITERAL(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 575
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 579
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 580
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->mESC(Z)V

    goto :goto_0

    .line 582
    :cond_0
    sget-object v3, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->matchNot(C)V

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    if-eqz p1, :cond_2

    const/16 p1, 0x27

    .line 593
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 594
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 596
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSUBRULE_BLOCK(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 353
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 355
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_0

    .line 358
    :cond_0
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 365
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    .line 369
    :goto_1
    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    const/16 v5, 0x20

    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0x9

    if-eqz v1, :cond_5

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v9

    invoke-virtual {v1, v9}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 371
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v9

    const/16 v10, 0x7c

    if-eq v9, v8, :cond_2

    if-eq v9, v7, :cond_2

    if-eq v9, v6, :cond_2

    if-eq v9, v5, :cond_2

    if-ne v9, v10, :cond_1

    goto :goto_2

    .line 383
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 374
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 387
    :goto_2
    invoke-virtual {p0, v10}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 389
    sget-object v5, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 390
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    goto :goto_3

    .line 392
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    :goto_3
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mALT(Z)V

    goto :goto_1

    .line 395
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 408
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v9, 0x29

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_7

    if-ne v1, v9, :cond_6

    goto :goto_4

    .line 420
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 411
    :cond_7
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 424
    :goto_4
    invoke-virtual {p0, v9}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    .line 426
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_8

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_8

    const-string v1, "=>"

    .line 427
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->match(Ljava/lang/String;)V

    goto :goto_5

    .line 429
    :cond_8
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_9

    .line 430
    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_5

    .line 432
    :cond_9
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_a

    .line 433
    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_5

    .line 435
    :cond_a
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_b

    .line 436
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    const/4 p1, 0x6

    .line 443
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 444
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    .line 446
    :goto_6
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 361
    :cond_d
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final mWS(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 300
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 301
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_2

    .line 303
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 304
    invoke-virtual {p0, v4}, Lantlr/preprocessor/PreprocessorLexer;->match(C)V

    goto :goto_2

    .line 306
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-lt v1, v2, :cond_3

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 310
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 307
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mNEWLINE(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final mXDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1242
    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 1264
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 1253
    invoke-virtual {p0, v1, v2}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x41

    const/16 v2, 0x46

    .line 1259
    invoke-virtual {p0, v1, v2}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 1247
    invoke-virtual {p0, v1, v2}, Lantlr/preprocessor/PreprocessorLexer;->matchRange(CC)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x2a

    .line 1268
    invoke-virtual {p0, p1}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1269
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/preprocessor/PreprocessorLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1271
    :goto_1
    iput-object p1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    return-void

    nop

    :pswitch_data_0
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

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 63
    :goto_0
    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->resetText()V

    const/4 v0, 0x1

    .line 66
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_c

    const/16 v2, 0xa

    if-eq v1, v2, :cond_c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_c

    const/16 v2, 0x27

    if-eq v1, v2, :cond_b

    const/16 v2, 0x29

    if-eq v1, v2, :cond_a

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_6

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 165
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    sget-object v1, Lantlr/preprocessor/PreprocessorLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mSUBRULE_BLOCK(Z)V

    .line 167
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 170
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mLPAREN(Z)V

    .line 171
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 174
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 175
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lantlr/preprocessor/PreprocessorLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 87
    :pswitch_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mACTION(Z)V

    .line 88
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mARG_ACTION(Z)V

    .line 161
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 93
    :pswitch_2
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mSTRING_LITERAL(Z)V

    .line 94
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 105
    :pswitch_3
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mBANG(Z)V

    .line 106
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mSEMI(Z)V

    .line 112
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mRULE_BLOCK(Z)V

    .line 70
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mRCURLY(Z)V

    .line 124
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 148
    :cond_6
    :pswitch_4
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mID_OR_KEYWORD(Z)V

    .line 149
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 154
    :cond_7
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mASSIGN_RHS(Z)V

    .line 155
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 81
    :cond_8
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMENT(Z)V

    .line 82
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 117
    :cond_9
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mCOMMA(Z)V

    .line 118
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 129
    :cond_a
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mRPAREN(Z)V

    .line 130
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 99
    :cond_b
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mCHAR_LITERAL(Z)V

    .line 100
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 75
    :cond_c
    :pswitch_5
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->mWS(Z)V

    .line 76
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    .line 178
    :goto_1
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_d

    goto/16 :goto_0

    .line 179
    :cond_d
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 180
    invoke-virtual {p0, v0}, Lantlr/preprocessor/PreprocessorLexer;->testLiteralsTable(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 182
    iget-object v0, p0, Lantlr/preprocessor/PreprocessorLexer;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 185
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_e

    .line 190
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 193
    :cond_e
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
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
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
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
        :pswitch_0
    .end packed-switch
.end method
