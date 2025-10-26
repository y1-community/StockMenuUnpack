.class public final Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencySpacingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;,
        Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

.field private static final DEFAULT_CTX_MATCH:Ljava/lang/String; = "[:digit:]"

.field private static final DEFAULT_CUR_MATCH:Ljava/lang/String; = "[:letter:]"

.field private static final DEFAULT_INSERT:Ljava/lang/String; = " "


# instance fields
.field public hasAfterCurrency:Z

.field public hasBeforeCurrency:Z

.field private final symbols:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    const-class v0, Lcom/ibm/icu/impl/CurrencyData;

    .line 100
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "[:letter:]"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v4, "[:digit:]"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v5, " "

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v5, v1, v2

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    .line 53
    iput-boolean v1, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    .line 53
    iput-boolean v1, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 72
    :goto_0
    sget-object v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v3

    if-ge v0, v3, :cond_1

    const/4 v3, 0x0

    .line 73
    :goto_1
    sget-object v4, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, p1, v2

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getAfterSymbols()[Ljava/lang/String;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBeforeSymbols()[Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setSymbolIfNull(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->ordinal()I

    move-result p1

    .line 82
    invoke-virtual {p2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result p2

    .line 83
    iget-object v0, p0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->symbols:[[Ljava/lang/String;

    aget-object v1, v0, p1

    aget-object v1, v1, p2

    if-nez v1, :cond_0

    .line 84
    aget-object p1, v0, p1

    aput-object p3, p1, p2

    :cond_0
    return-void
.end method
