.class Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberFormatterCacheEntry"
.end annotation


# instance fields
.field formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

.field perUnit:Lcom/ibm/icu/util/MeasureUnit;

.field type:I

.field unit:Lcom/ibm/icu/util/MeasureUnit;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
