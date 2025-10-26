.class final Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PlayerActivity;->longConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
