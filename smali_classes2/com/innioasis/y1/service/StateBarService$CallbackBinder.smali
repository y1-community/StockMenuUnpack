.class public final Lcom/innioasis/y1/service/StateBarService$CallbackBinder;
.super Landroid/os/Binder;
.source "StateBarService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/service/StateBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallbackBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/innioasis/y1/service/StateBarService$CallbackBinder;",
        "Landroid/os/Binder;",
        "(Lcom/innioasis/y1/service/StateBarService;)V",
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
.field final synthetic this$0:Lcom/innioasis/y1/service/StateBarService;


# direct methods
.method public constructor <init>(Lcom/innioasis/y1/service/StateBarService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/innioasis/y1/service/StateBarService$CallbackBinder;->this$0:Lcom/innioasis/y1/service/StateBarService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
