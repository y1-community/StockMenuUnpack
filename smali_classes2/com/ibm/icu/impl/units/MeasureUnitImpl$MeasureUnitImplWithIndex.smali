.class public Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureUnitImplWithIndex"
.end annotation


# instance fields
.field index:I

.field unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;


# direct methods
.method constructor <init>(ILcom/ibm/icu/impl/units/MeasureUnitImpl;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->index:I

    .line 370
    iput-object p2, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    return-void
.end method
