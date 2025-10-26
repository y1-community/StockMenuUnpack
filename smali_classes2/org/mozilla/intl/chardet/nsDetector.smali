.class public Lorg/mozilla/intl/chardet/nsDetector;
.super Lorg/mozilla/intl/chardet/nsPSMDetector;
.source "nsDetector.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetector;


# instance fields
.field mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>(I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsDetector;->HandleData([BI)Z

    .line 53
    iget-boolean p1, p0, Lorg/mozilla/intl/chardet/nsDetector;->mDone:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public Done()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    return-void
.end method

.method public Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method

.method public Report(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1}, Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;->Notify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAscii([BI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 69
    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
