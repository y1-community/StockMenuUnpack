.class public Lantlr/ANTLRTokdefParser;
.super Lantlr/LLkParser;
.source "ANTLRTokdefParser.java"

# interfaces
.implements Lantlr/ANTLRTokdefParserTokenTypes;


# static fields
.field public static final _tokenNames:[Ljava/lang/String;

.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;


# instance fields
.field private antlrTool:Lantlr/Tool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

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

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STRING"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ASSIGN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RPAREN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SL_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ML_COMMENT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ESC"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DIGIT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "XDIGIT"

    aput-object v2, v0, v1

    .line 222
    sput-object v0, Lantlr/ANTLRTokdefParser;->_tokenNames:[Ljava/lang/String;

    .line 245
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRTokdefParser;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRTokdefParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 250
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRTokdefParser;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRTokdefParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    const/4 v0, 0x3

    .line 105
    invoke-direct {p0, p1, v0}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 106
    sget-object p1, Lantlr/ANTLRTokdefParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/ANTLRTokdefParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x3

    .line 92
    invoke-direct {p0, p1, v0}, Lantlr/ANTLRTokdefParser;-><init>(Lantlr/TokenBuffer;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 88
    sget-object p1, Lantlr/ANTLRTokdefParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/ANTLRTokdefParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x3

    .line 101
    invoke-direct {p0, p1, v0}, Lantlr/ANTLRTokdefParser;-><init>(Lantlr/TokenStream;I)V

    return-void
.end method

.method protected constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 97
    sget-object p1, Lantlr/ANTLRTokdefParser;->_tokenNames:[Ljava/lang/String;

    iput-object p1, p0, Lantlr/ANTLRTokdefParser;->tokenNames:[Ljava/lang/String;

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 242
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

    .line 247
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x32
        0x0
    .end array-data
.end method


# virtual methods
.method public final file(Lantlr/ImportVocabTokenManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    const/4 v1, 0x4

    .line 117
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 121
    :goto_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefParser;->line(Lantlr/ImportVocabTokenManager;)V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefParser;->reportError(Lantlr/RecognitionException;)V

    .line 133
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->consume()V

    .line 134
    sget-object p1, Lantlr/ANTLRTokdefParser;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_1
    return-void
.end method

.method protected getTool()Lantlr/Tool;
    .locals 1

    .line 44
    iget-object v0, p0, Lantlr/ANTLRTokdefParser;->antlrTool:Lantlr/Tool;

    return-object v0
.end method

.method public final line(Lantlr/ImportVocabTokenManager;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 155
    invoke-virtual {p0, v5}, Lantlr/ANTLRTokdefParser;->match(I)V

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v1, v8, :cond_1

    invoke-virtual {p0, v7}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 160
    invoke-virtual {p0, v8}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 162
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 163
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v6

    .line 164
    invoke-virtual {p0, v5}, Lantlr/ANTLRTokdefParser;->match(I)V

    move-object v10, v6

    move-object v6, v3

    move-object v3, v10

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    if-ne v1, v8, :cond_2

    invoke-virtual {p0, v7}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    const/4 v9, 0x7

    if-ne v1, v9, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 169
    invoke-virtual {p0, v8}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 171
    invoke-virtual {p0, v9}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 172
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v6

    .line 173
    invoke-virtual {p0, v5}, Lantlr/ANTLRTokdefParser;->match(I)V

    const/16 v5, 0x8

    .line 174
    invoke-virtual {p0, v5}, Lantlr/ANTLRTokdefParser;->match(I)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    if-ne v1, v8, :cond_4

    invoke-virtual {p0, v7}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefParser;->LA(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 177
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v1

    .line 178
    invoke-virtual {p0, v8}, Lantlr/ANTLRTokdefParser;->match(I)V

    move-object v6, v3

    .line 186
    :goto_0
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 187
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefParser;->match(I)V

    .line 190
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lantlr/ImportVocabTokenManager;->define(Ljava/lang/String;I)V

    if-eqz v1, :cond_5

    .line 196
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/ImportVocabTokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v0

    check-cast v0, Lantlr/StringLiteralSymbol;

    .line 198
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/StringLiteralSymbol;->setLabel(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lantlr/ImportVocabTokenManager;->mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 204
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lantlr/ImportVocabTokenManager;->define(Ljava/lang/String;I)V

    if-eqz v6, :cond_5

    .line 206
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/ImportVocabTokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    .line 207
    invoke-virtual {v6}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/TokenSymbol;->setParaphrase(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_4
    new-instance p1, Lantlr/NoViableAltException;

    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefParser;->LT(I)Lantlr/Token;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lantlr/NoViableAltException;-><init>(Lantlr/Token;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefParser;->reportError(Lantlr/RecognitionException;)V

    .line 216
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->consume()V

    .line 217
    sget-object p1, Lantlr/ANTLRTokdefParser;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefParser;->consumeUntil(Lantlr/collections/impl/BitSet;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 4

    .line 65
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getTool()Lantlr/Tool;

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

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportError(Lantlr/RecognitionException;)V

    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getTool()Lantlr/Tool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getTool()Lantlr/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefParser;->getFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportWarning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lantlr/ANTLRTokdefParser;->antlrTool:Lantlr/Tool;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lantlr/ANTLRTokdefParser;->antlrTool:Lantlr/Tool;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "antlr.Tool already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
