.class public Linfo/monitorenter/cpdetector/io/parser/EncodingParser;
.super Lantlr/LLkParser;
.source "EncodingParser.java"

# interfaces
.implements Linfo/monitorenter/cpdetector/io/parser/EncodingParserTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

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

    const-string v2, "META_CONTENT_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "XML_ENCODING_DECL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IDENTIFIER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SPACING"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NEWLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SPACE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LETTER"

    aput-object v2, v0, v1

    .line 92
    sput-object v0, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->_tokenNames:[Ljava/lang/String;

    .line 111
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 42
    sget-object p1, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 24
    sget-object p1, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 33
    sget-object p1, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 108
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2
        0x0
    .end array-data
.end method


# virtual methods
.method public final htmlDocument()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    :try_start_0
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->LA(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 67
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->match(I)V

    .line 69
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Lantlr/NoViableAltException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 58
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->match(I)V

    .line 60
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 84
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->reportError(Lantlr/RecognitionException;)V

    .line 85
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->consume()V

    .line 86
    sget-object v1, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_2
    :goto_0
    return-object v0
.end method
