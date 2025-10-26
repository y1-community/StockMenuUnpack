.class public Lcom/ibm/icu/impl/units/UnitsData$Constants;
.super Ljava/lang/Object;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field public static final CATEGORY_TABLE_NAME:Ljava/lang/String; = "unitQuantities"

.field public static final CONVERSION_UNIT_TABLE_NAME:Ljava/lang/String; = "convertUnits"

.field public static final DEFAULT_REGION:Ljava/lang/String; = "001"

.field public static final DEFAULT_USAGE:Ljava/lang/String; = "default"

.field public static final UNIT_PREFERENCE_TABLE_NAME:Ljava/lang/String; = "unitPreferenceData"

.field public static final kCompoundPartOffset:I = 0x80

.field public static final kInitialCompoundPartOffset:I = 0xc0

.field public static final kPowerPartOffset:I = 0x100

.field public static final kPrefixOffset:I = 0x40

.field public static final kSimpleUnitOffset:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
