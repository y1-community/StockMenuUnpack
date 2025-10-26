.class Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableFormatsSink"
.end annotation


# instance fields
.field returnInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;

.field final synthetic this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->returnInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 7

    .line 280
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-static {v3, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$400(Lcom/ibm/icu/text/DateTimePatternGenerator;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-static {v3, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$500(Lcom/ibm/icu/text/DateTimePatternGenerator;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    xor-int/lit8 v5, p3, 0x1

    iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AvailableFormatsSink;->returnInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
