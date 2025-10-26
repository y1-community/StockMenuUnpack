.class final Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaUnmountableReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "isGiveUp",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->this$0:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

    iput-object p2, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->$path:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->this$0:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;

    iget-object v0, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->$context:Landroid/content/Context;

    new-instance v1, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2$1;

    iget-object v2, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2;->$path:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1$2$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->access$showYesFormatDialog(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
