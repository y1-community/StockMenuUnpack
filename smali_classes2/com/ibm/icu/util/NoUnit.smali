.class public final Lcom/ibm/icu/util/NoUnit;
.super Ljava/lang/Object;
.source "NoUnit.java"


# static fields
.field public static final BASE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PERCENT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PERMILLE:Lcom/ibm/icu/util/MeasureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->PERCENT:Lcom/ibm/icu/util/MeasureUnit;

    sput-object v0, Lcom/ibm/icu/util/NoUnit;->PERCENT:Lcom/ibm/icu/util/MeasureUnit;

    .line 44
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->PERMILLE:Lcom/ibm/icu/util/MeasureUnit;

    sput-object v0, Lcom/ibm/icu/util/NoUnit;->PERMILLE:Lcom/ibm/icu/util/MeasureUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
