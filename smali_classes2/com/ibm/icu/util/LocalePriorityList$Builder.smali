.class public Lcom/ibm/icu/util/LocalePriorityList$Builder;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocalePriorityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private built:Lcom/ibm/icu/util/LocalePriorityList;

.field private hasWeights:Z

.field private languageToWeight:Ljava/util/Map;
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
    .locals 1

    .line 221
    const-class v0, Lcom/ibm/icu/util/LocalePriorityList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/LocalePriorityList$1;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/ibm/icu/util/LocalePriorityList$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/LocalePriorityList;)V
    .locals 5

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 242
    iput-object p1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->built:Lcom/ibm/icu/util/LocalePriorityList;

    .line 243
    invoke-static {p1}, Lcom/ibm/icu/util/LocalePriorityList;->access$200(Lcom/ibm/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/LocalePriorityList;Lcom/ibm/icu/util/LocalePriorityList$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;-><init>(Lcom/ibm/icu/util/LocalePriorityList;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/util/LocalePriorityList;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 4

    .line 324
    invoke-static {p1}, Lcom/ibm/icu/util/LocalePriorityList;->access$200(Lcom/ibm/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public add(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 338
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->built:Lcom/ibm/icu/util/LocalePriorityList;

    invoke-static {v1}, Lcom/ibm/icu/util/LocalePriorityList;->access$200(Lcom/ibm/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->built:Lcom/ibm/icu/util/LocalePriorityList;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_2

    return-object p0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_3

    .line 379
    invoke-static {}, Lcom/ibm/icu/util/LocalePriorityList;->access$400()Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    .line 382
    iput-boolean p3, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    .line 384
    :goto_0
    iget-object p3, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 9

    .line 396
    invoke-static {}, Lcom/ibm/icu/util/LocalePriorityList;->access$600()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-static {}, Lcom/ibm/icu/util/LocalePriorityList;->access$700()Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 398
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 399
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    new-instance v3, Lcom/ibm/icu/util/ULocale;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 401
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v6, v4

    if-gtz v8, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    .line 406
    invoke-virtual {p0, v3, v4, v5}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    goto :goto_1

    .line 403
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal weight, must be 0..1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 408
    new-instance v4, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v4, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public varargs add([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocalePriorityList$Builder;
    .locals 5

    .line 349
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 350
    invoke-virtual {p0, v2, v3, v4}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->add(Lcom/ibm/icu/util/ULocale;D)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/ibm/icu/util/LocalePriorityList;
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->build(Z)Lcom/ibm/icu/util/LocalePriorityList;

    move-result-object v0

    return-object v0
.end method

.method public build(Z)Lcom/ibm/icu/util/LocalePriorityList;
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->built:Lcom/ibm/icu/util/LocalePriorityList;

    if-eqz v0, :cond_0

    return-object v0

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    if-eqz v0, :cond_8

    .line 280
    new-instance v0, Ljava/util/TreeMap;

    .line 281
    invoke-static {}, Lcom/ibm/icu/util/LocalePriorityList;->access$300()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 282
    iget-object v1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/ULocale;

    .line 284
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    .line 287
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 295
    iget-object p1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 296
    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_9

    :cond_3
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->hasWeights:Z

    goto :goto_3

    .line 300
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 301
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz p1, :cond_6

    .line 302
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ibm/icu/util/LocalePriorityList;->access$400()Ljava/lang/Double;

    move-result-object v3

    .line 303
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/ULocale;

    .line 304
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object p1, v1

    goto :goto_3

    .line 310
    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    :cond_9
    :goto_3
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    .line 313
    new-instance v1, Lcom/ibm/icu/util/LocalePriorityList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ibm/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;Lcom/ibm/icu/util/LocalePriorityList$1;)V

    iput-object v1, p0, Lcom/ibm/icu/util/LocalePriorityList$Builder;->built:Lcom/ibm/icu/util/LocalePriorityList;

    return-object v1
.end method
