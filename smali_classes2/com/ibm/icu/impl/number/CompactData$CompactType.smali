.class public final enum Lcom/ibm/icu/impl/number/CompactData$CompactType;
.super Ljava/lang/Enum;
.source "CompactData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/CompactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/CompactData$CompactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/CompactData$CompactType;

.field public static final enum CURRENCY:Lcom/ibm/icu/impl/number/CompactData$CompactType;

.field public static final enum DECIMAL:Lcom/ibm/icu/impl/number/CompactData$CompactType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/number/CompactData$CompactType;

    const-string v1, "DECIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/CompactData$CompactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/CompactData$CompactType;->DECIMAL:Lcom/ibm/icu/impl/number/CompactData$CompactType;

    new-instance v1, Lcom/ibm/icu/impl/number/CompactData$CompactType;

    const-string v3, "CURRENCY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/number/CompactData$CompactType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/number/CompactData$CompactType;->CURRENCY:Lcom/ibm/icu/impl/number/CompactData$CompactType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/impl/number/CompactData$CompactType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 24
    sput-object v3, Lcom/ibm/icu/impl/number/CompactData$CompactType;->$VALUES:[Lcom/ibm/icu/impl/number/CompactData$CompactType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/CompactData$CompactType;
    .locals 1

    .line 24
    const-class v0, Lcom/ibm/icu/impl/number/CompactData$CompactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/CompactData$CompactType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/CompactData$CompactType;
    .locals 1

    .line 24
    sget-object v0, Lcom/ibm/icu/impl/number/CompactData$CompactType;->$VALUES:[Lcom/ibm/icu/impl/number/CompactData$CompactType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/CompactData$CompactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/CompactData$CompactType;

    return-object v0
.end method
