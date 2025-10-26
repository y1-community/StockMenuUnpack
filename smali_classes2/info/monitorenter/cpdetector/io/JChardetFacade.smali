.class public final Linfo/monitorenter/cpdetector/io/JChardetFacade;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "JChardetFacade.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# static fields
.field private static det:Lorg/mozilla/intl/chardet/nsDetector;

.field private static instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;


# instance fields
.field private amountOfVerifiers:I

.field private buf:[B

.field private codpage:Ljava/nio/charset/Charset;

.field private m_guessing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 87
    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->amountOfVerifiers:I

    .line 100
    new-instance v1, Lorg/mozilla/intl/chardet/nsDetector;

    invoke-direct {v1, v0}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    sput-object v1, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Lorg/mozilla/intl/chardet/nsDetector;

    .line 101
    invoke-virtual {v1, p0}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 102
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->amountOfVerifiers:I

    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;
    .locals 1

    .line 106
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/JChardetFacade;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    .line 109
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    return-object v0
.end method

.method private guess()Ljava/nio/charset/Charset;
    .locals 4

    .line 151
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object v0

    .line 156
    array-length v1, v0

    iget v2, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->amountOfVerifiers:I

    if-ne v1, v2, :cond_0

    const-string v0, "US-ASCII"

    .line 157
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 160
    aget-object v2, v0, v1

    const-string v3, "nomatch"

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 164
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 166
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    aget-object v2, v0, v1

    invoke-static {v2}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_2
    return-object v0
.end method


# virtual methods
.method public Notify(Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    return-void
.end method

.method public Reset()V
    .locals 1

    .line 186
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsDetector;->Reset()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    return-void
.end method

.method public declared-synchronized detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->Reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    :cond_0
    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    array-length v4, v3

    sub-int v5, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_1

    add-int/2addr v1, v3

    :cond_1
    if-nez v2, :cond_2

    .line 130
    sget-object v2, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Lorg/mozilla/intl/chardet/nsDetector;

    iget-object v4, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    invoke-virtual {v2, v4, v3, v0}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v2

    :cond_2
    if-lez v3, :cond_3

    if-eqz v2, :cond_0

    .line 132
    :cond_3
    sget-object p1, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {p1}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 133
    iget-object p1, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    if-nez p1, :cond_5

    .line 134
    iget-boolean p1, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z

    if-eqz p1, :cond_4

    .line 135
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->guess()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_5
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public isGuessing()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z

    return v0
.end method

.method public declared-synchronized setGuessing(Z)V
    .locals 0

    monitor-enter p0

    .line 224
    :try_start_0
    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
