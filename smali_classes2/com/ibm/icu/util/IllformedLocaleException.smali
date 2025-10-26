.class public Lcom/ibm/icu/util/IllformedLocaleException;
.super Ljava/lang/RuntimeException;
.source "IllformedLocaleException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _errIdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    iput p2, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/ibm/icu/util/IllformedLocaleException;->_errIdx:I

    return v0
.end method
