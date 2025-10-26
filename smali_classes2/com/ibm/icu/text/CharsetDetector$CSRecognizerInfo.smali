.class Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSRecognizerInfo"
.end annotation


# instance fields
.field isDefaultEnabled:Z

.field recognizer:Lcom/ibm/icu/text/CharsetRecognizer;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    .line 468
    iput-boolean p2, p0, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    return-void
.end method
