.class public final enum Lcom/ibm/icu/text/DateFormat$HourCycle;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HourCycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DateFormat$HourCycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DateFormat$HourCycle;

.field public static final enum HOUR_CYCLE_11:Lcom/ibm/icu/text/DateFormat$HourCycle;

.field public static final enum HOUR_CYCLE_12:Lcom/ibm/icu/text/DateFormat$HourCycle;

.field public static final enum HOUR_CYCLE_23:Lcom/ibm/icu/text/DateFormat$HourCycle;

.field public static final enum HOUR_CYCLE_24:Lcom/ibm/icu/text/DateFormat$HourCycle;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 547
    new-instance v0, Lcom/ibm/icu/text/DateFormat$HourCycle;

    const-string v1, "HOUR_CYCLE_11"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_11:Lcom/ibm/icu/text/DateFormat$HourCycle;

    .line 553
    new-instance v1, Lcom/ibm/icu/text/DateFormat$HourCycle;

    const-string v3, "HOUR_CYCLE_12"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_12:Lcom/ibm/icu/text/DateFormat$HourCycle;

    .line 559
    new-instance v3, Lcom/ibm/icu/text/DateFormat$HourCycle;

    const-string v5, "HOUR_CYCLE_23"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_23:Lcom/ibm/icu/text/DateFormat$HourCycle;

    .line 565
    new-instance v5, Lcom/ibm/icu/text/DateFormat$HourCycle;

    const-string v7, "HOUR_CYCLE_24"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/DateFormat$HourCycle;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/DateFormat$HourCycle;->HOUR_CYCLE_24:Lcom/ibm/icu/text/DateFormat$HourCycle;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/text/DateFormat$HourCycle;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 542
    sput-object v7, Lcom/ibm/icu/text/DateFormat$HourCycle;->$VALUES:[Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat$HourCycle;
    .locals 1

    .line 542
    const-class v0, Lcom/ibm/icu/text/DateFormat$HourCycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DateFormat$HourCycle;
    .locals 1

    .line 542
    sget-object v0, Lcom/ibm/icu/text/DateFormat$HourCycle;->$VALUES:[Lcom/ibm/icu/text/DateFormat$HourCycle;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DateFormat$HourCycle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DateFormat$HourCycle;

    return-object v0
.end method
