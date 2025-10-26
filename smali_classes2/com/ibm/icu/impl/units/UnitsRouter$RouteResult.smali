.class public Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;
.super Ljava/lang/Object;
.source "UnitsRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteResult"
.end annotation


# instance fields
.field public final complexConverterResult:Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

.field public final outputUnit:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

.field final synthetic this$0:Lcom/ibm/icu/impl/units/UnitsRouter;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/units/UnitsRouter;Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Lcom/ibm/icu/impl/units/MeasureUnitImpl;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;->this$0:Lcom/ibm/icu/impl/units/UnitsRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;->complexConverterResult:Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    .line 190
    iput-object p3, p0, Lcom/ibm/icu/impl/units/UnitsRouter$RouteResult;->outputUnit:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    return-void
.end method
