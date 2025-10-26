.class public Linfo/monitorenter/cpdetector/io/UnsupportedCharset;
.super Ljava/nio/charset/Charset;
.source "UnsupportedCharset.java"


# static fields
.field private static singletons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->singletons:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string p1, "unsupported"

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2

    .line 94
    sget-object v0, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->singletons:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;

    invoke-direct {v0, p0}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v1, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->singletons:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p1, p0, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->m_name:Ljava/lang/String;

    return-object p1
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is no real Charset but a flag you should test for!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is no real Charset but a flag you should test for!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
