.class public Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.super Lcom/ibm/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$LangDataTables;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;,
        Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field private static final TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Lcom/ibm/icu/text/CaseMap$Title;

.field private static final cache:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final capitalization:Lcom/ibm/icu/text/DisplayContext;

.field private transient capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

.field private capitalizationUsage:[Z

.field private final currencyDisplayInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private final dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

.field private final format:Ljava/lang/String;

.field private final formatCloseParen:C

.field private final formatOpenParen:C

.field private final formatReplaceCloseParen:C

.field private final formatReplaceOpenParen:C

.field private final keyTypeFormat:Ljava/lang/String;

.field private final langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private final nameLength:Lcom/ibm/icu/text/DisplayContext;

.field private final regionData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final separatorFormat:Ljava/lang/String;

.field private final substituteHandling:Lcom/ibm/icu/text/DisplayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;)V

    sput-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->cache:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    .line 78
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "languages"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "script"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "territory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "variant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string v2, "keyValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/ibm/icu/text/CaseMap;->toTitle()Lcom/ibm/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/CaseMap$Title;->wholeString()Lcom/ibm/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/CaseMap$Title;->noLowercase()Lcom/ibm/icu/text/CaseMap$Title;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Lcom/ibm/icu/text/CaseMap$Title;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/DisplayContext;

    .line 134
    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v1, :cond_0

    sget-object p2, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    aput-object v1, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;-><init>(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)V
    .locals 13

    .line 138
    invoke-direct {p0}, Lcom/ibm/icu/text/LocaleDisplayNames;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    .line 88
    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 139
    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 140
    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    .line 141
    sget-object v3, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    .line 142
    sget-object v4, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    .line 143
    array-length v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-ge v7, v5, :cond_5

    aget-object v10, p2, v7

    .line 144
    sget-object v11, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$com$ibm$icu$text$DisplayContext$Type:[I

    invoke-virtual {v10}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ibm/icu/text/DisplayContext$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v8, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v8, 0x3

    if-eq v11, v8, :cond_1

    const/4 v8, 0x4

    if-eq v11, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v10

    goto :goto_1

    :cond_1
    move-object v3, v10

    goto :goto_1

    :cond_2
    move-object v2, v10

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {v10}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v1

    sget-object v8, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v8}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v8

    if-ne v1, v8, :cond_4

    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    :cond_5
    iput-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 164
    iput-object v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    .line 165
    iput-object v3, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    .line 166
    iput-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    .line 167
    sget-object p2, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v4, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2, p1, v1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    .line 168
    sget-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;

    sget-object v3, Lcom/ibm/icu/text/DisplayContext;->NO_SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v4, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v1, p1, v8}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->regionData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    .line 169
    sget-object v3, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    goto :goto_4

    .line 170
    :cond_8
    invoke-virtual {p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v1, "localeDisplayPattern"

    const-string v3, "separator"

    .line 176
    invoke-virtual {p2, v1, v3}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v4, "{0}, {1}"

    .line 180
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-static {v4, v3, v9, v9}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Ljava/lang/String;

    const-string v4, "pattern"

    .line 183
    invoke-virtual {p2, v1, v4}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string v5, "{0} ({1})"

    .line 187
    :cond_c
    invoke-static {v5, v3, v9, v9}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->format:Ljava/lang/String;

    const-string v4, "\uff08"

    .line 188
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0xff08

    .line 189
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    const v4, 0xff09

    .line 190
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const v4, 0xff3b

    .line 191
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    const v4, 0xff3d

    .line 192
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    goto :goto_5

    :cond_d
    const/16 v4, 0x28

    .line 194
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    const/16 v4, 0x29

    .line 195
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const/16 v4, 0x5b

    .line 196
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    const/16 v4, 0x5d

    .line 197
    iput-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    :goto_5
    const-string v4, "keyTypePattern"

    .line 200
    invoke-virtual {p2, v1, v4}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 201
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const-string p2, "{0}={1}"

    .line 204
    :cond_f
    invoke-static {p2, v3, v9, v9}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Ljava/lang/String;

    .line 210
    sget-object p2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-eq v2, p2, :cond_11

    sget-object p2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v2, p2, :cond_10

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    goto :goto_7

    .line 212
    :cond_11
    :goto_6
    invoke-static {}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->values()[Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    const-string p2, "com/ibm/icu/impl/data/icudt69b"

    .line 213
    invoke-static {p2, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 214
    new-instance v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;-><init>(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;)V

    :try_start_0
    const-string v0, "contextTransforms"

    .line 216
    invoke-virtual {p2, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    iget-boolean p2, v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    :goto_7
    if-nez p2, :cond_12

    .line 224
    sget-object p2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v2, p2, :cond_13

    .line 225
    :cond_12
    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 228
    :cond_13
    sget-object p2, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {p2, p1, v6}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 36
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;)Lcom/ibm/icu/text/DisplayContext;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;)[Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    return-object p0
.end method

.method private adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_2

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_2

    .line 270
    :cond_0
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    const/16 v1, 0x300

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-object p2
.end method

.method private appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 712
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p2
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 1

    .line 98
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->cache:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs getInstance(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 1

    .line 104
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->cache:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static haveData(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;)Z
    .locals 3

    .line 703
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$com$ibm$icu$impl$LocaleDisplayNamesImpl$DataTableType:[I

    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 705
    sget-object p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of p0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return p0

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of p0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return p0
.end method

.method private keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Keys"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    sget-object p2, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "currency"

    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    invoke-static {p2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p1

    goto :goto_1

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_2

    .line 537
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Types%short"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Types"

    invoke-virtual {v0, v1, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    .line 547
    :cond_4
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    return-object p2
.end method

.method private localeDisplayNameInternal(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 13

    .line 305
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "und"

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 317
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 318
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 321
    :goto_2
    iget-object v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v10, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_6

    const/16 v9, 0x5f

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    .line 324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 325
    invoke-direct {p0, v10}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 326
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v4, 0x0

    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 335
    invoke-direct {p0, v10}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 336
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    .line 343
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 344
    invoke-direct {p0, v9}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 345
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    move-object v12, v11

    :goto_4
    if-nez v12, :cond_8

    .line 355
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v11

    .line 357
    :cond_7
    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v10, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 358
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v10, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 359
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 362
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_a

    .line 365
    invoke-direct {p0, v1, v6}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v11

    .line 367
    :cond_9
    iget-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 368
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 369
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v7, :cond_c

    .line 372
    invoke-direct {p0, v2, v6}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v11

    .line 374
    :cond_b
    iget-char v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 375
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 376
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_e

    .line 379
    invoke-direct {p0, v3, v6}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v11

    .line 381
    :cond_d
    iget-char v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v3, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 382
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v3, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 383
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 386
    :cond_e
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_13

    .line 388
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 389
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    invoke-virtual {p1, v3}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-direct {p0, v3, v6}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_f

    return-object v11

    .line 393
    :cond_f
    iget-char v8, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 394
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    iget-char v8, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 395
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-direct {p0, v3, v4, v6}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_10

    return-object v11

    .line 398
    :cond_10
    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v10, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 399
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    iget-char v9, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v10, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 400
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    .line 401
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 402
    invoke-direct {p0, v8, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 403
    :cond_11
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 404
    iget-object v3, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/CharSequence;

    aput-object v7, v4, v5

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-direct {p0, v3, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 408
    :cond_12
    invoke-direct {p0, v7, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 416
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_14

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_14
    if-eqz v11, :cond_15

    .line 421
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->format:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/CharSequence;

    aput-object v12, v0, v5

    aput-object v11, v0, v6

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 425
    :cond_15
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v12}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private localeIdName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages%short"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private newRow(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;
    .locals 4

    .line 608
    sget-object v0, Lcom/ibm/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Lcom/ibm/icu/util/ULocale$Minimize;

    invoke-static {p1, v0}, Lcom/ibm/icu/util/ULocale;->minimizeSubtags(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale$Minimize;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 610
    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->locale:Lcom/ibm/icu/util/ULocale;

    .line 612
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->toTitleWholeStringNoLowercase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    :cond_1
    invoke-virtual {p1, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    .line 614
    sget-object v3, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne p2, v3, :cond_2

    .line 616
    invoke-static {p1, v2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->toTitleWholeStringNoLowercase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    :cond_2
    new-instance p2, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 491
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->regionData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Countries%short"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->regionData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Countries"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    .line 497
    :cond_2
    sget-object p2, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%short"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    .line 476
    :cond_2
    sget-object p2, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static toTitleWholeStringNoLowercase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Lcom/ibm/icu/text/CaseMap$Title;

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/ibm/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Lcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Variants"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    sget-object p2, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 244
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$com$ibm$icu$text$DisplayContext$Type:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/DisplayContext$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 258
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    return-object p1
.end method

.method public getDialectHandling()Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method

.method public getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->locale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 560
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 561
    new-instance v3, Lcom/ibm/icu/util/ULocale$Builder;

    invoke-direct {v3}, Lcom/ibm/icu/util/ULocale$Builder;-><init>()V

    .line 562
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/ULocale;

    .line 563
    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/ULocale$Builder;->setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale$Builder;

    .line 564
    invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    .line 565
    new-instance v5, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_0

    .line 568
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_0
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 573
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/ULocale;

    .line 574
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 575
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 576
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/ULocale;

    .line 577
    sget-object v4, Lcom/ibm/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Lcom/ibm/icu/util/ULocale$Minimize;

    invoke-static {v2, v4}, Lcom/ibm/icu/util/ULocale;->minimizeSubtags(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale$Minimize;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->newRow(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 579
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 580
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 582
    invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/util/ULocale;

    .line 586
    invoke-virtual {v8}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-virtual {v8}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 589
    :cond_4
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 590
    :goto_3
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-le v7, v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 591
    :goto_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/ULocale;

    .line 592
    invoke-virtual {v3, v5}, Lcom/ibm/icu/util/ULocale$Builder;->setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale$Builder;

    move-result-object v5

    const-string v7, ""

    if-nez v4, :cond_7

    .line 594
    invoke-virtual {v5, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    :cond_7
    if-nez v6, :cond_8

    .line 597
    invoke-virtual {v5, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    .line 599
    :cond_8
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$Builder;->build()Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->newRow(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 603
    :cond_9
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 524
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 552
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "root"

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages%short"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 450
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v2, "Languages"

    invoke-virtual {v1, v2, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 442
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 294
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 502
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 0

    .line 486
    invoke-static {p1}, Lcom/ibm/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%stand-alone"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->LENGTH_SHORT:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%short"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->langData:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts"

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_2
    sget-object p1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
