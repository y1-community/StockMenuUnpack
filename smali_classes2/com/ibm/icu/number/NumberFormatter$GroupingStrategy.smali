.class public final enum Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum MIN2:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum OFF:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum ON_ALIGNED:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum THOUSANDS:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 277
    new-instance v0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->OFF:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    .line 294
    new-instance v1, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    const-string v3, "MIN2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    .line 310
    new-instance v3, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    const-string v5, "AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    .line 327
    new-instance v5, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    const-string v7, "ON_ALIGNED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    .line 336
    new-instance v7, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    const-string v9, "THOUSANDS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 270
    sput-object v9, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;
    .locals 1

    .line 270
    const-class v0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;
    .locals 1

    .line 270
    sget-object v0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->$VALUES:[Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v0}, [Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0
.end method
