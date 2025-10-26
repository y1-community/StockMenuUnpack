.class final enum Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
.super Ljava/lang/Enum;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NameTypeIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field static final values:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 699
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v1, "EXEMPLAR_LOCATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v3, "LONG_GENERIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v3, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v5, "LONG_STANDARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v5, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v7, "LONG_DAYLIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v7, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v9, "SHORT_GENERIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v9, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v11, "SHORT_STANDARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v11, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string v13, "SHORT_DAYLIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 698
    sput-object v13, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    .line 700
    invoke-static {}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values()[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .locals 1

    .line 698
    const-class v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .locals 1

    .line 698
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-object v0
.end method
