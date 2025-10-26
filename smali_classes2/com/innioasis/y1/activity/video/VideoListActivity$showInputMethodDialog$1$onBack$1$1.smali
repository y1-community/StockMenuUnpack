.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "VideoListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->onBack()V
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
        "com/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1",
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
.field final synthetic $name:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $oldName:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/innioasis/y1/activity/video/VideoListActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/activity/video/VideoListActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->$oldName:Ljava/lang/String;

    iput-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iput-object p3, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 772
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->$oldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setDisplayName(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 775
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->$oldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->getVideoPlayListByName(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 776
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->setPlaylistName(Ljava/lang/String;)V

    .line 777
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/database/Y1Repository;->upDateVideoList(Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getPlayListBySort(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    return-void
.end method
