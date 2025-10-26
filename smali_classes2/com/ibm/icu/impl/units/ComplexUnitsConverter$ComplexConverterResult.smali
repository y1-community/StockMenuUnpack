.class public Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
.super Ljava/lang/Object;
.source "ComplexUnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/ComplexUnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplexConverterResult"
.end annotation


# instance fields
.field public final indexOfQuantity:I

.field public final measures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Measure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Measure;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->indexOfQuantity:I

    .line 154
    iput-object p2, p0, Lcom/ibm/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->measures:Ljava/util/List;

    return-void
.end method
