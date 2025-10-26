.class public final Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "AllAudiobooksActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    .line 147
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public confirm()V
    .locals 10

    .line 150
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;

    iget-object v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method
