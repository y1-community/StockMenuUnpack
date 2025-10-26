.class public Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
.super Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
.source "ResourceBasedPeriodFormatterDataService.java"


# static fields
.field private static final PATH:Ljava/lang/String; = "data/"

.field private static final singleton:Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;


# instance fields
.field private availableLocales:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;",
            ">;"
        }
    .end annotation
.end field

.field private lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

.field private lastLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    invoke-direct {v0}, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    .line 39
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "data/index.txt"

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 62
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :catch_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 74
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Error reading data/index.txt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    :catch_2
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static getInstance()Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .locals 1

    .line 51
    sget-object v0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;
    .locals 6

    const/16 v0, 0x40

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 90
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    monitor-exit p0

    return-object p1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    if-nez v0, :cond_7

    move-object v3, p1

    .line 101
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "_"

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_2

    .line 104
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v4, "test"

    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "test"

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_6

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/pfd_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 117
    new-instance v4, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;

    invoke-direct {v4, v2}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/duration/impl/DataRecord;->read(Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/RecordReader;)Lcom/ibm/icu/impl/duration/impl/DataRecord;

    move-result-object v3

    .line 118
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    if-eqz v3, :cond_5

    .line 129
    new-instance v0, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    invoke-direct {v0, p1, v3}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/DataRecord;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    .line 135
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close() resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 132
    :catch_1
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled encoding for resource "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_6
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration data not found for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data/"

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_7
    :goto_1
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    .line 150
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    .line 152
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 153
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getAvailableLocales()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-object v0
.end method
