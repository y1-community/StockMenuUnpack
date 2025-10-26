.class Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache$1;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache$1;-><init>(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;->cache:Lcom/ibm/icu/impl/CacheBase;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V
    .locals 0

    .line 1150
    invoke-direct {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 2

    .line 1160
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;->cache:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    return-object p1
.end method
