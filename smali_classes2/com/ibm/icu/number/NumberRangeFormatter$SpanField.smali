.class public final Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;
.super Lcom/ibm/icu/text/UFormat$SpanField;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberRangeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanField"
.end annotation


# static fields
.field public static final NUMBER_RANGE_SPAN:Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;

.field private static final serialVersionUID:J = 0x796fa7e37ddf5f19L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 174
    new-instance v0, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;

    const-string v1, "number-range-span"

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/UFormat$SpanField;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;->NUMBER_RANGE_SPAN:Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 192
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
