.class public final Lcom/innioasis/y1/base/BaseActivity$askShutdown$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "BaseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BaseActivity;->askShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/innioasis/y1/base/BaseActivity$askShutdown$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
        "longDown",
        "",
        "dialog",
        "Lcom/innioasis/y1/base/BaseDialog;",
        "keyCode",
        "",
        "repeatCount",
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
.field final synthetic this$0:Lcom/innioasis/y1/base/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1/base/BaseActivity<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/innioasis/y1/base/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/base/BaseActivity<",
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity$askShutdown$1;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    .line 818
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity$askShutdown$1;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseActivity;->getLongConfirmShutDown()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 821
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v0}, Lcom/innioasis/music/util/Other;->shutdown()V

    return-void
.end method

.method public longDown(Lcom/innioasis/y1/base/BaseDialog;II)Z
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0xf

    if-ne p3, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/2addr p2, v1

    if-eqz p2, :cond_2

    .line 830
    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseDialog;->dismiss()V

    .line 831
    iget-object p1, p0, Lcom/innioasis/y1/base/BaseActivity$askShutdown$1;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity;->sleepScreen()V

    :cond_2
    return v2
.end method
