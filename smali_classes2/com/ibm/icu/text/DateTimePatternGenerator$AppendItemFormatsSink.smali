.class Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendItemFormatsSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    const-class v0, Lcom/ibm/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator;)V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 216
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 217
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-static {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendFormatNumber(Lcom/ibm/icu/impl/UResource$Key;)I

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendItemFormat(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
