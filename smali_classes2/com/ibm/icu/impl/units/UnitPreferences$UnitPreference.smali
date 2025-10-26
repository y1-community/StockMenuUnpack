.class public Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;
.super Ljava/lang/Object;
.source "UnitPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitPreference"
.end annotation


# instance fields
.field private final geq:Ljava/math/BigDecimal;

.field private final skeleton:Ljava/lang/String;

.field private final unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->unit:Ljava/lang/String;

    .line 104
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->geq:Ljava/math/BigDecimal;

    .line 105
    iput-object p3, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->skeleton:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGeq()Ljava/math/BigDecimal;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->geq:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getSkeleton()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->skeleton:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;->unit:Ljava/lang/String;

    return-object v0
.end method
