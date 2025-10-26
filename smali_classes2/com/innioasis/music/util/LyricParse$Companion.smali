.class public final Lcom/innioasis/music/util/LyricParse$Companion;
.super Ljava/lang/Object;
.source "LyricParse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/util/LyricParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/innioasis/music/util/LyricParse$Companion;",
        "",
        "()V",
        "judgeCharset",
        "Ljava/nio/charset/Charset;",
        "file",
        "Ljava/io/File;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/music/util/LyricParse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final judgeCharset(Ljava/io/File;)Ljava/nio/charset/Charset;
    .locals 4

    const-string v0, "UTF-8"

    const-string v1, "file"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-static {}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    move-result-object v1

    .line 38
    new-instance v2, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    check-cast v2, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-virtual {v1, v2}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 39
    invoke-static {}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;

    move-result-object v2

    check-cast v2, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-virtual {v1, v2}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 40
    invoke-static {}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 41
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object p1

    if-nez p1, :cond_0

    .line 43
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_0
    const-string v1, "{\n                val de\u2026me(\"UTF-8\")\n            }"

    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "{\n                Charse\u2026me(\"UTF-8\")\n            }"

    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
