.class public Lcom/ibm/icu/util/LocalePriorityList;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/LocalePriorityList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final D1:Ljava/lang/Double;

.field private static final languageSplitter:Ljava/util/regex/Pattern;

.field private static myDescendingDouble:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final weightSplitter:Ljava/util/regex/Pattern;


# instance fields
.field private final languagesAndWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    const-string v0, "\\s*,\\s*"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    const-string v0, "\\s*(\\S*)\\s*;\\s*q\\s*=\\s*(\\S*)"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    .line 415
    new-instance v0, Lcom/ibm/icu/util/LocalePriorityList$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/LocalePriorityList$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/ibm/icu/util/LocalePriorityList$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/util/LocalePriorityList;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/Comparator;
    .locals 1

    .line 73
    sget-object v0, Lcom/ibm/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Double;
    .locals 1

    .line 73
    sget-object v0, Lcom/ibm/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .locals 1

    .line 73
    sget-object v0, Lcom/ibm/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .locals 1

    .line 73
    sget-object v0, Lcom/ibm/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static add(Lcom/ibm/icu/util/LocalePriorityList;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 2

    .line 114
    new-instance v0, Lcom/ibm/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;-><init>(Lcom/ibm/icu/util/LocalePriorityList;Lcom/ibm/icu/util/LocalePriorityList$1;)V

    return-object v0
.end method

.method public static add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 2

    .line 103
    new-instance v0, Lcom/ibm/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;-><init>(Lcom/ibm/icu/util/LocalePriorityList$1;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 2

    .line 125
    new-instance v0, Lcom/ibm/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;-><init>(Lcom/ibm/icu/util/LocalePriorityList$1;)V

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs add([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 2

    .line 89
    new-instance v0, Lcom/ibm/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;-><init>(Lcom/ibm/icu/util/LocalePriorityList$1;)V

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 194
    :cond_1
    :try_start_0
    check-cast p1, Lcom/ibm/icu/util/LocalePriorityList;

    .line 195
    iget-object v1, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    iget-object p1, p1, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public getULocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getWeight(Lcom/ibm/icu/util/ULocale;)Ljava/lang/Double;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/ibm/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/ULocale;

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ", "

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_0

    const-string v2, ";q="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
