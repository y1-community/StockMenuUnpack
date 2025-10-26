.class Lcom/ibm/icu/impl/ICUService$LocaleRef;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleRef"
.end annotation


# instance fields
.field private com:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dnCache:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->locale:Lcom/ibm/icu/util/ULocale;

    .line 736
    iput-object p3, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    .line 737
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->dnCache:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method get(Lcom/ibm/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->dnCache:Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 743
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->locale:Lcom/ibm/icu/util/ULocale;

    .line 744
    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ibm/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    .line 745
    invoke-interface {p1, p2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
