.class final enum Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum TYPE_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum TYPE_INITIAL_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum TYPE_POWER_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum TYPE_PREFIX:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum TYPE_SIMPLE_UNIT:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum TYPE_UNDEFINED:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 729
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_UNDEFINED:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 730
    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v3, "TYPE_PREFIX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_PREFIX:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 732
    new-instance v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v5, "TYPE_COMPOUND_PART"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 734
    new-instance v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v7, "TYPE_INITIAL_COMPOUND_PART"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 735
    new-instance v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v9, "TYPE_POWER_PART"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_POWER_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 736
    new-instance v9, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v11, "TYPE_SIMPLE_UNIT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_SIMPLE_UNIT:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 728
    sput-object v11, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 728
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .locals 1

    .line 728
    const-class v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .locals 1

    .line 728
    sget-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0
.end method
