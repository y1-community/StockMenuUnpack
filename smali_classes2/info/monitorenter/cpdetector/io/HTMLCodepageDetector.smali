.class public Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "HTMLCodepageDetector.java"


# instance fields
.field private delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 90
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 91
    new-instance v0, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-direct {v0, p1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 100
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1, p2}, Linfo/monitorenter/cpdetector/io/ParsingDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method public detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 132
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
