.class Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
.super Ljava/lang/Object;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractCorePatternResult"
.end annotation


# instance fields
.field coreUnit:Ljava/lang/String;

.field joinerChar:C

.field placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/number/LongNameHandler$1;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;-><init>()V

    return-void
.end method
