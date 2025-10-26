.class public Lcom/ibm/icu/impl/StaticUnicodeSets;
.super Ljava/lang/Object;
.source "StaticUnicodeSets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/StaticUnicodeSets$ParseDataSink;,
        Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final unicodeSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/StaticUnicodeSets$Key;",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    .line 233
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->EMPTY:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    const-string v3, "[]"

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    const-string v3, "[[:Zs:][\\u0009][:Bidi_Control:][:Variation_Selector:]]"

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 236
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    const-string v3, "[[:Bidi_Control:]]"

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    .line 242
    invoke-static {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 243
    new-instance v2, Lcom/ibm/icu/impl/StaticUnicodeSets$ParseDataSink;

    invoke-direct {v2}, Lcom/ibm/icu/impl/StaticUnicodeSets$ParseDataSink;-><init>()V

    const-string v3, "parse"

    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 252
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    const-string v2, "[\u066c\u2018\\u0020\\u00A0\\u2000-\\u200A\\u202F\\u205F\\u3000]"

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 254
    sget-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->APOSTROPHE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 255
    sget-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 257
    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets;->computeUnion(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 256
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 259
    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets;->computeUnion(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 258
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->INFINITY_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    const-string v3, "[\u221e]"

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    const-string v3, "[:digit:]"

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/StaticUnicodeSets;->computeUnion(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    sget-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 278
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/StaticUnicodeSets;->computeUnion(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    .line 277
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->saveSet(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    return-void
.end method

.method public static chooseCurrency(Ljava/lang/String;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
    .locals 1

    .line 122
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object p0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object p0

    .line 124
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    sget-object p0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object p0

    .line 126
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    sget-object p0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object p0

    .line 128
    :cond_2
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    sget-object p0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object p0

    .line 130
    :cond_3
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 131
    sget-object p0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static chooseFrom(Ljava/lang/String;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
    .locals 1

    .line 96
    invoke-static {p1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static chooseFrom(Ljava/lang/String;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
    .locals 1

    .line 114
    invoke-static {p1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/ibm/icu/impl/StaticUnicodeSets;->chooseFrom(Ljava/lang/String;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static computeUnion(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 138
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-static {p0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-static {p1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method private static computeUnion(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 142
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-static {p0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-static {p1}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-static {p2}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 79
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSet;

    if-nez p0, :cond_0

    .line 81
    sget-object p0, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-object p0
.end method

.method private static saveSet(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V
    .locals 2

    .line 147
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets;->unicodeSets:Ljava/util/Map;

    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
