.class public final enum Lcom/ibm/icu/text/TimeZoneNames$NameType;
.super Ljava/lang/Enum;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 94
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v1, "LONG_GENERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 100
    new-instance v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v3, "LONG_STANDARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 106
    new-instance v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v5, "LONG_DAYLIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 112
    new-instance v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v7, "SHORT_GENERIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 118
    new-instance v7, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v9, "SHORT_STANDARD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 124
    new-instance v9, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v11, "SHORT_DAYLIGHT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 130
    new-instance v11, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string v13, "EXEMPLAR_LOCATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 88
    sput-object v13, Lcom/ibm/icu/text/TimeZoneNames$NameType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 1

    .line 88
    const-class v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 1

    .line 88
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneNames$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method
