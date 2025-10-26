.class public final enum Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitialCompoundPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

.field public static final enum INITIAL_COMPOUND_PART_PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 337
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    const-string v1, "INITIAL_COMPOUND_PART_PER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    aput-object v0, v1, v2

    .line 333
    sput-object v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput p3, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->index:I

    return-void
.end method

.method public static getInitialCompoundPartFromTrieIndex(I)Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .locals 1

    add-int/lit16 p0, p0, -0xc0

    if-nez p0, :cond_0

    .line 348
    sget-object p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-object p0

    .line 351
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incorrect trieIndex"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .locals 1

    .line 333
    const-class v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .locals 1

    .line 333
    sget-object v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->$VALUES:[Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-object v0
.end method


# virtual methods
.method public getTrieIndex()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->index:I

    add-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->index:I

    return v0
.end method
