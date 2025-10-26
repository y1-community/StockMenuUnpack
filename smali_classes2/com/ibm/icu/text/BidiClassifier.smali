.class public Lcom/ibm/icu/text/BidiClassifier;
.super Ljava/lang/Object;
.source "BidiClassifier.java"


# instance fields
.field protected context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ibm/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public classify(I)I
    .locals 0

    const/16 p1, 0x17

    return p1
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ibm/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/ibm/icu/text/BidiClassifier;->context:Ljava/lang/Object;

    return-void
.end method
