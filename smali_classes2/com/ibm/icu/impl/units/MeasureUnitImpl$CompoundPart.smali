.class public final enum Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompoundPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

.field public static final enum AND:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

.field public static final enum PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

.field public static final enum TIMES:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 263
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const-string v1, "PER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    .line 265
    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const-string v3, "TIMES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    .line 267
    new-instance v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const-string v5, "AND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 261
    sput-object v5, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    iput p3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->index:I

    return-void
.end method

.method public static getCompoundPartFromTrieIndex(I)Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;
    .locals 1

    add-int/lit8 p0, p0, -0x80

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 283
    sget-object p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object p0

    .line 285
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "CompoundPart index must be 0, 1 or 2"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 281
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object p0

    .line 279
    :cond_2
    sget-object p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;
    .locals 1

    .line 261
    const-class v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;
    .locals 1

    .line 261
    sget-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object v0
.end method


# virtual methods
.method public getTrieIndex()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->index:I

    add-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;->index:I

    return v0
.end method
