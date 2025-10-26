.class final Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "StandardPluralRanges.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/range/StandardPluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralRangeSetsDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field output:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;->output:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 47
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;->output:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
