.class public Lantlr/ANTLRTokdefLexer;
.super Lantlr/CharScanner;
.source "ANTLRTokdefLexer.java"

# interfaces
.implements Lantlr/ANTLRTokdefParserTokenTypes;
.implements Lantlr/TokenStream;


# static fields
.field public static final _tokenSet_0:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_1:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_2:Lantlr/collections/impl/BitSet;

.field public static final _tokenSet_3:Lantlr/collections/impl/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 640
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRTokdefLexer;->mk_tokenSet_0()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRTokdefLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    .line 647
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRTokdefLexer;->mk_tokenSet_1()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRTokdefLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    .line 654
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRTokdefLexer;->mk_tokenSet_2()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRTokdefLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    .line 662
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-static {}, Lantlr/ANTLRTokdefLexer;->mk_tokenSet_3()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/collections/impl/BitSet;-><init>([J)V

    sput-object v0, Lantlr/ANTLRTokdefLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 36
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    invoke-direct {p0, v0}, Lantlr/ANTLRTokdefLexer;-><init>(Lantlr/LexerSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lantlr/CharScanner;-><init>(Lantlr/LexerSharedInputState;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lantlr/ANTLRTokdefLexer;->caseSensitiveLiterals:Z

    .line 41
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->setCaseSensitive(Z)V

    .line 42
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->literals:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 30
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/ANTLRTokdefLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 33
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/ANTLRTokdefLexer;-><init>(Lantlr/InputBuffer;)V

    return-void
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

    .line 637
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

    const-wide v2, -0x800000000008L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 644
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

    const-wide v2, -0x40000000408L

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 651
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

    .line 659
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final mASSIGN(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x3d

    .line 316
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 318
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 319
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 321
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

    .line 471
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 475
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 477
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 478
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 480
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

    .line 354
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 358
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    const/4 v2, 0x1

    .line 360
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

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

    const/16 v1, 0x75

    const/4 v4, 0x0

    if-eq v3, v1, :cond_6

    const/16 v1, 0x39

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x3

    packed-switch v3, :pswitch_data_0

    .line 459
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v3, 0x34

    const/16 v9, 0x37

    .line 433
    invoke-virtual {p0, v3, v9}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    .line 436
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_0

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_0

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_0

    .line 437
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_1

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_1

    goto/16 :goto_0

    .line 442
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_1
    const/16 v3, 0x33

    .line 404
    invoke-virtual {p0, v5, v3}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    .line 407
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_4

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_4

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-lt v3, v8, :cond_4

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-gt v3, v7, :cond_4

    .line 408
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mDIGIT(Z)V

    .line 410
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    if-gt v3, v1, :cond_2

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_2

    invoke-virtual {p0, v6}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_2

    .line 411
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mDIGIT(Z)V

    goto/16 :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_3

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_3

    goto :goto_0

    .line 416
    :cond_3
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 421
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-gt v1, v7, :cond_5

    goto :goto_0

    .line 424
    :cond_5
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 450
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 451
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mXDIGIT(Z)V

    .line 452
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mXDIGIT(Z)V

    .line 453
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mXDIGIT(Z)V

    .line 454
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->mXDIGIT(Z)V

    goto :goto_0

    .line 373
    :cond_7
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 368
    :cond_8
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 363
    :cond_9
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 383
    :cond_a
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 378
    :cond_b
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 398
    :cond_c
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 393
    :cond_d
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 388
    :cond_e
    invoke-virtual {p0, v4}, Lantlr/ANTLRTokdefLexer;->match(C)V

    :goto_0
    if-eqz p1, :cond_f

    const/16 p1, 0xd

    .line 464
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 465
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const/4 p1, 0x0

    .line 467
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

.method public final mID(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 551
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 535
    :pswitch_0
    invoke-virtual {p0, v4, v3}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    goto :goto_0

    .line 546
    :pswitch_1
    invoke-virtual {p0, v6, v5}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    .line 558
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v2

    const/16 v7, 0x5f

    if-eq v2, v7, :cond_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 601
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 602
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 604
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 567
    :pswitch_2
    invoke-virtual {p0, v4, v3}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    goto :goto_0

    .line 578
    :pswitch_3
    invoke-virtual {p0, v6, v5}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x30

    const/16 v7, 0x39

    .line 590
    invoke-virtual {p0, v2, v7}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p0, v7}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

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

.method public final mINT(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 616
    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    .line 617
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->mDIGIT(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    .line 627
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 628
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 630
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    return-void

    .line 620
    :cond_2
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
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

    .line 286
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x28

    .line 290
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 292
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 293
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 295
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mML_COMMENT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    const-string v0, "/*"

    .line 255
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->match(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    sget-object v1, Lantlr/ANTLRTokdefLexer;->_tokenSet_1:Lantlr/collections/impl/BitSet;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    const/16 v0, 0x2f

    .line 261
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->matchNot(C)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 264
    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 265
    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->newline()V

    goto :goto_0

    .line 267
    :cond_1
    sget-object v1, Lantlr/ANTLRTokdefLexer;->_tokenSet_2:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {v1, v0}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->matchNot(C)V

    goto :goto_0

    :cond_2
    const-string v0, "*/"

    .line 276
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->match(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

    .line 299
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x29

    .line 303
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 305
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 306
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 308
    :goto_0
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSL_COMMENT(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    const-string v0, "//"

    .line 201
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->match(Ljava/lang/String;)V

    .line 205
    :goto_0
    sget-object v0, Lantlr/ANTLRTokdefLexer;->_tokenSet_0:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->match(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    .line 225
    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 227
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 228
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_1

    .line 238
    :cond_1
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 220
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 242
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->newline()V

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    return-void
.end method

.method public final mSTRING(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/RecognitionException;,
            Lantlr/CharStreamException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/16 v1, 0x22

    .line 329
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    :goto_0
    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 334
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->mESC(Z)V

    goto :goto_0

    .line 336
    :cond_0
    sget-object v3, Lantlr/ANTLRTokdefLexer;->_tokenSet_3:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->matchNot(C)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->match(C)V

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    .line 347
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 348
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 350
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

    .line 146
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v3, 0xd

    if-eq v1, v3, :cond_1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    .line 164
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 166
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 173
    :cond_2
    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->newline()V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    .line 179
    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->newline()V

    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->match(C)V

    :goto_0
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

    .line 484
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    .line 488
    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 510
    new-instance p1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v1}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw p1

    :pswitch_0
    const/16 v1, 0x61

    const/16 v2, 0x66

    .line 499
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x41

    const/16 v2, 0x46

    .line 505
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 493
    invoke-virtual {p0, v1, v2}, Lantlr/ANTLRTokdefLexer;->matchRange(CC)V

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 514
    invoke-virtual {p0, p1}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object p1

    .line 515
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v2

    iget-object v3, p0, Lantlr/ANTLRTokdefLexer;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v3}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v1}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 517
    :goto_1
    iput-object p1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

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

    .line 51
    :goto_0
    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->resetText()V

    const/4 v0, 0x1

    .line 54
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    const/16 v2, 0x22

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_5

    const/16 v2, 0x28

    if-eq v1, v2, :cond_4

    const/16 v2, 0x29

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 112
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mSL_COMMENT(Z)V

    .line 114
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mML_COMMENT(Z)V

    .line 118
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->uponEOF()V

    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->makeToken(I)Lantlr/Token;

    move-result-object v0

    iput-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 122
    :cond_2
    new-instance v1, Lantlr/NoViableAltForCharException;

    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->LA(I)C

    move-result v0

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getLine()I

    move-result v3

    invoke-virtual {p0}, Lantlr/ANTLRTokdefLexer;->getColumn()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    throw v1

    .line 99
    :pswitch_0
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mID(Z)V

    .line 100
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 107
    :pswitch_1
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mINT(Z)V

    .line 108
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mRPAREN(Z)V

    .line 70
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mLPAREN(Z)V

    .line 64
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mASSIGN(Z)V

    .line 76
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 81
    :cond_6
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mSTRING(Z)V

    .line 82
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    goto :goto_1

    .line 57
    :cond_7
    invoke-virtual {p0, v0}, Lantlr/ANTLRTokdefLexer;->mWS(Z)V

    .line 58
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    .line 125
    :goto_1
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 126
    :cond_8
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getType()I

    move-result v0

    .line 127
    iget-object v1, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;

    invoke-virtual {v1, v0}, Lantlr/Token;->setType(I)V

    .line 128
    iget-object v0, p0, Lantlr/ANTLRTokdefLexer;->_returnToken:Lantlr/Token;
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 131
    :try_start_1
    new-instance v1, Lantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamRecognitionException;-><init>(Lantlr/RecognitionException;)V

    throw v1
    :try_end_1
    .catch Lantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_2
    instance-of v1, v0, Lantlr/CharStreamIOException;

    if-eqz v1, :cond_9

    .line 136
    new-instance v1, Lantlr/TokenStreamIOException;

    check-cast v0, Lantlr/CharStreamIOException;

    iget-object v0, v0, Lantlr/CharStreamIOException;->io:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 139
    :cond_9
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
