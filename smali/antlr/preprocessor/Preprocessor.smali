.class public Lantlr/preprocessor/Preprocessor;
.super Lantlr/LLkParser;
.source "Preprocessor.java"

# interfaces
.implements Lantlr/preprocessor/PreprocessorTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_6:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_7:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_8:Lantlr/collections/impl/BitSet;


# instance fields
.field private antlrTool:Lantlr/Tool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<0>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EOF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<2>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NULL_TREE_LOOKAHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\"tokens\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HEADER_ACTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SUBRULE_BLOCK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"class\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"extends\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SEMI"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TOKENS_SPEC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "OPTIONS_START"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ASSIGN_RHS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RCURLY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"protected\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\"private\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"public\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BANG"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ARG_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\"returns\""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RULE_BLOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\"throws\""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\"exception\""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\"catch\""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ALT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ELEMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ID_OR_KEYWORD"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "CURLY_BLOCK_SCARF"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "NEWLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SL_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ML_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "CHAR_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "STRING_LITERAL"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "XDIGIT"

    aput-object v2, v0, v1

    .line 775
    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    .line 825
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 830
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 835
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 840
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 845
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 850
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    .line 855
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_6()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    .line 860
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_7()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    .line 865
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/preprocessor/Preprocessor;->mk_tokenSet_8()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 109
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/preprocessor/Preprocessor;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, v0}, Lantlr/preprocessor/Preprocessor;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 91
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/preprocessor/Preprocessor;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, v0}, Lantlr/preprocessor/Preprocessor;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 100
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/preprocessor/Preprocessor;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 822
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_1()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 827
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x471382
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_2()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 832
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x70200
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_3()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 837
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x182
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_4()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 842
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x800
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_5()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 847
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x70382
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_6()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 852
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x402080
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_7()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 857
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2070382
        0x0
    .end array-data
.end method

.method private static final mk_tokenSet_8()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 862
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x6070382
        0x0
    .end array-data
.end method


# virtual methods
.method public final class_def(Ljava/lang/String;Lantlr/preprocessor/Hierarchy;)Lantlr/preprocessor/Grammar;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 250
    new-instance v0, Lantlr/collections/impl/IndexedVector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lantlr/collections/impl/IndexedVector;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 257
    :try_start_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 270
    :cond_0
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v3

    .line 261
    invoke-virtual {p0, v5}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 274
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 275
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v4

    const/16 v6, 0x9

    .line 276
    invoke-virtual {p0, v6}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const/16 v7, 0xa

    .line 277
    invoke-virtual {p0, v7}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 278
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v7

    .line 279
    invoke-virtual {p0, v6}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 281
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v8

    const/4 v9, 0x6

    const/16 v10, 0xb

    if-eq v8, v9, :cond_3

    if-ne v8, v10, :cond_2

    move-object v8, v1

    goto :goto_1

    .line 293
    :cond_2
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_3
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->superClass()Ljava/lang/String;

    move-result-object v8

    .line 297
    :goto_1
    invoke-virtual {p0, v10}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 299
    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lantlr/preprocessor/Hierarchy;->getGrammar(Ljava/lang/String;)Lantlr/preprocessor/Grammar;

    move-result-object v9
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v9, :cond_d

    .line 306
    :try_start_1
    new-instance p1, Lantlr/preprocessor/Grammar;

    invoke-virtual {p2}, Lantlr/preprocessor/Hierarchy;->getTool()Lantlr/Tool;

    move-result-object p2

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, p2, v4, v7, v0}, Lantlr/preprocessor/Grammar;-><init>(Lantlr/Tool;Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :try_start_2
    iput-object v8, p1, Lantlr/preprocessor/Grammar;->superClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 309
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/preprocessor/Grammar;->setPreambleAction(Ljava/lang/String;)V

    .line 314
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result p2

    const/16 v0, 0xc

    if-eq p2, v5, :cond_6

    if-eq p2, v6, :cond_6

    if-eq p2, v0, :cond_6

    const/16 v3, 0xd

    if-eq p2, v3, :cond_5

    packed-switch p2, :pswitch_data_0

    .line 331
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2

    .line 317
    :cond_5
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;

    move-result-object v1

    .line 337
    :cond_6
    :pswitch_0
    invoke-virtual {p1, v1}, Lantlr/preprocessor/Grammar;->setOptions(Lantlr/collections/impl/IndexedVector;)V

    .line 341
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result p2

    if-eq p2, v5, :cond_8

    if-eq p2, v6, :cond_8

    if-eq p2, v0, :cond_7

    packed-switch p2, :pswitch_data_1

    .line 359
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2

    .line 344
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object p2

    .line 345
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 346
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/preprocessor/Grammar;->setTokenSection(Ljava/lang/String;)V

    .line 364
    :cond_8
    :pswitch_1
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result p2

    if-eq p2, v5, :cond_9

    if-eq p2, v6, :cond_a

    packed-switch p2, :pswitch_data_2

    .line 381
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2

    .line 367
    :cond_9
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object p2

    .line 368
    invoke-virtual {p0, v5}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 369
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/preprocessor/Grammar;->setMemberAction(Ljava/lang/String;)V

    :cond_a
    :pswitch_2
    const/4 p2, 0x0

    .line 389
    :goto_2
    sget-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 390
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->rule(Lantlr/preprocessor/Grammar;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    if-lt p2, v2, :cond_c

    goto :goto_4

    .line 393
    :cond_c
    new-instance p2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Lantlr/RecognitionException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v9

    goto :goto_3

    .line 303
    :cond_d
    :try_start_3
    new-instance p2, Lantlr/SemanticException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "redefinition of grammar "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {v4}, Lantlr/Token;->getColumn()I

    move-result v3

    invoke-direct {p2, v0, p1, v2, v3}, Lantlr/SemanticException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p2
    :try_end_3
    .catch Lantlr/RecognitionException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 401
    :goto_3
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 402
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 403
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    move-object p1, v1

    :goto_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final exceptionGroup()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    .line 672
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 673
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->exceptionSpec()Ljava/lang/String;

    move-result-object v1

    .line 674
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 684
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 685
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 686
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_0
    return-object v0
.end method

.method public final exceptionHandler()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/16 v0, 0x1a

    .line 758
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const/4 v0, 0x1

    .line 759
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v1

    const/16 v2, 0x14

    .line 760
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 761
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    const/4 v2, 0x7

    .line 762
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 763
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "catch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 767
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 768
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 769
    sget-object v0, Lantlr/preprocessor/Preprocessor;->_tokenSet_8:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final exceptionSpec()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 696
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    .line 700
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const/4 v2, 0x1

    .line 702
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v3

    const/16 v4, 0x1a

    if-eq v3, v2, :cond_1

    const/16 v5, 0x14

    if-eq v3, v5, :cond_0

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    const/16 v5, 0x9

    if-eq v3, v5, :cond_1

    if-eq v3, v1, :cond_1

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 724
    new-instance v1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v1

    .line 705
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 706
    invoke-virtual {p0, v5}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 707
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 732
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->exceptionHandler()Ljava/lang/String;

    move-result-object v1

    .line 733
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 743
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 744
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 745
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_7:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getTool()Lantlr/Tool;
    .locals 1

    .line 47
    iget-object v0, p0, Lantlr/preprocessor/Preprocessor;->antlrTool:Lantlr/Tool;

    return-object v0
.end method

.method public final grammarFile(Lantlr/preprocessor/Hierarchy;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 126
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 129
    invoke-virtual {p1, p2}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v1

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lantlr/preprocessor/GrammarFile;->addHeaderAction(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eq v1, v0, :cond_3

    const/16 v5, 0xd

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object p2

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    invoke-virtual {p0, v4}, Lantlr/preprocessor/Preprocessor;->optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;

    move-result-object v4

    .line 159
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->match(I)V

    goto :goto_3

    .line 160
    :cond_5
    :goto_2
    invoke-virtual {p0, p2, p1}, Lantlr/preprocessor/Preprocessor;->class_def(Ljava/lang/String;Lantlr/preprocessor/Hierarchy;)Lantlr/preprocessor/Grammar;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 163
    invoke-virtual {p1, p2}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v5

    invoke-virtual {v5, v4}, Lantlr/preprocessor/GrammarFile;->setOptions(Lantlr/collections/impl/IndexedVector;)V

    :cond_6
    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {v1, p2}, Lantlr/preprocessor/Grammar;->setFileName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, v1}, Lantlr/preprocessor/Hierarchy;->addGrammar(Lantlr/preprocessor/Grammar;)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 181
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 182
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_3
    return-void
.end method

.method public final optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 194
    new-instance v0, Lantlr/collections/impl/IndexedVector;

    invoke-direct {v0}, Lantlr/collections/impl/IndexedVector;-><init>()V

    const/16 v1, 0xd

    .line 198
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 202
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 203
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 204
    invoke-virtual {p0, v3}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 205
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v3

    const/16 v4, 0xe

    .line 206
    invoke-virtual {p0, v4}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 208
    new-instance v4, Lantlr/preprocessor/Option;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p1}, Lantlr/preprocessor/Option;-><init>(Ljava/lang/String;Ljava/lang/String;Lantlr/preprocessor/Grammar;)V

    .line 209
    invoke-virtual {v4}, Lantlr/preprocessor/Option;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lantlr/collections/impl/IndexedVector;->appendElement(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "importVocab"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    iput-boolean v1, p1, Lantlr/preprocessor/Grammar;->specifiedVocabulary:Z

    .line 212
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lantlr/preprocessor/Grammar;->importVocab:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "exportVocab"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    .line 218
    iget-object v1, p1, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 228
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->match(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 232
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 233
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_1
    return-object v0
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/RecognitionException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/RecognitionException;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RecognitionException;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RecognitionException;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportError(Lantlr/RecognitionException;)V

    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportWarning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final rule(Lantlr/preprocessor/Grammar;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 442
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 467
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x12

    .line 457
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const-string v1, "public"

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x11

    .line 451
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const-string v1, "private"

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x10

    .line 445
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const-string v1, "protected"

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 471
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v4

    .line 472
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 474
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v2

    const/16 v5, 0xd

    const/4 v6, 0x7

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    packed-switch v2, :pswitch_data_1

    .line 492
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const/16 v2, 0x13

    .line 477
    invoke-virtual {p0, v2}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :pswitch_4
    const/4 v2, 0x0

    .line 497
    :goto_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v7

    const/16 v8, 0x14

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_2

    packed-switch v7, :pswitch_data_2

    .line 514
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 500
    :pswitch_5
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v7

    .line 501
    invoke-virtual {p0, v8}, Lantlr/preprocessor/Preprocessor;->match(I)V

    goto :goto_2

    :cond_2
    :pswitch_6
    move-object v7, v3

    .line 519
    :goto_2
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v9

    if-eq v9, v6, :cond_3

    if-eq v9, v5, :cond_3

    packed-switch v9, :pswitch_data_3

    .line 536
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    :pswitch_7
    const/16 v9, 0x15

    .line 522
    invoke-virtual {p0, v9}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 523
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v9

    .line 524
    invoke-virtual {p0, v8}, Lantlr/preprocessor/Preprocessor;->match(I)V

    goto :goto_3

    :cond_3
    :pswitch_8
    move-object v9, v3

    .line 541
    :goto_3
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v8

    const/16 v10, 0x16

    if-eq v8, v6, :cond_5

    if-eq v8, v5, :cond_5

    if-eq v8, v10, :cond_5

    const/16 v11, 0x17

    if-ne v8, v11, :cond_4

    .line 544
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->throwsSpec()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 555
    :cond_4
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const-string v8, ""

    .line 560
    :goto_4
    :try_start_1
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v11

    if-eq v11, v6, :cond_8

    if-eq v11, v5, :cond_7

    if-ne v11, v10, :cond_6

    goto :goto_5

    .line 573
    :cond_6
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_7
    invoke-virtual {p0, v3}, Lantlr/preprocessor/Preprocessor;->optionSpec(Lantlr/preprocessor/Grammar;)Lantlr/collections/impl/IndexedVector;

    move-result-object v5

    goto :goto_6

    :cond_8
    :goto_5
    move-object v5, v3

    .line 578
    :goto_6
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v11

    if-eq v11, v6, :cond_a

    if-ne v11, v10, :cond_9

    goto :goto_7

    .line 591
    :cond_9
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1

    .line 581
    :cond_a
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v3

    .line 582
    invoke-virtual {p0, v6}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 595
    :goto_7
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 596
    invoke-virtual {p0, v10}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 597
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->exceptionGroup()Ljava/lang/String;

    move-result-object v6

    .line 599
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    new-instance v6, Lantlr/preprocessor/Rule;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v0, v5, p1}, Lantlr/preprocessor/Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;Lantlr/preprocessor/Grammar;)V

    .line 601
    invoke-virtual {v6, v8}, Lantlr/preprocessor/Rule;->setThrowsSpec(Ljava/lang/String;)V

    if-eqz v7, :cond_b

    .line 603
    invoke-virtual {v7}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lantlr/preprocessor/Rule;->setArgs(Ljava/lang/String;)V

    :cond_b
    if-eqz v9, :cond_c

    .line 606
    invoke-virtual {v9}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lantlr/preprocessor/Rule;->setReturnValue(Ljava/lang/String;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 609
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lantlr/preprocessor/Rule;->setInitAction(Ljava/lang/String;)V

    :cond_d
    if-eqz v2, :cond_e

    .line 612
    invoke-virtual {v6}, Lantlr/preprocessor/Rule;->setBang()V

    .line 614
    :cond_e
    invoke-virtual {v6, v1}, Lantlr/preprocessor/Rule;->setVisibility(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 616
    invoke-virtual {p1, v6}, Lantlr/preprocessor/Grammar;->addRule(Lantlr/preprocessor/Rule;)V
    :try_end_1
    .catch Lantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 622
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 623
    sget-object p1, Lantlr/preprocessor/Preprocessor;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_f
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lantlr/preprocessor/Preprocessor;->antlrTool:Lantlr/Tool;

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lantlr/preprocessor/Preprocessor;->antlrTool:Lantlr/Tool;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "antlr.Tool already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final superClass()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p0, v0}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 414
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 417
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 418
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 419
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :goto_0
    return-object v0
.end method

.method public final throwsSpec()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const-string v0, "throws "

    const/16 v1, 0x17

    .line 635
    :try_start_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->match(I)V

    const/4 v1, 0x1

    .line 636
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v2

    const/16 v3, 0x9

    .line 637
    invoke-virtual {p0, v3}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 638
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LA(I)I

    move-result v2

    const/16 v4, 0x18

    if-ne v2, v4, :cond_0

    .line 643
    invoke-virtual {p0, v4}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 644
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->LT(I)Lantlr/Token;

    move-result-object v2

    .line 645
    invoke-virtual {p0, v3}, Lantlr/preprocessor/Preprocessor;->match(I)V

    .line 646
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 656
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->reportError(Lantlr/RecognitionException;)V

    .line 657
    invoke-virtual {p0}, Lantlr/preprocessor/Preprocessor;->consume()V

    .line 658
    sget-object v1, Lantlr/preprocessor/Preprocessor;->_tokenSet_6:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/preprocessor/Preprocessor;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_0
    return-object v0
.end method
