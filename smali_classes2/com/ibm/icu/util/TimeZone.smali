.class public abstract Lcom/ibm/icu/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/TimeZone$ConstantZone;,
        Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/util/TimeZone;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GENERIC_LOCATION:I = 0x7

.field public static final GMT_ZONE:Lcom/ibm/icu/util/TimeZone;

.field static final GMT_ZONE_ID:Ljava/lang/String; = "Etc/GMT"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final LONG:I = 0x1

.field public static final LONG_GENERIC:I = 0x3

.field public static final LONG_GMT:I = 0x5

.field public static final SHORT:I = 0x0

.field public static final SHORT_COMMONLY_USED:I = 0x6

.field public static final SHORT_GENERIC:I = 0x2

.field public static final SHORT_GMT:I = 0x4

.field public static final TIMEZONE_ICU:I = 0x0

.field public static final TIMEZONE_JDK:I = 0x1

.field private static final TZIMPL_CONFIG_ICU:Ljava/lang/String; = "ICU"

.field private static final TZIMPL_CONFIG_JDK:Ljava/lang/String; = "JDK"

.field private static final TZIMPL_CONFIG_KEY:Ljava/lang/String; = "com.ibm.icu.util.TimeZone.DefaultTimeZoneType"

.field private static TZ_IMPL:I = 0x0

.field public static final UNKNOWN_ZONE:Lcom/ibm/icu/util/TimeZone;

.field public static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile defaultZone:Lcom/ibm/icu/util/TimeZone; = null

.field private static final serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.ibm.icu.util.TimeZone"

    .line 121
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    .line 252
    new-instance v0, Lcom/ibm/icu/util/TimeZone$ConstantZone;

    const/4 v1, 0x0

    const-string v2, "Etc/Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Lcom/ibm/icu/util/TimeZone$1;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/TimeZone;->UNKNOWN_ZONE:Lcom/ibm/icu/util/TimeZone;

    .line 259
    new-instance v0, Lcom/ibm/icu/util/TimeZone$ConstantZone;

    const-string v2, "Etc/GMT"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;Lcom/ibm/icu/util/TimeZone$1;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/TimeZone;->GMT_ZONE:Lcom/ibm/icu/util/TimeZone;

    .line 1361
    sput-object v3, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    .line 1366
    sput v1, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const-string v0, "com.ibm.icu.util.TimeZone.DefaultTimeZoneType"

    const-string v1, "ICU"

    .line 1376
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDK"

    .line 1377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1378
    sput v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iput-object p1, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void
.end method

.method private _getDisplayName(IZLcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 11

    if-eqz p3, :cond_16

    const/4 v0, 0x3

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v1, :cond_c

    if-eq p1, v0, :cond_c

    if-ne p1, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_8

    if-ne p1, v0, :cond_1

    goto :goto_3

    .line 585
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 586
    invoke-static {p3}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_4

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 590
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 594
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 597
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 600
    invoke-static {p3}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p3

    if-eqz p2, :cond_6

    .line 601
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    :goto_1
    if-ne p1, v4, :cond_7

    .line 603
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v0, p1

    goto/16 :goto_9

    .line 570
    :cond_8
    :goto_3
    invoke-static {p3}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p3

    if-eqz p2, :cond_9

    .line 571
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    :goto_4
    if-eq p1, v0, :cond_b

    if-eq p1, v1, :cond_a

    goto/16 :goto_8

    .line 574
    :cond_a
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_b
    const/4 p1, 0x0

    .line 577
    invoke-virtual {p3, p2, p1, p1, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 542
    :cond_c
    :goto_5
    invoke-static {p3}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p3

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 544
    new-instance v10, Lcom/ibm/icu/util/Output;

    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v10, v4}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    if-eq p1, v3, :cond_f

    if-eq p1, v0, :cond_e

    if-eq p1, v1, :cond_d

    goto :goto_6

    .line 548
    :cond_d
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object v4, p3

    move-object v6, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 551
    :cond_e
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object v4, p3

    move-object v6, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 554
    :cond_f
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    move-object v4, p3

    move-object v6, p0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    if-eqz p2, :cond_10

    .line 561
    iget-object v0, v10, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v1, :cond_11

    :cond_10
    if-nez p2, :cond_14

    iget-object v0, v10, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v1, :cond_14

    :cond_11
    if-eqz p2, :cond_12

    .line 563
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result p2

    :goto_7
    if-ne p1, v3, :cond_13

    .line 565
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_14
    :goto_8
    move-object v0, v2

    :cond_15
    :goto_9
    return-object v0

    .line 535
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locale is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public static countEquivalentIDs(Ljava/lang/String;)I
    .locals 0

    .line 892
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->countEquivalentIDs(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static forLocaleOrDefault(Ljava/util/Locale;)Lcom/ibm/icu/util/TimeZone;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/TimeZone;->forULocaleOrDefault(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static forULocaleOrDefault(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/TimeZone;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "timezone"

    .line 930
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 931
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 824
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .locals 2

    .line 873
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->ANY:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 874
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .locals 2

    .line 840
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->ANY:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 841
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 858
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->ANY:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 859
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1131
    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 3

    const-string v0, "Etc/Unknown"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    .line 1159
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1164
    aput-boolean p0, p1, v1

    :cond_3
    return-object v0
.end method

.method public static getDefault()Lcom/ibm/icu/util/TimeZone;
    .locals 4

    .line 959
    sget-object v0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    if-nez v0, :cond_2

    .line 962
    const-class v1, Ljava/util/TimeZone;

    monitor-enter v1

    .line 963
    :try_start_0
    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 964
    :try_start_1
    sget-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    if-nez v2, :cond_1

    .line 966
    sget v2, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 967
    new-instance v2, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-direct {v2}, Lcom/ibm/icu/impl/JavaTimeZone;-><init>()V

    goto :goto_0

    .line 969
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 970
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 972
    :goto_0
    sput-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    .line 974
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 974
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v0

    .line 975
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 978
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTimeZoneType()I
    .locals 1

    .line 805
    sget v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    return v0
.end method

.method public static getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 915
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ZoneMeta;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;
    .locals 0

    if-eqz p1, :cond_0

    .line 777
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/OlsonTimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 780
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/SimpleTimeZone;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static getFrozenTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 722
    sget v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getIDForWindowsID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1282
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "windowsZones"

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "mapTimezones"

    .line 1284
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 1287
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_1

    .line 1290
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 1293
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 1295
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    move-object v1, p1

    goto :goto_0

    :catch_1
    nop

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    :try_start_3
    const-string p1, "001"

    .line 1303
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    return-object v1
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Etc/Unknown"

    .line 1188
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 1193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown system zone id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTZDataVersion()Ljava/lang/String;
    .locals 1

    .line 1117
    invoke-static {}, Lcom/ibm/icu/util/VersionInfo;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 703
    sget v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZone(Ljava/lang/String;I)Lcom/ibm/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x0

    .line 738
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeZone(Ljava/lang/String;IZ)Lcom/ibm/icu/util/TimeZone;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 752
    invoke-static {p0}, Lcom/ibm/icu/impl/JavaTimeZone;->createTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/JavaTimeZone;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 754
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 756
    invoke-static {p0, p1}, Lcom/ibm/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;

    move-result-object p1

    goto :goto_0

    .line 758
    :cond_2
    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 761
    sget-object p1, Lcom/ibm/icu/util/TimeZone;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is a bogus id so timezone is falling back to Etc/Unknown(GMT)."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 762
    sget-object p1, Lcom/ibm/icu/util/TimeZone;->UNKNOWN_ZONE:Lcom/ibm/icu/util/TimeZone;

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_1

    .line 764
    :cond_4
    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static getWindowsID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 1221
    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1227
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "com/ibm/icu/impl/data/icudt69b"

    const-string v4, "windowsZones"

    invoke-static {v3, v4, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v3, "mapTimezones"

    .line 1229
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 1232
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1233
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 1234
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 1237
    :cond_2
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v4

    .line 1238
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1239
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 1240
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 1243
    :cond_4
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1244
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 1245
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1246
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    return-object v2
.end method

.method public static declared-synchronized setDefault(Lcom/ibm/icu/util/TimeZone;)V
    .locals 5

    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0

    .line 993
    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/util/TimeZone;->setICUDefault(Lcom/ibm/icu/util/TimeZone;)V

    if-eqz p0, :cond_4

    .line 999
    instance-of v1, p0, Lcom/ibm/icu/impl/JavaTimeZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1000
    move-object v1, p0

    check-cast v1, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/JavaTimeZone;->unwrap()Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_0

    .line 1001
    :cond_0
    instance-of v1, p0, Lcom/ibm/icu/impl/OlsonTimeZone;

    if-eqz v1, :cond_2

    .line 1010
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1012
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1018
    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1020
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 1027
    invoke-static {p0}, Lcom/ibm/icu/impl/TimeZoneAdapter;->wrap(Lcom/ibm/icu/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v2

    .line 1029
    :cond_3
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultTimeZoneType(I)V
    .locals 2

    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid timezone type"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 795
    :cond_1
    :goto_0
    sput p0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setICUDefault(Lcom/ibm/icu/util/TimeZone;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1047
    :try_start_0
    sput-object p0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    goto :goto_0

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    sput-object p0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    sput-object p0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1339
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1342
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1092
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    iget-object p1, p1, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x36ee80

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 3

    .line 430
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(IZLcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 460
    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(IZLcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 445
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(IZLcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .locals 1

    .line 479
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/util/TimeZone;->getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 525
    invoke-direct {p0, p2, p1, p3}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(IZLcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 522
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal style: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 500
    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZone;->getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    aget p1, v0, v1

    const/4 p2, 0x1

    aget p2, v0, p2

    add-int/2addr p1, p2

    return p1
.end method

.method public getOffset(JZ[I)V
    .locals 11

    .line 346
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    if-nez p3, :cond_0

    .line 348
    aget v0, p4, v1

    int-to-long v2, v0

    add-long/2addr p1, v2

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 365
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v4, 0x1

    aget v5, v0, v1

    const/4 v10, 0x1

    aget v6, v0, v10

    const/4 v3, 0x2

    aget v7, v0, v3

    const/4 v3, 0x3

    aget v8, v0, v3

    const/4 v3, 0x5

    aget v9, v0, v3

    move-object v3, p0

    .line 366
    invoke-virtual/range {v3 .. v9}, Lcom/ibm/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v3

    aget v4, p4, v1

    sub-int/2addr v3, v4

    aput v3, p4, v10

    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 370
    aget v3, p4, v10

    if-nez v3, :cond_1

    goto :goto_1

    .line 374
    :cond_1
    aget v3, p4, v10

    int-to-long v3, v3

    sub-long/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iput-object p1, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void

    .line 414
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
