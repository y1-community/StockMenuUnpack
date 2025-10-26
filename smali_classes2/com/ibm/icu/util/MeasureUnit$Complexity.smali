.class public final enum Lcom/ibm/icu/util/MeasureUnit$Complexity;
.super Ljava/lang/Enum;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Complexity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/MeasureUnit$Complexity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/MeasureUnit$Complexity;

.field public static final enum COMPOUND:Lcom/ibm/icu/util/MeasureUnit$Complexity;

.field public static final enum MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

.field public static final enum SINGLE:Lcom/ibm/icu/util/MeasureUnit$Complexity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 97
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/MeasureUnit$Complexity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit$Complexity;->SINGLE:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    .line 104
    new-instance v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const-string v3, "COMPOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/MeasureUnit$Complexity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->COMPOUND:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    .line 111
    new-instance v3, Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const-string v5, "MIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/MeasureUnit$Complexity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/util/MeasureUnit$Complexity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 91
    sput-object v5, Lcom/ibm/icu/util/MeasureUnit$Complexity;->$VALUES:[Lcom/ibm/icu/util/MeasureUnit$Complexity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit$Complexity;
    .locals 1

    .line 91
    const-class v0, Lcom/ibm/icu/util/MeasureUnit$Complexity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/MeasureUnit$Complexity;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/MeasureUnit$Complexity;
    .locals 1

    .line 91
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit$Complexity;->$VALUES:[Lcom/ibm/icu/util/MeasureUnit$Complexity;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/MeasureUnit$Complexity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/MeasureUnit$Complexity;

    return-object v0
.end method
