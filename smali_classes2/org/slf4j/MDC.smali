.class public Lorg/slf4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static final NO_STATIC_MDC_BINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#no_static_mdc_binder"

.field static final NULL_MDCA_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_MDCA"

.field static mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticMDCBinder;->SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;

    move-result-object v0

    sput-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MDC binding unsuccessful."

    .line 87
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 75
    new-instance v1, Lorg/slf4j/helpers/NOPMDCAdapter;

    invoke-direct {v1}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    sput-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 76
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "org/slf4j/impl/StaticMDCBinder"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v0, "Failed to load class \"org.slf4j.impl.StaticMDCBinder\"."

    .line 78
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation MDCAdapter implementation."

    .line 79
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#no_static_mdc_binder for further details."

    .line 80
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 83
    :cond_0
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .line 163
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->clear()V

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 131
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p0}, Lorg/slf4j/spi/MDCAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key parameter cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCopyOfContextMap()Ljava/util/Map;
    .locals 2

    .line 178
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .line 209
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 108
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0, p1}, Lorg/slf4j/spi/MDCAdapter;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 152
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p0}, Lorg/slf4j/spi/MDCAdapter;->remove(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "key parameter cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContextMap(Ljava/util/Map;)V
    .locals 1

    .line 195
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p0}, Lorg/slf4j/spi/MDCAdapter;->setContextMap(Ljava/util/Map;)V

    return-void

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
