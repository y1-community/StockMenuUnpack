.class final Lcom/ibm/icu/text/ListFormatter$ContextualHandler;
.super Ljava/lang/Object;
.source "ListFormatter.java"

# interfaces
.implements Lcom/ibm/icu/text/ListFormatter$PatternHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContextualHandler"
.end annotation


# instance fields
.field private final elseEndPattern:Ljava/lang/String;

.field private final elseTwoPattern:Ljava/lang/String;

.field private final regexp:Ljava/util/regex/Pattern;

.field private final thenEndPattern:Ljava/lang/String;

.field private final thenTwoPattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->regexp:Ljava/util/regex/Pattern;

    .line 470
    iput-object p2, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->thenTwoPattern:Ljava/lang/String;

    .line 471
    iput-object p3, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->elseTwoPattern:Ljava/lang/String;

    .line 472
    iput-object p4, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->thenEndPattern:Ljava/lang/String;

    .line 473
    iput-object p5, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->elseEndPattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->regexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->thenEndPattern:Ljava/lang/String;

    return-object p1

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->elseEndPattern:Ljava/lang/String;

    return-object p1
.end method

.method public getTwoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->regexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->thenTwoPattern:Ljava/lang/String;

    return-object p1

    .line 481
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter$ContextualHandler;->elseTwoPattern:Ljava/lang/String;

    return-object p1
.end method
