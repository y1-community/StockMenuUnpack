.class final Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;
.super Ljava/lang/Object;
.source "HtmlCharsetDetector.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Notify(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "CHARSET = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
