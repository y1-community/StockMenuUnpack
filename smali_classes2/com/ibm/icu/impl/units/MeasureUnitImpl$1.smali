.class synthetic Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$CompoundPart:[I

.field static final synthetic $SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$UnitsParser$Token$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 582
    invoke-static {}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->values()[Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$UnitsParser$Token$Type:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_POWER_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$UnitsParser$Token$Type:[I

    sget-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_PREFIX:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$UnitsParser$Token$Type:[I

    sget-object v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_SIMPLE_UNIT:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    :catch_2
    invoke-static {}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->values()[Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$CompoundPart:[I

    :try_start_3
    sget-object v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$CompoundPart:[I

    sget-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$1;->$SwitchMap$com$ibm$icu$impl$units$MeasureUnitImpl$CompoundPart:[I

    sget-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
