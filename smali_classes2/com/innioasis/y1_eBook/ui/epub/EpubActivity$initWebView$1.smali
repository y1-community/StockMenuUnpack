.class public final Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;
.super Landroid/webkit/WebViewClient;
.source "EpubActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "shouldInterceptRequest",
        "Landroid/webkit/WebResourceResponse;",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    .line 65
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$setZoom(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file:///android_assets"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 68
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u8d44\u6e90 url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->access$getInfo$p(Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;)Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->getImageByUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity$initWebView$1;->this$0:Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;

    const-string v1, "\u672a\u627e\u5230\u8d44\u6e90"

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/epub/EpubActivity;->showToast(Ljava/lang/String;)V

    return-object v3

    .line 78
    :cond_0
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
