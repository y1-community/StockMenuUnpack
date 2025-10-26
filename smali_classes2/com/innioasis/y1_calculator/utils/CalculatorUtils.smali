.class public final Lcom/innioasis/y1_calculator/utils/CalculatorUtils;
.super Ljava/lang/Object;
.source "CalculatorUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0001.B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0008H\u0002J\u0008\u0010\u001d\u001a\u00020\u0019H\u0002J\u0008\u0010\u001e\u001a\u00020\u0019H\u0002J\u0016\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00080\"H\u0002J\u0008\u0010#\u001a\u00020\u0019H\u0002J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u0008H\u0002J\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00080\"J\u000e\u0010\'\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008J\u0008\u0010(\u001a\u00020\u0019H\u0002J\u0010\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020\u0008H\u0002J\u000e\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u0006J\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00080\"2\u0006\u0010%\u001a\u00020\u0008H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lcom/innioasis/y1_calculator/utils/CalculatorUtils;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "callback",
        "Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;",
        "<set-?>",
        "",
        "currentInput",
        "getCurrentInput",
        "()Ljava/lang/String;",
        "fullExpression",
        "getFullExpression",
        "historyList",
        "Ljava/util/LinkedList;",
        "maxHistory",
        "",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "appendNumber",
        "",
        "char",
        "appendOperator",
        "op",
        "calculate",
        "clear",
        "compute",
        "Ljava/math/BigDecimal;",
        "tokens",
        "",
        "delete",
        "evaluateExpression",
        "expr",
        "getHistory",
        "input",
        "loadHistory",
        "saveHistory",
        "record",
        "setCallback",
        "cb",
        "tokenize",
        "Callback",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

.field private final context:Landroid/content/Context;

.field private currentInput:Ljava/lang/String;

.field private fullExpression:Ljava/lang/String;

.field private final historyList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxHistory:I

.field private final sharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->context:Landroid/content/Context;

    const-string p1, ""

    .line 19
    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$sharedPreferences$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$sharedPreferences$2;-><init>(Lcom/innioasis/y1_calculator/utils/CalculatorUtils;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->sharedPreferences$delegate:Lkotlin/Lazy;

    const/16 p1, 0xa

    .line 28
    iput p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->maxHistory:I

    .line 29
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    .line 32
    invoke-direct {p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->loadHistory()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/innioasis/y1_calculator/utils/CalculatorUtils;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final appendNumber(Ljava/lang/String;)V
    .locals 6

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[0-9.]"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u975e\u6cd5\u8f93\u5165: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    const-string v1, "="

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    :cond_2
    const-string v0, "."

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 72
    :cond_3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    const-string p1, "0."

    .line 73
    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    return-void

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    const-string v4, "0"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 80
    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    return-void

    .line 85
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    return-void
.end method

.method private final appendOperator(Ljava/lang/String;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 91
    iget-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    if-eqz p1, :cond_2

    const-string v0, "\u8fd0\u7b97\u7b26\u524d\u7f3a\u5c11\u6570\u5b57"

    invoke-interface {p1, v0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;->onError(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    const-string v3, "="

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    return-void

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "+"

    aput-object v3, v0, v1

    const-string v1, "-"

    aput-object v1, v0, v2

    const-string v1, "*"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v3, "/"

    aput-object v3, v0, v1

    .line 103
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lastOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    goto :goto_2

    .line 107
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private final calculate()V
    .locals 4

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->evaluateExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->saveHistory(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;->onHistory(Ljava/util/List;)V

    goto :goto_2

    .line 134
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    if-eqz v0, :cond_3

    const-string v1, "\u8868\u8fbe\u5f0f\u4e0d\u5b8c\u6574"

    invoke-interface {v0, v1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 145
    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8ba1\u7b97\u9519\u8bef: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;->onError(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final clear()V
    .locals 1

    const-string v0, ""

    .line 124
    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    return-void
.end method

.method private final compute(Ljava/util/List;)Ljava/math/BigDecimal;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 172
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x1

    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "+"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "-"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "*"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "/"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "[0-9.]+"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_0
    :goto_1
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 198
    invoke-static {v0, v1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->compute$applyOp(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_2
    :goto_2
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_3

    invoke-static {v0, v1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->compute$applyOp(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_2

    .line 204
    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 205
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "numStack.pop()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1

    .line 204
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8868\u8fbe\u5f0f\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static final compute$applyOp(Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/math/BigDecimal;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 178
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    .line 179
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 185
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    .line 186
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v0, p1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "\u9664\u4ee50"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v2, "-"

    .line 180
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v2, "+"

    .line 180
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v2, "*"

    .line 180
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 190
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 188
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u77e5\u8fd0\u7b97\u7b26 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method private final delete()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private final evaluateExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->compute(Ljava/util/List;)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x6

    .line 156
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result.setScale(6, Round\u2026ngZeros().toPlainString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8868\u8fbe\u5f0f\u4e3a\u7a7a"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->sharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-sharedPreferences>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final loadHistory()V
    .locals 3

    .line 221
    invoke-direct {p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "history"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 222
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 224
    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method private final saveHistory(Ljava/lang/String;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->maxHistory:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "history"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final tokenize(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([0-9.]+|[+\\-*/])"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 164
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$tokenize$1;->INSTANCE:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$tokenize$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getCurrentInput()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullExpression()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    return-object v0
.end method

.method public final getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->historyList:Ljava/util/LinkedList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final input(Ljava/lang/String;)V
    .locals 2

    const-string v0, "char"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const v1, 0x107eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->delete()V

    goto :goto_1

    :cond_2
    const-string v0, "C"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->clear()V

    goto :goto_1

    :cond_4
    const-string v0, "="

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 46
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->calculate()V

    goto :goto_1

    :cond_6
    const-string v0, "/"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_7
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_8
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_9
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 48
    :goto_0
    invoke-direct {p0, p1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->appendNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_a
    invoke-direct {p0, p1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->appendOperator(Ljava/lang/String;)V

    .line 50
    :goto_1
    iget-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->currentInput:Ljava/lang/String;

    iget-object v1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->fullExpression:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;->onUpdate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final setCallback(Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/innioasis/y1_calculator/utils/CalculatorUtils;->callback:Lcom/innioasis/y1_calculator/utils/CalculatorUtils$Callback;

    return-void
.end method
