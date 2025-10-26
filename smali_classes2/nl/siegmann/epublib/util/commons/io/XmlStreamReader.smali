.class public Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;
.super Ljava/io/Reader;
.source "XmlStreamReader.java"


# static fields
.field private static final BOMS:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final EBCDIC:Ljava/lang/String; = "CP1047"

.field public static final ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_EX_1:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

.field private static final HTTP_EX_2:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

.field private static final HTTP_EX_3:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

.field private static final RAW_EX_1:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

.field private static final RAW_EX_2:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final UTF_16:Ljava/lang/String; = "UTF-16"

.field private static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field private static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final XML_GUESS_BYTES:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;

.field private final reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 81
    sget-object v2, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_8:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_16BE:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_16LE:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->BOMS:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x4

    new-array v2, v1, [Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 86
    new-instance v6, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    const-string v8, "UTF-8"

    invoke-direct {v6, v8, v7}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v6, v2, v3

    new-instance v3, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    new-array v6, v1, [I

    fill-array-data v6, :array_1

    const-string v7, "UTF-16BE"

    invoke-direct {v3, v7, v6}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v3, v2, v4

    new-instance v3, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    const-string v6, "UTF-16LE"

    invoke-direct {v3, v6, v4}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v3, v2, v5

    new-instance v3, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const-string v4, "CP1047"

    invoke-direct {v3, v4, v1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v3, v2, v0

    sput-object v2, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->XML_GUESS_BYTES:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const-string v0, "charset=[\"\']?([.[^; \"\']]*)[\"\']?"

    .line 625
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    const/16 v1, 0x8

    .line 648
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x3c
        0x3f
        0x78
        0x6d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3c
        0x0
        0x3f
    .end array-data

    :array_2
    .array-data 4
        0x3c
        0x0
        0x3f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x4c
        0x6f
        0xa7
        0x94
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, p1, p2, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, p1, p2, p3, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 323
    iput-object p4, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 324
    new-instance p4, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object p1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->BOMS:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1, p1}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    .line 325
    new-instance p1, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;

    sget-object v0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->XML_GUESS_BYTES:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x1

    invoke-direct {p1, p4, v1, v0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    .line 326
    invoke-direct {p0, p4, p1, p2, p3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->doHttpStream(Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 327
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p3, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 203
    iput-object p3, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 204
    new-instance p3, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object p1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->BOMS:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, p1}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    .line 205
    new-instance p1, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;

    sget-object v0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->XML_GUESS_BYTES:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x1

    invoke-direct {p1, p3, v1, v0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    .line 206
    invoke-direct {p0, p3, p1, p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->doRawStream(Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 207
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p3, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 251
    iput-object p2, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 255
    new-instance v1, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->BOMS:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    .line 256
    new-instance v0, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;

    sget-object v2, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->XML_GUESS_BYTES:[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;)V

    .line 257
    instance-of p1, p1, Ljava/net/HttpURLConnection;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-direct {p0, v1, v0, v3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->doRawStream(Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-direct {p0, v1, v0, p2, v3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->doHttpStream(Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 262
    :goto_1
    new-instance p1, Ljava/io/InputStreamReader;

    iget-object p2, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p1, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method private doHttpStream(Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-static {p2, v3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move v5, p4

    .line 443
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz p4, :cond_0

    .line 447
    invoke-direct {p0, p3, p1}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 449
    :cond_0
    throw p1
.end method

.method private doLenientDetection(Ljava/lang/String;Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "text/html"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    :try_start_0
    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->getBomEncoding()Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->getXmlGuessEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    .line 469
    invoke-virtual/range {v2 .. v7}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object p2, p1

    .line 475
    :cond_0
    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 477
    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->getContentTypeEncoding()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 480
    iget-object p1, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "UTF-8"

    :cond_2
    return-object p1
.end method

.method private doRawStream(Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Lnl/siegmann/epublib/util/commons/io/BOMInputStream;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p2}, Lnl/siegmann/epublib/util/commons/io/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {p2, v0}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 416
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 419
    invoke-direct {p0, p2, p1}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 421
    :cond_0
    throw p1
.end method

.method static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, ";"

    .line 637
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 639
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 640
    sget-object v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 642
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, ";"

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 619
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 665
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v3, 0x0

    .line 668
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    move-object v8, v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v9, 0x1000

    :goto_0
    if-eq v4, v5, :cond_0

    if-ne v6, v5, :cond_0

    if-ge v7, v1, :cond_0

    add-int/2addr v7, v4

    sub-int/2addr v9, v4

    .line 674
    invoke-virtual {p0, v2, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 675
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v3, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v6, 0x3e

    .line 676
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    goto :goto_0

    :cond_0
    if-ne v6, v5, :cond_2

    if-ne v4, v5, :cond_1

    .line 680
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of XML stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 682
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XML prolog or ROOT element not found on first "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-lez v7, :cond_4

    .line 689
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 690
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/StringReader;

    const/4 v1, 0x1

    add-int/2addr v6, v1

    .line 691
    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 695
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 698
    :cond_3
    sget-object p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 700
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method static isAppXml(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "application/xml"

    .line 717
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-dtd"

    .line 718
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/xml-external-parsed-entity"

    .line 719
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/"

    .line 720
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isTextXml(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "text/xml"

    .line 732
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/xml-external-parsed-entity"

    .line 733
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/"

    .line 734
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    return-object p4

    .line 563
    :cond_0
    invoke-static {p1}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-static {p1}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-static {v2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->isAppXml(Ljava/lang/String;)Z

    move-result p1

    .line 566
    invoke-static {v2}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->isTextXml(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez p1, :cond_2

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v2, p1, v6

    aput-object v3, p1, v5

    aput-object p2, p1, v4

    aput-object p3, p1, v1

    aput-object p4, p1, v0

    const-string p5, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

    .line 570
    invoke-static {p5, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 571
    new-instance p1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez v3, :cond_5

    if-eqz p1, :cond_3

    .line 577
    invoke-virtual {p0, p2, p3, p4}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 579
    :cond_3
    iget-object p1, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "US-ASCII"

    :cond_4
    return-object p1

    :cond_5
    const-string p1, "UTF-16BE"

    .line 584
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "UTF-16LE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "UTF-16"

    .line 593
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_8

    if-eqz p2, :cond_7

    .line 594
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p2

    :cond_7
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v2, p1, v6

    aput-object v3, p1, v5

    aput-object p2, p1, v4

    aput-object p3, p1, v1

    aput-object p4, p1, v0

    const-string p5, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    .line 597
    invoke-static {p5, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 598
    new-instance p1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object v3

    :cond_9
    :goto_1
    if-nez p2, :cond_a

    return-object v3

    :cond_a
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v2, p1, v6

    aput-object v3, p1, v5

    aput-object p2, p1, v4

    aput-object p3, p1, v1

    aput-object p4, p1, v0

    const-string p5, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    .line 586
    invoke-static {p5, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 587
    new-instance p1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    move-object v0, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-16"

    const-string v1, "UTF-16LE"

    const-string v2, "UTF-16BE"

    const-string v3, "UTF-8"

    if-nez p1, :cond_5

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 503
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-object p2

    :cond_2
    return-object p3

    .line 500
    :cond_3
    :goto_0
    iget-object p1, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, p1

    :goto_1
    return-object v3

    .line 510
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v4, :cond_a

    if-eqz p2, :cond_7

    .line 511
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    .line 512
    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 513
    new-instance v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    if-eqz p3, :cond_9

    .line 515
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    .line 516
    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    return-object p1

    .line 523
    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    const-string v1, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

    .line 536
    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 537
    new-instance v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_4
    if-eqz p2, :cond_e

    .line 524
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    .line 525
    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_5
    if-eqz p3, :cond_10

    .line 528
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v8

    aput-object p2, v0, v7

    aput-object p3, v0, v6

    .line 529
    invoke-static {v5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;

    invoke-direct {v1, v0, p1, p2, p3}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_6
    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1
.end method
