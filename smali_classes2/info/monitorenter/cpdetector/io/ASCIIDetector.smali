.class public final Linfo/monitorenter/cpdetector/io/ASCIIDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "ASCIIDetector.java"


# static fields
.field private static instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;
    .locals 1

    .line 105
    sget-object v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    .line 108
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    return-object v0
.end method


# virtual methods
.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object p2

    .line 118
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 123
    :cond_0
    invoke-static {p1}, Linfo/monitorenter/util/FileUtil;->isAllASCII(Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "US-ASCII"

    .line 124
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    :cond_1
    return-object p2
.end method
