.class public final Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "CodepageDetectorProxy.java"


# static fields
.field private static instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;


# instance fields
.field private detectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/monitorenter/cpdetector/io/ICodepageDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;
    .locals 1

    .line 105
    sget-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    .line 108
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    return-object v0
.end method


# virtual methods
.method public add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-interface {v0, p1, p2}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 208
    instance-of v2, v0, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "More than the given length had to be read and the given stream could not be reset. Undetermined state for this detection."

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw p2

    :cond_1
    return-object v0

    .line 187
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The given input stream ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has to support for marking."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-interface {v1, p1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 138
    instance-of v2, v1, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 227
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ") "

    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v3, v2

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
