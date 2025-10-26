.class Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache$1;->this$0:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;

    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 0

    .line 1155
    new-instance p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;

    invoke-direct {p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;-><init>(Lcom/ibm/icu/util/ULocale;)V

    invoke-virtual {p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;->load()Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1152
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object p1

    return-object p1
.end method
