.class Lcom/ibm/icu/impl/StaticUnicodeSets$ParseDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "StaticUnicodeSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/StaticUnicodeSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    const-class v0, Lcom/ibm/icu/impl/StaticUnicodeSets;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 10

    .line 182
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "date"

    .line 184
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v2

    const/4 v3, 0x0

    .line 189
    :goto_1
    invoke-interface {v2, v3, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "lenient"

    .line 190
    invoke-virtual {p1, v4}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 191
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v5

    const/4 v6, 0x0

    .line 192
    :goto_2
    invoke-interface {v5}, Lcom/ibm/icu/impl/UResource$Array;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 193
    invoke-interface {v5, v6, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 194
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-eqz v4, :cond_1

    .line 198
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    goto :goto_3

    :cond_1
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    :goto_3
    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    const/16 v8, 0x2c

    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_4

    if-eqz v4, :cond_3

    .line 200
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    goto :goto_4

    :cond_3
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    :goto_4
    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    const/16 v8, 0x2b

    .line 201
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_5

    .line 202
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const/16 v8, 0x2d

    .line 203
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_6

    .line 204
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const/16 v8, 0x24

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_7

    .line 206
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/16 v8, 0xa3

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 208
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const/16 v8, 0x20b9

    .line 209
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_9

    .line 210
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const/16 v8, 0xa5

    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_a

    .line 212
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const/16 v8, 0x20a9

    .line 213
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_b

    .line 214
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const/16 v8, 0x25

    .line 215
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_c

    .line 216
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERCENT_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/16 v8, 0x2030

    .line 217
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_d

    .line 218
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERMILLE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const/16 v8, 0x2019

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_e

    .line 220
    sget-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->APOSTROPHE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v8, v7}, Lcom/ibm/icu/impl/StaticUnicodeSets;->access$000(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 223
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown class of parse lenients: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_10
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method
