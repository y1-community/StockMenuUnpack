.class public Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;
.super Lantlr/CharScanner;
.source "EncodingLexer.java"

# interfaces
.implements Lantlr/TokenStream;
.implements Linfo/monitorenter/cpdetector/io/parser/EncodingParserTokenTypes;


# static fields
.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1361
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 38
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->caseSensitiveLiterals:Z

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->setCaseSensitive(Z)V

    .line 44
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 32
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 35
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method private static final mk_tokenSet_0()[J
    .locals 4

    const/16 v0, 0x401

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide v2, 0x100002400L    # 2.1220003443E-314

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x200000000000L

    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method protected final mDIGIT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 725
    invoke-virtual {p0, v1, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 727
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 728
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 730
    :goto_0
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mIDENTIFIER(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 1258
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mLETTER(Z)V

    :goto_0
    const/4 v2, 0x1

    .line 1262
    invoke-virtual {p0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 1304
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1305
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1307
    :goto_1
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 1271
    :pswitch_0
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mLETTER(Z)V

    goto :goto_0

    .line 1278
    :pswitch_1
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    goto :goto_0

    .line 1288
    :cond_2
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    goto :goto_0

    .line 1293
    :cond_3
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    goto :goto_0

    :pswitch_data_0
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

.method protected final mLETTER(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 712
    invoke-virtual {p0, v1, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 714
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 715
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 717
    :goto_0
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mMETA_CONTENT_TYPE(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    .line 97
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    const/16 v2, 0x3c

    .line 98
    invoke-virtual {p0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 99
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v7, 0x6d

    if-ne v2, v7, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 104
    :cond_1
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 105
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 106
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 119
    :goto_0
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const-string v7, "meta"

    .line 120
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 121
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 123
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    const/16 v7, 0x68

    if-ne v2, v7, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 126
    :cond_3
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 127
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 128
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 141
    :goto_1
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const-string v7, "http-equiv"

    .line 142
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 143
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 145
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x3d

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_5

    if-ne v2, v7, :cond_4

    goto :goto_2

    .line 159
    :cond_4
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 148
    :cond_5
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 149
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 150
    iget-object v8, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 163
    :goto_2
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 164
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 165
    iget-object v8, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 167
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v8, 0x63

    const/16 v9, 0x22

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_7

    if-eq v2, v9, :cond_8

    if-ne v2, v8, :cond_6

    goto :goto_3

    .line 181
    :cond_6
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 170
    :cond_7
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 171
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 172
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 186
    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v9, :cond_a

    if-ne v2, v8, :cond_9

    goto :goto_4

    .line 219
    :cond_9
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 189
    :cond_a
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 190
    invoke-virtual {p0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 191
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 193
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_c

    if-eq v2, v4, :cond_c

    if-eq v2, v3, :cond_c

    if-ne v2, v8, :cond_b

    goto :goto_4

    .line 207
    :cond_b
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 196
    :cond_c
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 197
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 198
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 223
    :goto_4
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const-string v10, "content-type"

    .line 224
    invoke-virtual {p0, v10}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 225
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 227
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_e

    if-eq v2, v4, :cond_e

    if-eq v2, v3, :cond_e

    if-eq v2, v9, :cond_f

    if-ne v2, v8, :cond_d

    goto :goto_5

    .line 241
    :cond_d
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 230
    :cond_e
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 231
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 232
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 246
    :cond_f
    :goto_5
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v9, :cond_11

    if-ne v2, v8, :cond_10

    goto :goto_6

    .line 279
    :cond_10
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 249
    :cond_11
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 250
    invoke-virtual {p0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 251
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 253
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_13

    if-eq v2, v4, :cond_13

    if-eq v2, v3, :cond_13

    if-ne v2, v8, :cond_12

    goto :goto_6

    .line 267
    :cond_12
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 256
    :cond_13
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 257
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 258
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 283
    :goto_6
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const-string v10, "content"

    .line 284
    invoke-virtual {p0, v10}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 285
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 287
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_15

    if-eq v2, v4, :cond_15

    if-eq v2, v3, :cond_15

    if-ne v2, v7, :cond_14

    goto :goto_7

    .line 301
    :cond_14
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 290
    :cond_15
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 291
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 292
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 305
    :goto_7
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 306
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 307
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 309
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v10, 0x3b

    if-eq v2, v5, :cond_16

    if-eq v2, v4, :cond_16

    if-eq v2, v3, :cond_16

    if-eq v2, v9, :cond_17

    if-eq v2, v10, :cond_17

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 332
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 312
    :cond_16
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 313
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 314
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 337
    :cond_17
    :pswitch_0
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v9, :cond_18

    if-eq v2, v10, :cond_1a

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 388
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 340
    :cond_18
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 341
    invoke-virtual {p0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 342
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 344
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_19

    if-eq v2, v4, :cond_19

    if-eq v2, v3, :cond_19

    if-eq v2, v10, :cond_1a

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    .line 367
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 347
    :cond_19
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 348
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 349
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 395
    :cond_1a
    :goto_8
    :pswitch_1
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    .line 516
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 517
    invoke-virtual {p0, v10}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 518
    iget-object v10, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 520
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_1c

    if-eq v2, v4, :cond_1c

    if-eq v2, v3, :cond_1c

    if-ne v2, v8, :cond_1b

    goto :goto_9

    .line 534
    :cond_1b
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 523
    :cond_1c
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 524
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 525
    iget-object v8, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 538
    :goto_9
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const-string v8, "charset"

    .line 539
    invoke-virtual {p0, v8}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 540
    iget-object v8, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 542
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_1e

    if-eq v2, v4, :cond_1e

    if-eq v2, v3, :cond_1e

    if-ne v2, v7, :cond_1d

    goto :goto_a

    .line 556
    :cond_1d
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 545
    :cond_1e
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 546
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 547
    iget-object v8, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v8, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 560
    :goto_a
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 561
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 562
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 564
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_1f

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v4, :cond_1f

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_20

    .line 565
    :cond_1f
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 566
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 567
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 576
    :cond_20
    :goto_b
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x2d

    if-eq v2, v7, :cond_28

    const/16 v7, 0x5f

    if-eq v2, v7, :cond_26

    packed-switch v2, :pswitch_data_8

    packed-switch v2, :pswitch_data_9

    .line 653
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v9, :cond_22

    .line 654
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 655
    invoke-virtual {p0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 656
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 658
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_21

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v4, :cond_21

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_22

    .line 659
    :cond_21
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 660
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 661
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    :cond_22
    if-eqz p1, :cond_23

    const/4 p1, 0x4

    .line 673
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 674
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    const/4 p1, 0x0

    .line 676
    :goto_c
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 585
    :pswitch_2
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mLETTER(Z)V

    .line 587
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_24

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v4, :cond_24

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_20

    .line 588
    :cond_24
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 589
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 590
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_b

    .line 602
    :pswitch_3
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    .line 604
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_25

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v4, :cond_25

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_20

    .line 605
    :cond_25
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 606
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 607
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_b

    .line 632
    :cond_26
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 634
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_27

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v4, :cond_27

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_20

    .line 635
    :cond_27
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 636
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 637
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_b

    .line 617
    :cond_28
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 619
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_29

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v4, :cond_29

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v3, :cond_20

    .line 620
    :cond_29
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 621
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 622
    iget-object v7, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v7, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_b

    .line 404
    :pswitch_4
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 405
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mLETTER(Z)V

    .line 406
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 408
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_2a

    if-eq v2, v4, :cond_2a

    if-eq v2, v3, :cond_2a

    if-eq v2, v10, :cond_1a

    packed-switch v2, :pswitch_data_a

    packed-switch v2, :pswitch_data_b

    .line 431
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 411
    :cond_2a
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 412
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 413
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_8

    .line 441
    :pswitch_5
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 442
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    .line 443
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 445
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_2b

    if-eq v2, v4, :cond_2b

    if-eq v2, v3, :cond_2b

    if-eq v2, v10, :cond_1a

    packed-switch v2, :pswitch_data_c

    packed-switch v2, :pswitch_data_d

    .line 468
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 448
    :cond_2b
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 449
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 450
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_8

    .line 476
    :pswitch_6
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const/16 v11, 0x2f

    .line 477
    invoke-virtual {p0, v11}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 478
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 480
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-eq v2, v5, :cond_2c

    if-eq v2, v4, :cond_2c

    if-eq v2, v3, :cond_2c

    if-eq v2, v10, :cond_1a

    packed-switch v2, :pswitch_data_e

    packed-switch v2, :pswitch_data_f

    .line 503
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 483
    :cond_2c
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 484
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 485
    iget-object v11, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v11, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_0
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
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_1
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

    :pswitch_data_4
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_1
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
    .packed-switch 0x2f
        :pswitch_6
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

    :pswitch_data_7
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

    :pswitch_data_8
    .packed-switch 0x30
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

    :pswitch_data_a
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_1
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

    :pswitch_data_b
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

    :pswitch_data_c
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_1
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

    :pswitch_data_d
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

    :pswitch_data_e
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_1
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

    :pswitch_data_f
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

.method protected final mNEWLINE(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 1315
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v4, 0xd

    if-ne v2, v4, :cond_0

    .line 1324
    invoke-virtual {p0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 1325
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 1326
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->newline()V

    goto :goto_0

    .line 1331
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 1318
    :cond_1
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 1319
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->newline()V

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 1335
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1336
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1338
    :goto_1
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mSPACE(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x20

    .line 1346
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    .line 1348
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 1349
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1351
    :goto_0
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method protected final mSPACING(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 684
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 692
    invoke-virtual {p0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACE(Z)V

    goto :goto_0

    .line 697
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 687
    :cond_1
    invoke-virtual {p0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mNEWLINE(Z)V

    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 701
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 702
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 704
    :goto_1
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mXML_ENCODING_DECL(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 734
    iget-object v1, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v1

    .line 738
    iget-object v2, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    const-string v3, "<?xml"

    .line 739
    invoke-virtual {v0, v3}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 740
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    const/4 v2, 0x1

    .line 742
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x76

    const/16 v5, 0x65

    const/16 v6, 0x20

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/4 v9, 0x0

    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 745
    :cond_1
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 746
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 747
    iget-object v10, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v10, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 761
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    const-string v10, "="

    const/16 v11, 0x3d

    const-string v12, "\'"

    const/16 v13, 0x27

    const/16 v14, 0x22

    if-eq v3, v5, :cond_1b

    if-ne v3, v4, :cond_1a

    .line 764
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    const-string v4, "version"

    .line 765
    invoke-virtual {v0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 766
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 768
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_4

    if-ne v3, v11, :cond_3

    goto :goto_1

    .line 782
    :cond_3
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 771
    :cond_4
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 772
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 773
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 786
    :goto_1
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 787
    invoke-virtual {v0, v10}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 788
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 790
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_6

    if-eq v3, v14, :cond_7

    if-ne v3, v13, :cond_5

    goto :goto_2

    .line 804
    :cond_5
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 793
    :cond_6
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 794
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 795
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 809
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v14, :cond_11

    if-ne v3, v13, :cond_10

    .line 812
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 813
    invoke-virtual {v0, v12}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 814
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 816
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_8

    if-eq v3, v6, :cond_8

    packed-switch v3, :pswitch_data_0

    .line 832
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 819
    :cond_8
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 820
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 821
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 836
    :pswitch_0
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 837
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    .line 838
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 840
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_a

    if-eq v3, v7, :cond_a

    if-eq v3, v6, :cond_a

    if-ne v3, v4, :cond_9

    goto :goto_3

    .line 854
    :cond_9
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 843
    :cond_a
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 844
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 845
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 858
    :goto_3
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 859
    invoke-virtual {v0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 860
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 862
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_b

    if-eq v3, v7, :cond_b

    if-eq v3, v6, :cond_b

    packed-switch v3, :pswitch_data_1

    .line 878
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 865
    :cond_b
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 866
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 867
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 882
    :pswitch_1
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 883
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    .line 884
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 886
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_d

    if-eq v3, v7, :cond_d

    if-eq v3, v6, :cond_d

    if-ne v3, v13, :cond_c

    goto :goto_4

    .line 900
    :cond_c
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 889
    :cond_d
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 890
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 891
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 904
    :goto_4
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 905
    invoke-virtual {v0, v12}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 906
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 908
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_f

    if-eq v3, v7, :cond_f

    if-eq v3, v6, :cond_f

    if-ne v3, v5, :cond_e

    goto/16 :goto_7

    .line 922
    :cond_e
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 911
    :cond_f
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 912
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 913
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_7

    .line 1048
    :cond_10
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 930
    :cond_11
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 931
    invoke-virtual {v0, v14}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 932
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 934
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_12

    if-eq v3, v7, :cond_12

    if-eq v3, v6, :cond_12

    packed-switch v3, :pswitch_data_2

    .line 950
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 937
    :cond_12
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 938
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 939
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 954
    :pswitch_2
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 955
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    .line 956
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 958
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_14

    if-eq v3, v7, :cond_14

    if-eq v3, v6, :cond_14

    if-ne v3, v4, :cond_13

    goto :goto_5

    .line 972
    :cond_13
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 961
    :cond_14
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 962
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 963
    iget-object v15, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v15, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 976
    :goto_5
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 977
    invoke-virtual {v0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 978
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 980
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_15

    if-eq v3, v7, :cond_15

    if-eq v3, v6, :cond_15

    packed-switch v3, :pswitch_data_3

    .line 996
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 983
    :cond_15
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 984
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 985
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1000
    :pswitch_3
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1001
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mDIGIT(Z)V

    .line 1002
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1004
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_17

    if-eq v3, v7, :cond_17

    if-eq v3, v6, :cond_17

    if-ne v3, v14, :cond_16

    goto :goto_6

    .line 1018
    :cond_16
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1007
    :cond_17
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1008
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1009
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1022
    :goto_6
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1023
    invoke-virtual {v0, v14}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 1024
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1026
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_19

    if-eq v3, v7, :cond_19

    if-eq v3, v6, :cond_19

    if-ne v3, v5, :cond_18

    goto :goto_7

    .line 1040
    :cond_18
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1029
    :cond_19
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1030
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1031
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto :goto_7

    .line 1060
    :cond_1a
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1064
    :cond_1b
    :goto_7
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    const-string v4, "encoding"

    .line 1065
    invoke-virtual {v0, v4}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 1066
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1068
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_1d

    if-eq v3, v7, :cond_1d

    if-eq v3, v6, :cond_1d

    if-ne v3, v11, :cond_1c

    goto :goto_8

    .line 1082
    :cond_1c
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1071
    :cond_1d
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1072
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1073
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1086
    :goto_8
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1087
    invoke-virtual {v0, v10}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 1088
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1090
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_1f

    if-eq v3, v7, :cond_1f

    if-eq v3, v6, :cond_1f

    if-eq v3, v14, :cond_20

    if-ne v3, v13, :cond_1e

    goto :goto_9

    .line 1104
    :cond_1e
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1093
    :cond_1f
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1094
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1095
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1109
    :cond_20
    :goto_9
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v14, :cond_26

    if-ne v3, v13, :cond_25

    .line 1112
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1113
    invoke-virtual {v0, v12}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 1114
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1116
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_21

    if-eq v3, v7, :cond_21

    if-eq v3, v6, :cond_21

    packed-switch v3, :pswitch_data_4

    .line 1136
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1119
    :cond_21
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1120
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1121
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1140
    :pswitch_4
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mIDENTIFIER(Z)V

    .line 1142
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_23

    if-eq v3, v7, :cond_23

    if-eq v3, v6, :cond_23

    if-ne v3, v13, :cond_22

    goto :goto_a

    .line 1156
    :cond_22
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1145
    :cond_23
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1146
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1147
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1160
    :goto_a
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1161
    invoke-virtual {v0, v12}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(Ljava/lang/String;)V

    .line 1162
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1164
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_24

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v7, :cond_24

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v6, :cond_2b

    .line 1165
    :cond_24
    iget-object v2, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1166
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1167
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    goto/16 :goto_c

    .line 1242
    :cond_25
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1177
    :cond_26
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1178
    invoke-virtual {v0, v14}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 1179
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1181
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_27

    if-eq v3, v7, :cond_27

    if-eq v3, v6, :cond_27

    packed-switch v3, :pswitch_data_5

    .line 1201
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1184
    :cond_27
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1185
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1186
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1205
    :pswitch_5
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mIDENTIFIER(Z)V

    .line 1207
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_29

    if-eq v3, v7, :cond_29

    if-eq v3, v6, :cond_29

    if-ne v3, v14, :cond_28

    goto :goto_b

    .line 1221
    :cond_28
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getLine()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 1210
    :cond_29
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1211
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1212
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1225
    :goto_b
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    .line 1226
    invoke-virtual {v0, v14}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->match(C)V

    .line 1227
    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4, v3}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 1229
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v8, :cond_2a

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v3

    if-eq v3, v7, :cond_2a

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v2

    if-ne v2, v6, :cond_2b

    .line 1230
    :cond_2a
    iget-object v2, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    .line 1231
    invoke-virtual {v0, v9}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mSPACING(Z)V

    .line 1232
    iget-object v3, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3, v2}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    :cond_2b
    :goto_c
    if-eqz p1, :cond_2c

    const/4 v2, 0x5

    .line 1247
    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object v2

    .line 1248
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v4}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v4

    iget-object v5, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v5}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_d

    :cond_2c
    const/4 v2, 0x0

    .line 1250
    :goto_d
    iput-object v2, v0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

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

    :pswitch_data_3
    .packed-switch 0x30
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

    :pswitch_data_5
    .packed-switch 0x61
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
.end method

.method public nextToken()Lantlr/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->setCommitToPath(Z)V

    .line 54
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->resetText()V

    const/4 v0, 0x1

    .line 57
    :try_start_0
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_0

    sget-object v1, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mMETA_CONTENT_TYPE(Z)V

    .line 59
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    .line 62
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->mXML_ENCODING_DECL(Z)V

    .line 63
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    .line 70
    :goto_1
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->testLiteralsTable(I)I

    move-result v0

    .line 73
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 74
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->_returnToken:Lantlr/Token;

    return-object v0

    .line 67
    :cond_3
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->consume()V
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->getCommitToPath()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;->consume()V

    goto :goto_0

    .line 78
    :cond_4
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_5

    .line 83
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 86
    :cond_5
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
