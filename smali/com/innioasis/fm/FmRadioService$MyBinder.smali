.class public final Lcom/innioasis/fm/FmRadioService$MyBinder;
.super Landroid/os/Binder;
.source "FmRadioService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/fm/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/innioasis/fm/FmRadioService$MyBinder;",
        "Landroid/os/Binder;",
        "(Lcom/innioasis/fm/FmRadioService;)V",
        "getService",
        "Lcom/innioasis/fm/FmRadioService;",
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
.field final synthetic this$0:Lcom/innioasis/fm/FmRadioService;


# direct methods
.method public constructor <init>(Lcom/innioasis/fm/FmRadioService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/innioasis/fm/FmRadioService$MyBinder;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService()Lcom/innioasis/fm/FmRadioService;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/innioasis/fm/FmRadioService$MyBinder;->this$0:Lcom/innioasis/fm/FmRadioService;

    invoke-virtual {v0}, Lcom/innioasis/fm/FmRadioService;->getSelf()Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    return-object v0
.end method
