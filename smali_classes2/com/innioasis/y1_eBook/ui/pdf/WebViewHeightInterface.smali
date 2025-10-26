.class public final Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;
.super Ljava/lang/Object;
.source "WebViewHeightInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;",
        "",
        "listener",
        "Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;",
        "(Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;)V",
        "updateHeight",
        "",
        "height",
        "",
        "WebViewHeightListener",
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
.field private final listener:Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;


# direct methods
.method public static synthetic $r8$lambda$P4kBtVHG0W9TmWmFdYtBpl5zHfM(Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;->updateHeight$lambda-0(Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;->listener:Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;

    return-void
.end method

.method private static final updateHeight$lambda-0(Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;->listener:Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;

    invoke-interface {p0, p1}, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;->onHeightReceived(I)V

    return-void
.end method


# virtual methods
.method public final updateHeight(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;->listener:Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$WebViewHeightListener;

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1_eBook/ui/pdf/WebViewHeightInterface;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
