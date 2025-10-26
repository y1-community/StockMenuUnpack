.class final Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "CompactData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/CompactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompactDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field data:Lcom/ibm/icu/impl/number/CompactData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const-class v0, Lcom/ibm/icu/impl/number/CompactData;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/CompactData;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 9

    .line 182
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    .line 188
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v3}, Lcom/ibm/icu/impl/number/CompactData;->access$000(Lcom/ibm/icu/impl/number/CompactData;)[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 192
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    const/4 v5, 0x0

    .line 193
    :goto_1
    invoke-interface {v4, v5, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    .line 197
    iget-object v7, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v7}, Lcom/ibm/icu/impl/number/CompactData;->access$100(Lcom/ibm/icu/impl/number/CompactData;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6}, Lcom/ibm/icu/impl/number/CompactData;->access$200(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "<USE FALLBACK>"

    .line 209
    :cond_1
    iget-object v8, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v8}, Lcom/ibm/icu/impl/number/CompactData;->access$100(Lcom/ibm/icu/impl/number/CompactData;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v6}, Lcom/ibm/icu/impl/number/CompactData;->access$200(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result v6

    aput-object v7, v8, v6

    if-nez v3, :cond_2

    .line 214
    invoke-static {v7}, Lcom/ibm/icu/impl/number/CompactData;->access$300(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    int-to-byte v3, v6

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 222
    :cond_3
    iget-object v4, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v4}, Lcom/ibm/icu/impl/number/CompactData;->access$000(Lcom/ibm/icu/impl/number/CompactData;)[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-nez v4, :cond_5

    .line 223
    iget-object v4, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v4}, Lcom/ibm/icu/impl/number/CompactData;->access$000(Lcom/ibm/icu/impl/number/CompactData;)[B

    move-result-object v4

    aput-byte v3, v4, v2

    .line 224
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v3}, Lcom/ibm/icu/impl/number/CompactData;->access$400(Lcom/ibm/icu/impl/number/CompactData;)B

    move-result v3

    if-le v2, v3, :cond_4

    .line 225
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v3, v2}, Lcom/ibm/icu/impl/number/CompactData;->access$402(Lcom/ibm/icu/impl/number/CompactData;B)B

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-static {v2, v0}, Lcom/ibm/icu/impl/number/CompactData;->access$502(Lcom/ibm/icu/impl/number/CompactData;Z)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
