.class final Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CapitalizationContextSink"
.end annotation


# instance fields
.field hasCapitalizationUsage:Z

.field final synthetic this$0:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->this$0:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;-><init>(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;)V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 7

    .line 114
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-static {}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    if-nez v2, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v3

    .line 121
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_2

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->this$0:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;

    invoke-static {v4}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->access$200(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    goto :goto_1

    :cond_2
    aget v3, v3, v6

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->this$0:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;

    invoke-static {v3}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;->access$300(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;)[Z

    move-result-object v3

    invoke-virtual {v2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result v2

    aput-boolean v6, v3, v2

    .line 128
    iput-boolean v6, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
