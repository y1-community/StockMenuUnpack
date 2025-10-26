.class public final enum Lcom/ibm/icu/util/Region$RegionType;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/Region$RegionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum CONTINENT:Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum DEPRECATED:Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum GROUPING:Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum SUBCONTINENT:Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum TERRITORY:Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum UNKNOWN:Lcom/ibm/icu/util/Region$RegionType;

.field public static final enum WORLD:Lcom/ibm/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 76
    new-instance v0, Lcom/ibm/icu/util/Region$RegionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/Region$RegionType;->UNKNOWN:Lcom/ibm/icu/util/Region$RegionType;

    .line 82
    new-instance v1, Lcom/ibm/icu/util/Region$RegionType;

    const-string v3, "TERRITORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/Region$RegionType;->TERRITORY:Lcom/ibm/icu/util/Region$RegionType;

    .line 88
    new-instance v3, Lcom/ibm/icu/util/Region$RegionType;

    const-string v5, "WORLD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/Region$RegionType;->WORLD:Lcom/ibm/icu/util/Region$RegionType;

    .line 93
    new-instance v5, Lcom/ibm/icu/util/Region$RegionType;

    const-string v7, "CONTINENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/util/Region$RegionType;->CONTINENT:Lcom/ibm/icu/util/Region$RegionType;

    .line 98
    new-instance v7, Lcom/ibm/icu/util/Region$RegionType;

    const-string v9, "SUBCONTINENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/util/Region$RegionType;->SUBCONTINENT:Lcom/ibm/icu/util/Region$RegionType;

    .line 104
    new-instance v9, Lcom/ibm/icu/util/Region$RegionType;

    const-string v11, "GROUPING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/util/Region$RegionType;->GROUPING:Lcom/ibm/icu/util/Region$RegionType;

    .line 110
    new-instance v11, Lcom/ibm/icu/util/Region$RegionType;

    const-string v13, "DEPRECATED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/util/Region$RegionType;->DEPRECATED:Lcom/ibm/icu/util/Region$RegionType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ibm/icu/util/Region$RegionType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 71
    sput-object v13, Lcom/ibm/icu/util/Region$RegionType;->$VALUES:[Lcom/ibm/icu/util/Region$RegionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/Region$RegionType;
    .locals 1

    .line 71
    const-class v0, Lcom/ibm/icu/util/Region$RegionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Region$RegionType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/Region$RegionType;
    .locals 1

    .line 71
    sget-object v0, Lcom/ibm/icu/util/Region$RegionType;->$VALUES:[Lcom/ibm/icu/util/Region$RegionType;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/Region$RegionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/Region$RegionType;

    return-object v0
.end method
