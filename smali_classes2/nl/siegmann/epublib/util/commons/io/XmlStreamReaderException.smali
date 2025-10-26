.class public Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;
.super Ljava/io/IOException;
.source "XmlStreamReaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bomEncoding:Ljava/lang/String;

.field private final contentTypeEncoding:Ljava/lang/String;

.field private final contentTypeMime:Ljava/lang/String;

.field private final xmlEncoding:Ljava/lang/String;

.field private final xmlGuessEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 63
    invoke-direct/range {v0 .. v6}, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p2, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBomEncoding()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeEncoding()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeMime()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlGuessEncoding()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;

    return-object v0
.end method
