.class public Lantlr/ANTLRLexer;
.super Lantlr/CharScanner;
.source "ANTLRLexer.java"

# interfaces
.implements Lantlr/ANTLRTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_4:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_5:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1430
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 1438
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 1446
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 1454
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    .line 1461
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRLexer;->mk_tokenSet_4()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    .line 1466
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRLexer;->mk_tokenSet_5()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 100
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lantlr/ANTLRLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 3

    .line 103
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lantlr/ANTLRLexer;->caseSensitiveLiterals:Z

    .line 105
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->setCaseSensitive(Z)V

    .line 106
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    .line 107
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "public"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "class"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "header"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "throws"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "lexclass"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "catch"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "private"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "options"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "extends"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "protected"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "TreeParser"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "Parser"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "Lexer"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "returns"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "charVocabulary"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "tokens"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lantlr/ANTLRLexer;->literals:Ljava/util/Hashtable;

    new-instance v0, Lantlr/ANTLRHashString;

    const-string v1, "exception"

    invoke-direct {v0, v1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 94
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/ANTLRLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 97
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/ANTLRLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public static escapeCharValue(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_c

    const/16 v4, 0x27

    if-eq v3, v4, :cond_c

    if-eq v3, v2, :cond_b

    const/16 v2, 0x62

    const/16 v4, 0x8

    if-eq v3, v2, :cond_a

    const/16 v2, 0x66

    if-eq v3, v2, :cond_9

    const/16 v2, 0x6e

    if-eq v3, v2, :cond_8

    const/16 v2, 0x72

    if-eq v3, v2, :cond_7

    const/16 v2, 0x74

    if-eq v3, v2, :cond_6

    const/16 v2, 0x75

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v3, v2, :cond_4

    packed-switch v3, :pswitch_data_0

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    add-int/lit8 p0, p0, -0x30

    :goto_1
    add-int/2addr v0, p0

    return v0

    .line 78
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_2
    add-int/lit8 p0, p0, -0x30

    return p0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_2

    .line 48
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_5

    return v1

    .line 52
    :cond_5
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    goto/16 :goto_1

    :cond_6
    const/16 p0, 0x9

    return p0

    :cond_7
    const/16 p0, 0xd

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0

    :cond_9
    const/16 p0, 0xc

    return p0

    :cond_a
    return v4

    :cond_b
    return v2

    :cond_c
    return v4

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

.method private static final mk_tokenSet_0()[J
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x2408

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1427
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

    .line 1435
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_2()[J
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

    .line 1443
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

    const-wide v2, -0x8400002408L

    aput-wide v2, v0, v1

    const-wide/32 v1, -0x28000001

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 1451
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_4()[J
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

    .line 1458
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final mk_tokenSet_5()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 1463
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

.method public static tokenTypeForCharLiteral(Ljava/lang/String;)I
    .locals 2

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 87
    invoke-static {p0}, Lantlr/ANTLRLexer;->escapeCharValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public final mACTION(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 1109
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v2

    const/4 v3, 0x0

    .line 1111
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->mNESTED_ACTION(Z)V

    const/4 v3, 0x1

    .line 1113
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x3f

    const/4 v5, 0x7

    if-ne v3, v4, :cond_0

    .line 1114
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    const/16 v3, 0x2b

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    :goto_0
    const-string/jumbo v4, "{"

    if-ne v3, v5, :cond_1

    .line 1123
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getText()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-static {v5, v4, v6}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getText()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "}?"

    invoke-static {v5, v4, v6}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->setText(Ljava/lang/String;)V

    .line 1128
    :goto_1
    new-instance v4, Lantlr/CommonToken;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v6}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v6

    iget-object v7, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v0, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v4, v3, v5}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    .line 1129
    invoke-virtual {v4, v1}, Lantlr/CommonToken;->setLine(I)V

    .line 1130
    invoke-virtual {v4, v2}, Lantlr/CommonToken;->setColumn(I)V

    .line 1137
    iput-object v4, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mARG_ACTION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 1038
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mNESTED_ARG_ACTION(Z)V

    .line 1039
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->setText(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x22

    .line 1041
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1042
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1044
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mASSIGN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3d

    .line 650
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 652
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 653
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 655
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 698
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x21

    .line 702
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 705
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 707
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCARET(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5e

    .line 689
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x31

    .line 691
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 692
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 694
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 776
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x27

    .line 780
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    const/4 v2, 0x1

    .line 782
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 783
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->mESC(Z)V

    goto :goto_0

    .line 785
    :cond_0
    sget-object v3, Lantlr/ANTLRLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 786
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->matchNot(C)V

    .line 793
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_1

    const/16 p1, 0x13

    .line 795
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 796
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 798
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 789
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1
.end method

.method public final mCLOSE_ELEMENT_OPTION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3e

    .line 533
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    .line 535
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 536
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 538
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mCOLON(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3a

    .line 611
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    .line 613
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 614
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 616
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
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

    .line 542
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2c

    .line 546
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x26

    .line 548
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 549
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 551
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 389
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 395
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v1, 0x0

    .line 396
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mSL_COMMENT(Z)V

    const/16 v1, 0x35

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_3

    .line 399
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mML_COMMENT(Z)V

    .line 400
    iget-object v1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    .line 401
    invoke-virtual {v1}, Lantlr/Token;->getType()I

    move-result v1

    :goto_0
    const/16 v2, 0x8

    const/4 v3, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    if-eqz p1, :cond_2

    if-eq v1, v3, :cond_2

    .line 410
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 411
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 413
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 404
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

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

    .line 995
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 999
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    .line 1001
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1002
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1004
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mESC(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 806
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    const/4 v2, 0x1

    .line 808
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

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

    if-eq v3, v1, :cond_6

    const/4 v1, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x3

    const/16 v6, 0x37

    const/16 v7, 0x30

    packed-switch v3, :pswitch_data_0

    .line 917
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v3, 0x34

    .line 891
    invoke-virtual {p0, v3, v6}, Lantlr/ANTLRLexer;->matchRange(CC)V

    .line 894
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_0

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_0

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-gt v1, v4, :cond_0

    .line 895
    invoke-virtual {p0, v7, v6}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto/16 :goto_0

    .line 897
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-lt v1, v5, :cond_1

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-gt v1, v4, :cond_1

    goto/16 :goto_0

    .line 900
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v3, 0x33

    .line 862
    invoke-virtual {p0, v7, v3}, Lantlr/ANTLRLexer;->matchRange(CC)V

    .line 865
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_4

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_4

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v4, :cond_4

    .line 866
    invoke-virtual {p0, v7, v6}, Lantlr/ANTLRLexer;->matchRange(CC)V

    .line 868
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v7, :cond_2

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-gt v1, v4, :cond_2

    .line 869
    invoke-virtual {p0, v7, v6}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto/16 :goto_0

    .line 871
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-lt v1, v5, :cond_3

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-gt v1, v4, :cond_3

    goto/16 :goto_0

    .line 874
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 879
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-lt v1, v5, :cond_5

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-gt v1, v4, :cond_5

    goto :goto_0

    .line 882
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 908
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    const/4 v1, 0x0

    .line 909
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mXDIGIT(Z)V

    .line 910
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mXDIGIT(Z)V

    .line 911
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mXDIGIT(Z)V

    .line 912
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mXDIGIT(Z)V

    goto :goto_0

    .line 821
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 826
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 841
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 836
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 816
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 811
    :cond_c
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 831
    :cond_d
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 856
    :cond_e
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 851
    :cond_f
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 846
    :cond_10
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_11

    const/16 p1, 0x38

    .line 922
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 923
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    const/4 p1, 0x0

    .line 925
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

.method public final mIMPLIES(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "=>"

    .line 663
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    .line 665
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 666
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 668
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mINT(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 1016
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_0

    .line 1017
    invoke-virtual {p0, v4, v5}, Lantlr/ANTLRLexer;->matchRange(CC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    .line 1027
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1028
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1030
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1020
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected final mINTERNAL_RULE_REF(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 1315
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    :goto_0
    const/4 v3, 0x1

    .line 1319
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const/16 v1, 0x29

    .line 1361
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->testLiteralsTable(I)I

    move-result v1

    if-eqz p1, :cond_0

    const/16 p1, 0x3e

    .line 1363
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1364
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v3

    iget-object v4, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v2}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1366
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return v1

    .line 1328
    :pswitch_0
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x41

    const/16 v4, 0x5a

    .line 1339
    invoke-virtual {p0, v3, v4}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x30

    const/16 v4, 0x39

    .line 1351
    invoke-virtual {p0, v3, v4}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    .line 1344
    :cond_1
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

.method public final mLPAREN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 585
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    .line 587
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 588
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 590
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mML_COMMENT(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "/*"

    .line 465
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 467
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2f

    const/16 v4, 0x2a

    const/16 v5, 0xff

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_0

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 468
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    const/16 v2, 0x8

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_7

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_7

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-lt v2, v6, :cond_7

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-gt v2, v5, :cond_7

    const/16 v2, 0x37

    .line 482
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-ne v8, v4, :cond_1

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-ne v8, v3, :cond_1

    goto :goto_1

    .line 483
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    const/16 v9, 0xa

    const/16 v10, 0xd

    if-ne v8, v10, :cond_2

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 484
    invoke-virtual {p0, v10}, Lantlr/ANTLRLexer;->match(C)V

    .line 485
    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->match(C)V

    .line 486
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-ne v8, v10, :cond_3

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-lt v8, v6, :cond_3

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-gt v8, v5, :cond_3

    .line 489
    invoke-virtual {p0, v10}, Lantlr/ANTLRLexer;->match(C)V

    .line 490
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 492
    :cond_3
    sget-object v8, Lantlr/ANTLRLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v10

    invoke-virtual {v8, v10}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v10

    if-lt v10, v6, :cond_4

    invoke-virtual {p0, v7}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v10

    if-gt v10, v5, :cond_4

    .line 494
    invoke-virtual {p0, v8}, Lantlr/ANTLRLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 497
    :cond_4
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v8

    if-ne v8, v9, :cond_5

    .line 498
    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->match(C)V

    .line 499
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    :cond_5
    :goto_1
    const-string v1, "*/"

    .line 507
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    if-eq v2, p1, :cond_6

    .line 509
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 510
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 512
    :goto_2
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 474
    :cond_7
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected final mNESTED_ACTION(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7b

    .line 1145
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 1150
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 1151
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/16 v7, 0xff

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v3, v6, :cond_1

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_5

    :cond_1
    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_5

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_5

    .line 1153
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1154
    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->match(C)V

    .line 1155
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->match(C)V

    .line 1156
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 1158
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_3

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_3

    .line 1159
    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->match(C)V

    .line 1160
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 1162
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    .line 1163
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->match(C)V

    .line 1164
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 1167
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1172
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/4 v5, 0x0

    if-ne v3, v1, :cond_6

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_6

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_6

    .line 1173
    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->mNESTED_ACTION(Z)V

    goto/16 :goto_0

    .line 1175
    :cond_6
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x27

    if-ne v3, v6, :cond_7

    sget-object v3, Lantlr/ANTLRLexer;->_tokenSet_4:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v6

    invoke-virtual {v3, v6}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1176
    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->mCHAR_LITERAL(Z)V

    goto/16 :goto_0

    .line 1178
    :cond_7
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_9

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v10, 0x2a

    if-eq v3, v10, :cond_8

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v6, :cond_9

    .line 1179
    :cond_8
    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->mCOMMENT(Z)V

    goto/16 :goto_0

    .line 1181
    :cond_9
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v6, 0x22

    if-ne v3, v6, :cond_a

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_a

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_a

    .line 1182
    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->mSTRING_LITERAL(Z)V

    goto/16 :goto_0

    .line 1184
    :cond_a
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_b

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_b

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-lt v2, v8, :cond_b

    invoke-virtual {p0, v9}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    if-gt v2, v7, :cond_b

    const v2, 0xffff

    .line 1185
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->matchNot(C)V

    goto/16 :goto_0

    .line 1193
    :cond_b
    :goto_1
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_c

    const/16 p1, 0x3c

    .line 1195
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1196
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    .line 1198
    :goto_2
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mNESTED_ARG_ACTION(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5b

    .line 1052
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 1056
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_7

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v3, v5, :cond_6

    const/16 v5, 0x27

    if-eq v3, v5, :cond_5

    if-eq v3, v1, :cond_4

    .line 1079
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/4 v5, 0x2

    const/16 v6, 0xd

    if-ne v3, v6, :cond_0

    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1080
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->match(C)V

    .line 1081
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    .line 1082
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 1084
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    invoke-virtual {p0, v5}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    .line 1085
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->match(C)V

    .line 1086
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 1088
    :cond_1
    sget-object v3, Lantlr/ANTLRLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    const/16 v3, 0x5d

    if-eqz v2, :cond_2

    .line 1089
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->matchNot(C)V

    goto :goto_0

    .line 1097
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_3

    const/16 p1, 0x3b

    .line 1099
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1100
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1102
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1059
    :cond_4
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->mNESTED_ARG_ACTION(Z)V

    goto/16 :goto_0

    .line 1070
    :cond_5
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->mCHAR_LITERAL(Z)V

    goto/16 :goto_0

    .line 1075
    :cond_6
    invoke-virtual {p0, v6}, Lantlr/ANTLRLexer;->mSTRING_LITERAL(Z)V

    goto/16 :goto_0

    .line 1064
    :cond_7
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    .line 1065
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto/16 :goto_0
.end method

.method public final mNOT_OP(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7e

    .line 754
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2a

    .line 756
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 757
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 759
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mOPEN_ELEMENT_OPTION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3c

    .line 520
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    .line 522
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 523
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 525
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mOR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7c

    .line 715
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    .line 717
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 718
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 720
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mPLUS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2b

    .line 637
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2f

    .line 639
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 640
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 642
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mQUESTION(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3f

    .line 559
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2d

    .line 561
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 562
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 564
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mRANGE(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, ".."

    .line 741
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    .line 743
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 744
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 746
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
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

    .line 763
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x7d

    .line 767
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 769
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 770
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 772
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 594
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x29

    .line 598
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    .line 600
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 601
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 603
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mRULE_REF(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 1268
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mINTERNAL_RULE_REF(Z)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x7b

    const/16 v5, 0x33

    if-ne v2, v5, :cond_0

    .line 1272
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mWS_LOOP(Z)V

    .line 1274
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1275
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    const/16 v2, 0xe

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 1284
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mWS_LOOP(Z)V

    .line 1286
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1287
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    const/16 v2, 0x17

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-eq v2, p1, :cond_2

    .line 1300
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1301
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1303
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
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

    .line 672
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 676
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 678
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 679
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 681
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 417
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "//"

    .line 421
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Ljava/lang/String;)V

    .line 425
    :goto_0
    sget-object v1, Lantlr/ANTLRLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 438
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    .line 439
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_1

    .line 441
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 442
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    .line 445
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->match(C)V

    .line 452
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    if-eqz p1, :cond_3

    const/16 p1, 0x36

    .line 454
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 455
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 457
    :goto_2
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 448
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final mSTAR(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2a

    .line 624
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2e

    .line 626
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 627
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 629
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 929
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 933
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 937
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 938
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->mESC(Z)V

    goto :goto_0

    .line 940
    :cond_0
    sget-object v3, Lantlr/ANTLRLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->matchNot(C)V

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 951
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 952
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 954
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mTOKEN_REF(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x41

    const/16 v2, 0x5a

    .line 1206
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    :goto_0
    const/4 v3, 0x1

    .line 1210
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    const/16 v1, 0x18

    .line 1252
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->testLiteralsTable(I)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq v1, p1, :cond_0

    .line 1254
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1255
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1257
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    :pswitch_0
    const/16 v3, 0x61

    const/16 v4, 0x7a

    .line 1219
    invoke-virtual {p0, v3, v4}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    .line 1230
    :pswitch_1
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x30

    const/16 v4, 0x39

    .line 1242
    invoke-virtual {p0, v3, v4}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {p0, v4}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

.method public final mTREE_BEGIN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const-string v1, "#("

    .line 572
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2c

    .line 574
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 575
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 577
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mWILDCARD(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2e

    .line 728
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x32

    .line 730
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 731
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 733
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mWS(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 366
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 367
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->match(C)V

    .line 368
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->match(C)V

    .line 369
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 372
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->match(C)V

    .line 373
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 376
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 351
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->match(C)V

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->match(C)V

    .line 362
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->newline()V

    goto :goto_0

    .line 356
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->match(C)V

    :goto_0
    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mWS_LOOP(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 1378
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x3d

    .line 1397
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1398
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1400
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1386
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->mCOMMENT(Z)V

    goto :goto_0

    .line 1381
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->mWS(Z)V

    goto :goto_0
.end method

.method protected final mWS_OPT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1404
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 1409
    sget-object v1, Lantlr/ANTLRLexer;->_tokenSet_5:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1410
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->mWS(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x3f

    .line 1417
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1418
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1420
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    return-void
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

    .line 958
    iget-object v0, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 962
    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 984
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 973
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x41

    const/16 v2, 0x46

    .line 979
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 967
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRLexer;->matchRange(CC)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x3a

    .line 988
    invoke-virtual {p0, p1}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 989
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 991
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

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

    .line 132
    :goto_0
    invoke-virtual {p0}, Lantlr/ANTLRLexer;->resetText()V

    const/4 v0, 0x1

    .line 135
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_7

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_6

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 301
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/4 v3, 0x2

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 302
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mIMPLIES(Z)V

    .line 303
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 305
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v3}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mRANGE(Z)V

    .line 307
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 309
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 310
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mASSIGN(Z)V

    .line 311
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 313
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 314
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mWILDCARD(Z)V

    .line 315
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 318
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 319
    :cond_4
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lantlr/ANTLRLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 234
    :pswitch_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mNOT_OP(Z)V

    .line 235
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 240
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mRCURLY(Z)V

    .line 241
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 228
    :pswitch_2
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mOR(Z)V

    .line 229
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 272
    :pswitch_3
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mACTION(Z)V

    .line 273
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 296
    :pswitch_4
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mRULE_REF(Z)V

    .line 297
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 266
    :pswitch_5
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mARG_ACTION(Z)V

    .line 267
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 284
    :pswitch_6
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mTOKEN_REF(Z)V

    .line 285
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 150
    :pswitch_7
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mOPEN_ELEMENT_OPTION(Z)V

    .line 151
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 210
    :pswitch_8
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mSEMI(Z)V

    .line 211
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto/16 :goto_1

    .line 192
    :pswitch_9
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mCOLON(Z)V

    .line 193
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 260
    :pswitch_a
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mINT(Z)V

    .line 261
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 144
    :pswitch_b
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mCOMMENT(Z)V

    .line 145
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 162
    :pswitch_c
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mCOMMA(Z)V

    .line 163
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 204
    :pswitch_d
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mPLUS(Z)V

    .line 205
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 198
    :pswitch_e
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mSTAR(Z)V

    .line 199
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 186
    :pswitch_f
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mRPAREN(Z)V

    .line 187
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 180
    :pswitch_10
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mLPAREN(Z)V

    .line 181
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 246
    :pswitch_11
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mCHAR_LITERAL(Z)V

    .line 247
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 174
    :pswitch_12
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mTREE_BEGIN(Z)V

    .line 175
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 252
    :pswitch_13
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mSTRING_LITERAL(Z)V

    .line 253
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 222
    :pswitch_14
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mBANG(Z)V

    .line 223
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 168
    :cond_5
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mQUESTION(Z)V

    .line 169
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 156
    :cond_6
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mCLOSE_ELEMENT_OPTION(Z)V

    .line 157
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 216
    :cond_7
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mCARET(Z)V

    .line 217
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 138
    :cond_8
    :pswitch_15
    invoke-virtual {p0, v0}, Lantlr/ANTLRLexer;->mWS(Z)V

    .line 139
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    .line 322
    :goto_1
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 323
    :cond_9
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 324
    iget-object v1, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 325
    iget-object v0, p0, Lantlr/ANTLRLexer;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 328
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_a

    .line 333
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 336
    :cond_a
    new-instance v1, Lantlr/TokenStreamException;

    invoke-virtual {v0}, Lantlr/CharStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
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
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
