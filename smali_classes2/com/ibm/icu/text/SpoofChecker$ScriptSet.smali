.class Lcom/ibm/icu/text/SpoofChecker$ScriptSet;
.super Ljava/util/BitSet;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptSet"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2029
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    return-void
.end method


# virtual methods
.method public and(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2068
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->clear(II)V

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0xc1

    .line 2069
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->clear(II)V

    return-void
.end method

.method public appendStringTo(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "{ "

    .line 2081
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {p0}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "- "

    .line 2083
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2084
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "* "

    .line 2085
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc1

    if-ge v0, v1, :cond_3

    .line 2088
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2089
    invoke-static {v0}, Lcom/ibm/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 2090
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "}"

    .line 2094
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public isFull()Z
    .locals 2

    .line 2077
    invoke-virtual {p0}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->cardinality()I

    move-result v0

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAll()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc1

    .line 2073
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ScriptSet "

    .line 2100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SpoofChecker$ScriptSet;->appendStringTo(Ljava/lang/StringBuilder;)V

    const-string v1, ">"

    .line 2102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
