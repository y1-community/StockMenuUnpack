.class final Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;
.super Ljava/lang/Object;
.source "PluralFormat.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PluralSelectorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/PluralFormat;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/PluralFormat;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Lcom/ibm/icu/text/PluralFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;)V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 0

    .line 560
    check-cast p1, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    .line 561
    iget-object p2, p0, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;->this$0:Lcom/ibm/icu/text/PluralFormat;

    invoke-static {p2}, Lcom/ibm/icu/text/PluralFormat;->access$000(Lcom/ibm/icu/text/PluralFormat;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
