.class Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZDBNames"
.end annotation


# static fields
.field public static final EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

.field private static final KEYS:[Ljava/lang/String;


# instance fields
.field private _names:[Ljava/lang/String;

.field private _parseRegions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ss"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sd"

    aput-object v2, v0, v1

    .line 144
    sput-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    return-void
.end method

.method static getInstance(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 7

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 158
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    sget-object p1, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    array-length p1, p1

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    if-ge v3, p1, :cond_1

    .line 167
    :try_start_1
    sget-object v6, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    .line 170
    :catch_0
    aput-object v5, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 175
    sget-object p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object p0

    :cond_2
    :try_start_2
    const-string p1, "parseRegions"

    .line 180
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 181
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result p1

    if-nez p1, :cond_3

    new-array v5, v2, [Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v1

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    :catch_1
    :cond_4
    :goto_2
    new-instance p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    invoke-direct {p0, v0, v5}, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 160
    :catch_2
    sget-object p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object p0

    .line 153
    :cond_5
    :goto_3
    sget-object p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object p0
.end method


# virtual methods
.method getName(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 199
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    aget-object v1, p1, v0

    goto :goto_0

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :goto_0
    return-object v1
.end method

.method getParseRegions()[Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/ibm/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    return-object v0
.end method
