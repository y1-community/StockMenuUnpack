.class public final enum Lcom/ibm/icu/util/BasicTimeZone$LocalOption;
.super Ljava/lang/Enum;
.source "BasicTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/BasicTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/BasicTimeZone$LocalOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

.field public static final enum DAYLIGHT_FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

.field public static final enum DAYLIGHT_LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

.field public static final enum FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

.field public static final enum LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

.field public static final enum STANDARD_FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

.field public static final enum STANDARD_LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;


# instance fields
.field private flagVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 551
    new-instance v0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const-string v1, "FORMER"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    .line 557
    new-instance v1, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const-string v4, "LATTER"

    const/4 v5, 0x1

    const/16 v6, 0xc

    invoke-direct {v1, v4, v5, v6}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    .line 566
    new-instance v4, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const-string v6, "STANDARD_FORMER"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->STANDARD_FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    .line 575
    new-instance v6, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const-string v9, "STANDARD_LATTER"

    const/4 v10, 0x3

    const/16 v11, 0xd

    invoke-direct {v6, v9, v10, v11}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->STANDARD_LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    .line 584
    new-instance v9, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const-string v11, "DAYLIGHT_FORMER"

    const/4 v12, 0x7

    invoke-direct {v9, v11, v3, v12}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_FORMER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    .line 593
    new-instance v11, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const-string v12, "DAYLIGHT_LATTER"

    const/16 v13, 0xf

    invoke-direct {v11, v12, v8, v13}, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_LATTER:Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v7

    aput-object v6, v12, v10

    aput-object v9, v12, v3

    aput-object v11, v12, v8

    .line 545
    sput-object v12, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->$VALUES:[Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 597
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 598
    iput p3, p0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->flagVal:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/util/BasicTimeZone$LocalOption;)I
    .locals 0

    .line 545
    iget p0, p0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->flagVal:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/BasicTimeZone$LocalOption;
    .locals 1

    .line 545
    const-class v0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/BasicTimeZone$LocalOption;
    .locals 1

    .line 545
    sget-object v0, Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->$VALUES:[Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/BasicTimeZone$LocalOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/BasicTimeZone$LocalOption;

    return-object v0
.end method
