.class public Lcom/ibm/icu/impl/units/UnitsConverter$ConversionInfo;
.super Ljava/lang/Object;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionInfo"
.end annotation


# instance fields
.field public conversionRate:Ljava/math/BigDecimal;

.field public offset:Ljava/math/BigDecimal;

.field public reciprocal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
