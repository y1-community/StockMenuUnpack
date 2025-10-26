.class public final Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeasurementSystem"
.end annotation


# static fields
.field public static final SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

.field public static final UK:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

.field public static final US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    .line 342
    new-instance v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    .line 348
    new-instance v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->UK:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
