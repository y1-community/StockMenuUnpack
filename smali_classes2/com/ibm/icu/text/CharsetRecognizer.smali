.class abstract Lcom/ibm/icu/text/CharsetRecognizer;
.super Ljava/lang/Object;
.source "CharsetRecognizer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
.end method
