.class public final enum Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenericNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;


# instance fields
.field _fallbackTypeOf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 58
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LONG"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, "SHORT"

    aput-object v6, v2, v5

    const-string v7, "LOCATION"

    invoke-direct {v0, v7, v3, v2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 59
    new-instance v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v2, v4, v5, v7}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 60
    new-instance v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    new-array v7, v3, [Ljava/lang/String;

    invoke-direct {v4, v6, v1, v7}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v0, v6, v3

    aput-object v2, v6, v5

    aput-object v4, v6, v1

    .line 57
    sput-object v6, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    .line 57
    const-class v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    .line 57
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method


# virtual methods
.method public isFallbackTypeOf(Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;)Z
    .locals 5

    .line 68
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 70
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
