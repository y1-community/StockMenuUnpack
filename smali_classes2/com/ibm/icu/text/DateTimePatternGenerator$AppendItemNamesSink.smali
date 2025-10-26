.class Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendItemNamesSink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator;)V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 7

    .line 230
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$000(Lcom/ibm/icu/impl/UResource$Key;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 241
    :cond_1
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->access$100()I

    move-result v3

    div-int v3, v2, v3

    .line 242
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$200()[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v4

    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->access$100()I

    move-result v5

    rem-int/2addr v2, v5

    aget-object v2, v4, v2

    .line 243
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    const/4 v5, 0x0

    .line 244
    :goto_1
    invoke-interface {v4, v5, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "dn"

    .line 245
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 246
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-virtual {v4, v3, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFieldDisplayName(ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 247
    iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$AppendItemNamesSink;->this$0:Lcom/ibm/icu/text/DateTimePatternGenerator;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v2, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$300(Lcom/ibm/icu/text/DateTimePatternGenerator;ILcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
