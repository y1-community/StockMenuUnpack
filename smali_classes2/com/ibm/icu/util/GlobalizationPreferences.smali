.class public Lcom/ibm/icu/util/GlobalizationPreferences;
.super Ljava/lang/Object;
.source "GlobalizationPreferences.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/util/GlobalizationPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final BI_CHARACTER:I = 0x0

.field private static final BI_LIMIT:I = 0x5

.field public static final BI_LINE:I = 0x2

.field public static final BI_SENTENCE:I = 0x3

.field public static final BI_TITLE:I = 0x4

.field public static final BI_WORD:I = 0x1

.field public static final DF_FULL:I = 0x0

.field private static final DF_LIMIT:I = 0x5

.field public static final DF_LONG:I = 0x1

.field public static final DF_MEDIUM:I = 0x2

.field public static final DF_NONE:I = 0x4

.field public static final DF_SHORT:I = 0x3

.field public static final ID_CURRENCY:I = 0x7

.field public static final ID_CURRENCY_SYMBOL:I = 0x8

.field public static final ID_KEYWORD:I = 0x5

.field public static final ID_KEYWORD_VALUE:I = 0x6

.field public static final ID_LANGUAGE:I = 0x1

.field public static final ID_LOCALE:I = 0x0

.field public static final ID_SCRIPT:I = 0x2

.field public static final ID_TERRITORY:I = 0x3

.field public static final ID_TIMEZONE:I = 0x9

.field public static final ID_VARIANT:I = 0x4

.field public static final NF_CURRENCY:I = 0x1

.field public static final NF_INTEGER:I = 0x4

.field private static final NF_LIMIT:I = 0x5

.field public static final NF_NUMBER:I = 0x0

.field public static final NF_PERCENT:I = 0x2

.field public static final NF_SCIENTIFIC:I = 0x3

.field private static final TYPE_BREAKITERATOR:I = 0x5

.field private static final TYPE_CALENDAR:I = 0x1

.field private static final TYPE_COLLATOR:I = 0x4

.field private static final TYPE_DATEFORMAT:I = 0x2

.field private static final TYPE_GENERIC:I = 0x0

.field private static final TYPE_LIMIT:I = 0x6

.field private static final TYPE_NUMBERFORMAT:I = 0x3

.field private static final available_locales:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final language_territory_hack:[[Ljava/lang/String;

.field private static final language_territory_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final territory_tzid_hack:[[Ljava/lang/String;

.field static final territory_tzid_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private breakIterators:[Lcom/ibm/icu/text/BreakIterator;

.field private calendar:Lcom/ibm/icu/util/Calendar;

.field private collator:Lcom/ibm/icu/text/Collator;

.field private currency:Lcom/ibm/icu/util/Currency;

.field private dateFormats:[[Lcom/ibm/icu/text/DateFormat;

.field private volatile frozen:Z

.field private implicitLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private numberFormats:[Lcom/ibm/icu/text/NumberFormat;

.field private territory:Ljava/lang/String;

.field private timezone:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    .line 1175
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getAvailableLocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1176
    :goto_0
    array-length v3, v0

    const/4 v4, 0x6

    if-ge v2, v3, :cond_0

    .line 1177
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1178
    sget-object v4, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1182
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/Calendar;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x0

    .line 1183
    :goto_1
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v3, v5, :cond_2

    .line 1184
    sget-object v5, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v7, v2, v3

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    if-nez v7, :cond_1

    .line 1186
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1187
    aget-object v8, v0, v3

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_1
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1192
    :cond_2
    invoke-static {}, Lcom/ibm/icu/text/DateFormat;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x0

    .line 1193
    :goto_2
    array-length v5, v2

    const/4 v7, 0x2

    if-ge v3, v5, :cond_4

    .line 1194
    sget-object v5, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v8, v2, v3

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    if-nez v8, :cond_3

    .line 1196
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1197
    aget-object v9, v0, v3

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    :cond_3
    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1202
    :cond_4
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x0

    .line 1203
    :goto_3
    array-length v5, v2

    const/4 v8, 0x3

    if-ge v3, v5, :cond_6

    .line 1204
    sget-object v5, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v2, v3

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    if-nez v9, :cond_5

    .line 1206
    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1207
    aget-object v10, v0, v3

    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_5
    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1212
    :cond_6
    invoke-static {}, Lcom/ibm/icu/text/Collator;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x0

    .line 1213
    :goto_4
    array-length v5, v2

    const/4 v9, 0x4

    if-ge v3, v5, :cond_8

    .line 1214
    sget-object v5, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v2, v3

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/BitSet;

    if-nez v10, :cond_7

    .line 1216
    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 1217
    aget-object v11, v0, v3

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_7
    invoke-virtual {v10, v9}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1222
    :cond_8
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v2, 0x0

    .line 1223
    :goto_5
    array-length v3, v0

    const/4 v5, 0x5

    if-ge v2, v3, :cond_9

    .line 1224
    sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v10, v0, v2

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    .line 1225
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1232
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    const/16 v0, 0x9a

    new-array v0, v0, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "af"

    aput-object v3, v2, v1

    const-string v3, "ZA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v10, "am"

    aput-object v10, v2, v1

    const-string v10, "ET"

    aput-object v10, v2, v6

    aput-object v2, v0, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v11, "ar"

    aput-object v11, v2, v1

    const-string v11, "SA"

    aput-object v11, v2, v6

    aput-object v2, v0, v7

    new-array v2, v7, [Ljava/lang/String;

    const-string v11, "as"

    aput-object v11, v2, v1

    const-string v11, "IN"

    aput-object v11, v2, v6

    aput-object v2, v0, v8

    new-array v2, v7, [Ljava/lang/String;

    const-string v12, "ay"

    aput-object v12, v2, v1

    const-string v12, "PE"

    aput-object v12, v2, v6

    aput-object v2, v0, v9

    new-array v2, v7, [Ljava/lang/String;

    const-string v13, "az"

    aput-object v13, v2, v1

    const-string v13, "AZ"

    aput-object v13, v2, v6

    aput-object v2, v0, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v13, "bal"

    aput-object v13, v2, v1

    const-string v13, "PK"

    aput-object v13, v2, v6

    aput-object v2, v0, v4

    new-array v2, v7, [Ljava/lang/String;

    const-string v14, "be"

    aput-object v14, v2, v1

    const-string v14, "BY"

    aput-object v14, v2, v6

    const/4 v14, 0x7

    aput-object v2, v0, v14

    new-array v2, v7, [Ljava/lang/String;

    const-string v15, "bg"

    aput-object v15, v2, v1

    const-string v15, "BG"

    aput-object v15, v2, v6

    const/16 v15, 0x8

    aput-object v2, v0, v15

    new-array v2, v7, [Ljava/lang/String;

    const-string v16, "bn"

    aput-object v16, v2, v1

    aput-object v11, v2, v6

    const/16 v16, 0x9

    aput-object v2, v0, v16

    new-array v2, v7, [Ljava/lang/String;

    const-string v17, "bs"

    aput-object v17, v2, v1

    const-string v17, "BA"

    aput-object v17, v2, v6

    const/16 v17, 0xa

    aput-object v2, v0, v17

    new-array v2, v7, [Ljava/lang/String;

    const-string v18, "ca"

    aput-object v18, v2, v1

    const-string v18, "ES"

    aput-object v18, v2, v6

    const/16 v19, 0xb

    aput-object v2, v0, v19

    const/16 v2, 0xc

    new-array v15, v7, [Ljava/lang/String;

    const-string v20, "ch"

    aput-object v20, v15, v1

    const-string v20, "MP"

    aput-object v20, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0xd

    new-array v15, v7, [Ljava/lang/String;

    const-string v20, "cpe"

    aput-object v20, v15, v1

    const-string v20, "SL"

    aput-object v20, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0xe

    new-array v15, v7, [Ljava/lang/String;

    const-string v20, "cs"

    aput-object v20, v15, v1

    const-string v20, "CZ"

    aput-object v20, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0xf

    new-array v15, v7, [Ljava/lang/String;

    const-string v20, "cy"

    aput-object v20, v15, v1

    const-string v20, "GB"

    aput-object v20, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x10

    new-array v15, v7, [Ljava/lang/String;

    const-string v21, "da"

    aput-object v21, v15, v1

    const-string v21, "DK"

    aput-object v21, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x11

    new-array v15, v7, [Ljava/lang/String;

    const-string v21, "de"

    aput-object v21, v15, v1

    const-string v21, "DE"

    aput-object v21, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x12

    new-array v15, v7, [Ljava/lang/String;

    const-string v21, "dv"

    aput-object v21, v15, v1

    const-string v21, "MV"

    aput-object v21, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x13

    new-array v15, v7, [Ljava/lang/String;

    const-string v21, "dz"

    aput-object v21, v15, v1

    const-string v21, "BT"

    aput-object v21, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x14

    new-array v15, v7, [Ljava/lang/String;

    const-string v21, "el"

    aput-object v21, v15, v1

    const-string v21, "GR"

    aput-object v21, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x15

    new-array v15, v7, [Ljava/lang/String;

    const-string v21, "en"

    aput-object v21, v15, v1

    const-string v21, "US"

    aput-object v21, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x16

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "es"

    aput-object v22, v15, v1

    aput-object v18, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x17

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "et"

    aput-object v22, v15, v1

    const-string v22, "EE"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x18

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "eu"

    aput-object v22, v15, v1

    aput-object v18, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x19

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "fa"

    aput-object v22, v15, v1

    const-string v22, "IR"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x1a

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "fi"

    aput-object v22, v15, v1

    const-string v22, "FI"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x1b

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "fil"

    aput-object v22, v15, v1

    const-string v22, "PH"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x1c

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "fj"

    aput-object v22, v15, v1

    const-string v22, "FJ"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x1d

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "fo"

    aput-object v22, v15, v1

    const-string v22, "FO"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x1e

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "fr"

    aput-object v22, v15, v1

    const-string v22, "FR"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x1f

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ga"

    aput-object v22, v15, v1

    const-string v22, "IE"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x20

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "gd"

    aput-object v22, v15, v1

    aput-object v20, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x21

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "gl"

    aput-object v22, v15, v1

    aput-object v18, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x22

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "gn"

    aput-object v22, v15, v1

    const-string v22, "PY"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x23

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "gu"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x24

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "gv"

    aput-object v22, v15, v1

    aput-object v20, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x25

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ha"

    aput-object v22, v15, v1

    const-string v22, "NG"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x26

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "he"

    aput-object v22, v15, v1

    const-string v22, "IL"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x27

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "hi"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x28

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ho"

    aput-object v22, v15, v1

    const-string v22, "PG"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x29

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "hr"

    aput-object v22, v15, v1

    const-string v22, "HR"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x2a

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ht"

    aput-object v22, v15, v1

    const-string v22, "HT"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x2b

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "hu"

    aput-object v22, v15, v1

    const-string v22, "HU"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x2c

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "hy"

    aput-object v22, v15, v1

    const-string v22, "AM"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x2d

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "id"

    aput-object v22, v15, v1

    const-string v22, "ID"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x2e

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "is"

    aput-object v22, v15, v1

    const-string v22, "IS"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x2f

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "it"

    aput-object v22, v15, v1

    const-string v22, "IT"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x30

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ja"

    aput-object v22, v15, v1

    const-string v22, "JP"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x31

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ka"

    aput-object v22, v15, v1

    const-string v22, "GE"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x32

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "kk"

    aput-object v22, v15, v1

    const-string v22, "KZ"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x33

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "kl"

    aput-object v22, v15, v1

    const-string v22, "GL"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x34

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "km"

    aput-object v22, v15, v1

    const-string v22, "KH"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x35

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "kn"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x36

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ko"

    aput-object v22, v15, v1

    const-string v22, "KR"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x37

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "kok"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x38

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ks"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x39

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ku"

    aput-object v22, v15, v1

    const-string v22, "TR"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x3a

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ky"

    aput-object v22, v15, v1

    const-string v22, "KG"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x3b

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "la"

    aput-object v22, v15, v1

    const-string v22, "VA"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x3c

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "lb"

    aput-object v22, v15, v1

    const-string v22, "LU"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x3d

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ln"

    aput-object v22, v15, v1

    const-string v22, "CG"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x3e

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "lo"

    aput-object v22, v15, v1

    const-string v22, "LA"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x3f

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "lt"

    aput-object v22, v15, v1

    const-string v22, "LT"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x40

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "lv"

    aput-object v22, v15, v1

    const-string v22, "LV"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x41

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mai"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x42

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "men"

    aput-object v22, v15, v1

    const-string v22, "GN"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x43

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mg"

    aput-object v22, v15, v1

    const-string v22, "MG"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x44

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mh"

    aput-object v22, v15, v1

    const-string v22, "MH"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x45

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mk"

    aput-object v22, v15, v1

    const-string v22, "MK"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x46

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ml"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x47

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mn"

    aput-object v22, v15, v1

    const-string v22, "MN"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x48

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mni"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x49

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mo"

    aput-object v22, v15, v1

    const-string v22, "MD"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x4a

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mr"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x4b

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ms"

    aput-object v22, v15, v1

    const-string v22, "MY"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x4c

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "mt"

    aput-object v22, v15, v1

    const-string v22, "MT"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x4d

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "my"

    aput-object v22, v15, v1

    const-string v22, "MM"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x4e

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "na"

    aput-object v22, v15, v1

    const-string v22, "NR"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x4f

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "nb"

    aput-object v22, v15, v1

    const-string v22, "NO"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x50

    new-array v15, v7, [Ljava/lang/String;

    const-string v23, "nd"

    aput-object v23, v15, v1

    aput-object v3, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x51

    new-array v15, v7, [Ljava/lang/String;

    const-string v23, "ne"

    aput-object v23, v15, v1

    const-string v23, "NP"

    aput-object v23, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x52

    new-array v15, v7, [Ljava/lang/String;

    const-string v23, "niu"

    aput-object v23, v15, v1

    const-string v23, "NU"

    aput-object v23, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x53

    new-array v15, v7, [Ljava/lang/String;

    const-string v23, "nl"

    aput-object v23, v15, v1

    const-string v23, "NL"

    aput-object v23, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x54

    new-array v15, v7, [Ljava/lang/String;

    const-string v23, "nn"

    aput-object v23, v15, v1

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x55

    new-array v15, v7, [Ljava/lang/String;

    const-string v23, "no"

    aput-object v23, v15, v1

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x56

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "nr"

    aput-object v22, v15, v1

    aput-object v3, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x57

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "nso"

    aput-object v22, v15, v1

    aput-object v3, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x58

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ny"

    aput-object v22, v15, v1

    const-string v22, "MW"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x59

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "om"

    aput-object v22, v15, v1

    const-string v22, "KE"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x5a

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "or"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x5b

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "pa"

    aput-object v22, v15, v1

    aput-object v11, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x5c

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "pau"

    aput-object v22, v15, v1

    const-string v22, "PW"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x5d

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "pl"

    aput-object v22, v15, v1

    const-string v22, "PL"

    aput-object v22, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x5e

    new-array v15, v7, [Ljava/lang/String;

    const-string v22, "ps"

    aput-object v22, v15, v1

    aput-object v13, v15, v6

    aput-object v15, v0, v2

    const/16 v2, 0x5f

    new-array v13, v7, [Ljava/lang/String;

    const-string v15, "pt"

    aput-object v15, v13, v1

    const-string v15, "BR"

    aput-object v15, v13, v6

    aput-object v13, v0, v2

    const/16 v2, 0x60

    new-array v13, v7, [Ljava/lang/String;

    const-string v15, "qu"

    aput-object v15, v13, v1

    aput-object v12, v13, v6

    aput-object v13, v0, v2

    const/16 v2, 0x61

    new-array v12, v7, [Ljava/lang/String;

    const-string v13, "rn"

    aput-object v13, v12, v1

    const-string v13, "BI"

    aput-object v13, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x62

    new-array v12, v7, [Ljava/lang/String;

    const-string v13, "ro"

    aput-object v13, v12, v1

    const-string v13, "RO"

    aput-object v13, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x63

    new-array v12, v7, [Ljava/lang/String;

    const-string v13, "ru"

    aput-object v13, v12, v1

    const-string v13, "RU"

    aput-object v13, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x64

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "rw"

    aput-object v15, v12, v1

    const-string v15, "RW"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x65

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sd"

    aput-object v15, v12, v1

    aput-object v11, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x66

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sg"

    aput-object v15, v12, v1

    const-string v15, "CF"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x67

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "si"

    aput-object v15, v12, v1

    const-string v15, "LK"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x68

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sk"

    aput-object v15, v12, v1

    const-string v15, "SK"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x69

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sl"

    aput-object v15, v12, v1

    const-string v15, "SI"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x6a

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sm"

    aput-object v15, v12, v1

    const-string v15, "WS"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x6b

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "so"

    aput-object v15, v12, v1

    const-string v15, "DJ"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x6c

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sq"

    aput-object v15, v12, v1

    const-string v15, "CS"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x6d

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sr"

    aput-object v15, v12, v1

    const-string v15, "CS"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x6e

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "ss"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x6f

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "st"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x70

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sv"

    aput-object v15, v12, v1

    const-string v15, "SE"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x71

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "sw"

    aput-object v15, v12, v1

    const-string v15, "KE"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x72

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "ta"

    aput-object v15, v12, v1

    aput-object v11, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x73

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "te"

    aput-object v15, v12, v1

    aput-object v11, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x74

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tem"

    aput-object v15, v12, v1

    const-string v15, "SL"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x75

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tet"

    aput-object v15, v12, v1

    const-string v15, "TL"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x76

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "th"

    aput-object v15, v12, v1

    const-string v15, "TH"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x77

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "ti"

    aput-object v15, v12, v1

    aput-object v10, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x78

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tg"

    aput-object v15, v12, v1

    const-string v15, "TJ"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x79

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tk"

    aput-object v15, v12, v1

    const-string v15, "TM"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x7a

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tkl"

    aput-object v15, v12, v1

    const-string v15, "TK"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x7b

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tvl"

    aput-object v15, v12, v1

    const-string v15, "TV"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x7c

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tl"

    aput-object v15, v12, v1

    const-string v15, "PH"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x7d

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tn"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x7e

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "to"

    aput-object v15, v12, v1

    const-string v15, "TO"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x7f

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tpi"

    aput-object v15, v12, v1

    const-string v15, "PG"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x80

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "tr"

    aput-object v15, v12, v1

    const-string v15, "TR"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x81

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "ts"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x82

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "uk"

    aput-object v15, v12, v1

    const-string v15, "UA"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x83

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "ur"

    aput-object v15, v12, v1

    aput-object v11, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x84

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "uz"

    aput-object v15, v12, v1

    const-string v15, "UZ"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x85

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "ve"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x86

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "vi"

    aput-object v15, v12, v1

    const-string v15, "VN"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x87

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "wo"

    aput-object v15, v12, v1

    const-string v15, "SN"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x88

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "xh"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x89

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "zh"

    aput-object v15, v12, v1

    const-string v15, "CN"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x8a

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "zh_Hant"

    aput-object v15, v12, v1

    const-string v15, "TW"

    aput-object v15, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x8b

    new-array v12, v7, [Ljava/lang/String;

    const-string v15, "zu"

    aput-object v15, v12, v1

    aput-object v3, v12, v6

    aput-object v12, v0, v2

    const/16 v2, 0x8c

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "aa"

    aput-object v12, v3, v1

    aput-object v10, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x8d

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "byn"

    aput-object v12, v3, v1

    const-string v12, "ER"

    aput-object v12, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x8e

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "eo"

    aput-object v12, v3, v1

    const-string v12, "DE"

    aput-object v12, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x8f

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "gez"

    aput-object v12, v3, v1

    aput-object v10, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x90

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "haw"

    aput-object v12, v3, v1

    aput-object v21, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x91

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "iu"

    aput-object v12, v3, v1

    const-string v12, "CA"

    aput-object v12, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x92

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "kw"

    aput-object v12, v3, v1

    aput-object v20, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x93

    new-array v3, v7, [Ljava/lang/String;

    const-string v12, "sa"

    aput-object v12, v3, v1

    aput-object v11, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x94

    new-array v3, v7, [Ljava/lang/String;

    const-string v11, "sh"

    aput-object v11, v3, v1

    const-string v11, "HR"

    aput-object v11, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x95

    new-array v3, v7, [Ljava/lang/String;

    const-string v11, "sid"

    aput-object v11, v3, v1

    aput-object v10, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x96

    new-array v3, v7, [Ljava/lang/String;

    const-string v11, "syr"

    aput-object v11, v3, v1

    const-string v11, "SY"

    aput-object v11, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x97

    new-array v3, v7, [Ljava/lang/String;

    const-string v11, "tig"

    aput-object v11, v3, v1

    const-string v11, "ER"

    aput-object v11, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x98

    new-array v3, v7, [Ljava/lang/String;

    const-string v11, "tt"

    aput-object v11, v3, v1

    aput-object v13, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x99

    new-array v3, v7, [Ljava/lang/String;

    const-string v11, "wal"

    aput-object v11, v3, v1

    aput-object v10, v3, v6

    aput-object v3, v0, v2

    .line 1233
    sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1389
    :goto_6
    sget-object v2, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_a

    .line 1390
    sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    aget-object v10, v2, v0

    aget-object v10, v10, v1

    aget-object v2, v2, v0

    aget-object v2, v2, v6

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1394
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    const/16 v0, 0x1e

    new-array v0, v0, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AQ"

    aput-object v3, v2, v1

    const-string v3, "Antarctica/McMurdo"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AR"

    aput-object v3, v2, v1

    const-string v3, "America/Buenos_Aires"

    aput-object v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v1

    const-string v3, "Australia/Sydney"

    aput-object v3, v2, v6

    aput-object v2, v0, v7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BR"

    aput-object v3, v2, v1

    const-string v3, "America/Sao_Paulo"

    aput-object v3, v2, v6

    aput-object v2, v0, v8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v1

    const-string v3, "America/Toronto"

    aput-object v3, v2, v6

    aput-object v2, v0, v9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CD"

    aput-object v3, v2, v1

    const-string v3, "Africa/Kinshasa"

    aput-object v3, v2, v6

    aput-object v2, v0, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CL"

    aput-object v3, v2, v1

    const-string v3, "America/Santiago"

    aput-object v3, v2, v6

    aput-object v2, v0, v4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "CN"

    aput-object v3, v2, v1

    const-string v3, "Asia/Shanghai"

    aput-object v3, v2, v6

    aput-object v2, v0, v14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "EC"

    aput-object v3, v2, v1

    const-string v3, "America/Guayaquil"

    aput-object v3, v2, v6

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v7, [Ljava/lang/String;

    aput-object v18, v2, v1

    const-string v3, "Europe/Madrid"

    aput-object v3, v2, v6

    aput-object v2, v0, v16

    new-array v2, v7, [Ljava/lang/String;

    aput-object v20, v2, v1

    const-string v3, "Europe/London"

    aput-object v3, v2, v6

    aput-object v2, v0, v17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "GL"

    aput-object v3, v2, v1

    const-string v3, "America/Godthab"

    aput-object v3, v2, v6

    aput-object v2, v0, v19

    const/16 v2, 0xc

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ID"

    aput-object v4, v3, v1

    const-string v4, "Asia/Jakarta"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ML"

    aput-object v4, v3, v1

    const-string v4, "Africa/Bamako"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "MX"

    aput-object v4, v3, v1

    const-string v4, "America/Mexico_City"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "MY"

    aput-object v4, v3, v1

    const-string v4, "Asia/Kuala_Lumpur"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "NZ"

    aput-object v4, v3, v1

    const-string v4, "Pacific/Auckland"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "PT"

    aput-object v4, v3, v1

    const-string v4, "Europe/Lisbon"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-array v3, v7, [Ljava/lang/String;

    aput-object v13, v3, v1

    const-string v4, "Europe/Moscow"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "UA"

    aput-object v4, v3, v1

    const-string v4, "Europe/Kiev"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-array v3, v7, [Ljava/lang/String;

    aput-object v21, v3, v1

    const-string v4, "America/New_York"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "UZ"

    aput-object v4, v3, v1

    const-string v4, "Asia/Tashkent"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "PF"

    aput-object v4, v3, v1

    const-string v4, "Pacific/Tahiti"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "FM"

    aput-object v4, v3, v1

    const-string v4, "Pacific/Kosrae"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "KI"

    aput-object v4, v3, v1

    const-string v4, "Pacific/Tarawa"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "KZ"

    aput-object v4, v3, v1

    const-string v4, "Asia/Almaty"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "MH"

    aput-object v4, v3, v1

    const-string v4, "Pacific/Majuro"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "MN"

    aput-object v4, v3, v1

    const-string v4, "Asia/Ulaanbaatar"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "SJ"

    aput-object v4, v3, v1

    const-string v4, "Arctic/Longyearbyen"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "UM"

    aput-object v4, v3, v1

    const-string v4, "Pacific/Midway"

    aput-object v4, v3, v6

    aput-object v3, v0, v2

    .line 1395
    sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1428
    :goto_7
    sget-object v2, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 1429
    sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    aget-object v4, v2, v0

    aget-object v4, v4, v1

    aget-object v2, v2, v0

    aget-object v2, v2, v6

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->reset()Lcom/ibm/icu/util/GlobalizationPreferences;

    return-void
.end method

.method private getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
    .locals 4

    .line 1140
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1142
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1143
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/ULocale;

    .line 1144
    invoke-direct {p0, v2, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->isAvailableLocale(Lcom/ibm/icu/util/ULocale;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private isAvailableLocale(Lcom/ibm/icu/util/ULocale;I)Z
    .locals 1

    .line 1153
    sget-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cloneAsThawed()Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 2

    .line 1460
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/GlobalizationPreferences;

    const/4 v1, 0x0

    .line 1461
    iput-boolean v1, v0, Lcom/ibm/icu/util/GlobalizationPreferences;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->cloneAsThawed()Lcom/ibm/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->freeze()Lcom/ibm/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getBreakIterator(I)Lcom/ibm/icu/text/BreakIterator;
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;

    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/BreakIterator;

    return-object p1

    .line 495
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessBreakIterator(I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    return-object p1

    .line 492
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal break iterator type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCalendar()Lcom/ibm/icu/util/Calendar;
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 412
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    .line 413
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getCollator()Lcom/ibm/icu/text/Collator;
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessCollator()Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 460
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    const-string v2, "Error in cloning collator"

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDateFormat(II)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_3

    :cond_0
    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    if-ltz p2, :cond_3

    if-ge p2, v0, :cond_3

    const/4 v0, 0x0

    .line 663
    iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;

    if-eqz v1, :cond_1

    .line 664
    aget-object v0, v1, p1

    aget-object v0, v0, p2

    :cond_1
    if-eqz v0, :cond_2

    .line 667
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DateFormat;

    .line 669
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    goto :goto_0

    .line 671
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessDateFormat(II)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    :goto_0
    return-object p1

    .line 660
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal date format style arguments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDisplayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 532
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/ULocale;

    const/4 v3, 0x0

    .line 533
    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/util/GlobalizationPreferences;->isAvailableLocale(Lcom/ibm/icu/util/ULocale;I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "und-"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p2, :pswitch_data_0

    .line 609
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :pswitch_0
    new-instance v1, Lcom/ibm/icu/text/SimpleDateFormat;

    const-string v6, "vvvv"

    invoke-direct {v1, v6, v2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 579
    invoke-static {p1}, Lcom/ibm/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    .line 580
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    .line 589
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v6, 0x29

    .line 590
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    if-eq v6, v7, :cond_2

    sub-int v7, v6, v2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 592
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 594
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_4

    .line 597
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-lt v7, v8, :cond_5

    const/16 v8, 0x5a

    if-ge v8, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_3
    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 567
    :pswitch_1
    new-instance v1, Lcom/ibm/icu/util/Currency;

    invoke-direct {v1, p1}, Lcom/ibm/icu/util/Currency;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    if-ne p2, v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    const/4 v4, 0x0

    .line 568
    invoke-virtual {v1, v2, v3, v4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_2
    new-array v1, v4, [Ljava/lang/String;

    const/16 v4, 0x3d

    .line 558
    invoke-static {p1, v4, v1}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C[Ljava/lang/String;)V

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "und@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v3, v1, v3

    invoke-static {v4, v3, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    aget-object v1, v1, v5

    .line 561
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v2

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_4

    .line 554
    :pswitch_3
    invoke-static {p1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayKeyword(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 551
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "und-QQ-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayVariant(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 547
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 544
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayScript(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 541
    :pswitch_7
    invoke-static {p1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguage(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 538
    :pswitch_8
    invoke-static {p1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 614
    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLocale(I)Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    :cond_0
    if-ltz p1, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/ULocale;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public getNumberFormat(I)Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;

    if-eqz v1, :cond_0

    .line 691
    aget-object v0, v1, p1

    :cond_0
    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessNumberFormat(I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    :goto_0
    return-object p1

    .line 687
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal number format type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p1

    return-object p1
.end method

.method public getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 8

    .line 287
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 288
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 289
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v6}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    .line 298
    :try_start_0
    invoke-static {p1, v6}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    goto :goto_1

    .line 301
    :cond_1
    invoke-static {p1, v6, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    .line 304
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    move-object v5, v4

    goto :goto_2

    :catch_0
    move-object v3, v1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_5

    return-object v4

    .line 320
    :cond_5
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find bundle for base name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p2, v0, p1, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public getTerritory()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessTerritory()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected guessBreakIterator(I)Lcom/ibm/icu/text/BreakIterator;
    .locals 2

    const/4 v0, 0x5

    .line 1047
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1049
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    :cond_0
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1056
    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getTitleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    goto :goto_0

    .line 1068
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown break iterator type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1065
    :cond_2
    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    goto :goto_0

    .line 1062
    :cond_3
    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getLineInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    goto :goto_0

    .line 1059
    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    goto :goto_0

    .line 1053
    :cond_5
    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected guessCalendar()Lcom/ibm/icu/util/Calendar;
    .locals 2

    const/4 v0, 0x1

    .line 1114
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1116
    sget-object v0, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected guessCollator()Lcom/ibm/icu/text/Collator;
    .locals 1

    const/4 v0, 0x4

    .line 1030
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1032
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 1034
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method protected guessCurrency()Lcom/ibm/icu/util/Currency;
    .locals 3

    .line 1003
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "und-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method protected guessDateFormat(II)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    const/4 v0, 0x2

    .line 912
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 914
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 919
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 921
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCalendar()Lcom/ibm/icu/util/Calendar;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected guessLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1016
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object v0
.end method

.method protected guessNumberFormat(I)Lcom/ibm/icu/text/NumberFormat;
    .locals 3

    const/4 v0, 0x3

    .line 936
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    if-nez v1, :cond_0

    .line 938
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    :cond_0
    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 948
    invoke-static {v1}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 958
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown number format style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 945
    :cond_2
    invoke-static {v1}, Lcom/ibm/icu/text/NumberFormat;->getScientificInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 951
    :cond_3
    invoke-static {v1}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 954
    :cond_4
    invoke-static {v1}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    .line 955
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    goto :goto_0

    .line 942
    :cond_5
    invoke-static {v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected guessTerritory()Ljava/lang/String;
    .locals 5

    .line 971
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    .line 972
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 981
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocale(I)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 983
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 985
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 986
    sget-object v2, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_2
    if-nez v2, :cond_3

    .line 989
    sget-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_3
    if-nez v2, :cond_4

    const-string v2, "US"

    :cond_4
    return-object v2
.end method

.method protected guessTimeZone()Lcom/ibm/icu/util/TimeZone;
    .locals 5

    .line 1088
    sget-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1090
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1091
    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, "Etc/GMT"

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1096
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1097
    aget-object v3, v0, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1099
    :cond_2
    :goto_1
    array-length v3, v0

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1100
    :goto_2
    aget-object v0, v0, v1

    .line 1103
    :cond_4
    :goto_3
    invoke-static {v0}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 1442
    iget-boolean v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->frozen:Z

    return v0
.end method

.method protected processLocales(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    .line 794
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 795
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 796
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 797
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 800
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 804
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ibm/icu/util/ULocale;

    .line 805
    invoke-virtual {v9}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 808
    :cond_1
    invoke-virtual {v9}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v10

    .line 809
    invoke-virtual {v9}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 810
    invoke-virtual {v9}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 811
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 812
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 813
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 816
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 818
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 821
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 823
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 829
    :cond_4
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 830
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 831
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 836
    :cond_5
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 837
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_4
    if-nez v2, :cond_0

    .line 844
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/4 p1, 0x0

    .line 860
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_b

    .line 861
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    .line 862
    :goto_6
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 863
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 p1, p1, 0x1

    .line 867
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    .line 882
    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_f

    .line 883
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;

    add-int/lit8 v4, p1, 0x1

    move v5, v4

    .line 885
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 886
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 888
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_c

    move p1, v4

    goto :goto_8

    :cond_f
    return-object v0
.end method

.method public reset()Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 2

    .line 727
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    .line 731
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    .line 732
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;

    .line 733
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;

    .line 734
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;

    .line 735
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;

    .line 736
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;

    .line 737
    move-object v1, v0

    check-cast v1, [[Lcom/ibm/icu/text/DateFormat;

    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;

    .line 738
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;

    .line 739
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object p0

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBreakIterator(ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;

    if-nez v1, :cond_0

    new-array v0, v0, [Lcom/ibm/icu/text/BreakIterator;

    .line 516
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {p2}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/BreakIterator;

    aput-object p2, v0, p1

    return-object p0

    .line 513
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify immutable object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal break iterator type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCalendar(Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/Calendar;

    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;

    return-object p0

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCollator(Lcom/ibm/icu/text/Collator;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 2

    .line 471
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/Collator;

    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 477
    new-instance v0, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    const-string v1, "Error in cloning collator"

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;

    return-object p0

    .line 368
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDateFormat(IILcom/ibm/icu/text/DateFormat;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 2

    .line 634
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 638
    fill-array-data v0, :array_0

    const-class v1, Lcom/ibm/icu/text/DateFormat;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/ibm/icu/text/DateFormat;

    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;

    aget-object p1, v0, p1

    invoke-virtual {p3}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ibm/icu/text/DateFormat;

    aput-object p3, p1, p2

    return-object p0

    .line 635
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify immutable object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x5
        0x5
    .end array-data
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ibm/icu/util/ULocale;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 234
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->setLocales([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;

    move-result-object p1

    return-object p1

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocales(Ljava/lang/String;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-static {p1}, Lcom/ibm/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->build()Lcom/ibm/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/LocalePriorityList;->getULocales()Ljava/util/Set;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    return-object p0

    .line 248
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocales(Ljava/util/List;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Lcom/ibm/icu/util/GlobalizationPreferences;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    return-object p0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocales([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->setLocales(Ljava/util/List;)Lcom/ibm/icu/util/GlobalizationPreferences;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNumberFormat(ILcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ibm/icu/text/NumberFormat;

    .line 714
    iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p2}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/NumberFormat;

    aput-object p2, v0, p1

    return-object p0

    .line 711
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify immutable object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTerritory(Ljava/lang/String;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    return-object p0

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)Lcom/ibm/icu/util/GlobalizationPreferences;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;

    return-object p0

    .line 427
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify immutable object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
