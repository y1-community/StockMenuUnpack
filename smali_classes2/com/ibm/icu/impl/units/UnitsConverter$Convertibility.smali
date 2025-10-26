.class public final enum Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;
.super Ljava/lang/Enum;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Convertibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

.field public static final enum CONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

.field public static final enum RECIPROCAL:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

.field public static final enum UNCONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 145
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    const-string v1, "CONVERTIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    .line 146
    new-instance v1, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    const-string v3, "RECIPROCAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    .line 147
    new-instance v3, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    const-string v5, "UNCONVERTIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->UNCONVERTIBLE:Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 144
    sput-object v5, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->$VALUES:[Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;
    .locals 1

    .line 144
    const-class v0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;
    .locals 1

    .line 144
    sget-object v0, Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->$VALUES:[Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/units/UnitsConverter$Convertibility;

    return-object v0
.end method
