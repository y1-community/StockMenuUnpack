.class public final Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/AudioPlayerActivity;-><init>()V
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
        "com/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1",
        "Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/AudioPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;->this$0:Lcom/innioasis/y1/activity/AudioPlayerActivity;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 15

    .line 30
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlayingAudiobook()Lcom/innioasis/y1/database/Song;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/database/Y1Repository;->getSongByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    .line 33
    new-instance v14, Lcom/innioasis/y1/database/Bookmark;

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v1}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getSongId()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 35
    :goto_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getCurrentPosition()J

    move-result-wide v5

    .line 36
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/4 v13, 0x0

    move-object v3, v14

    .line 33
    invoke-direct/range {v3 .. v13}, Lcom/innioasis/y1/database/Bookmark;-><init>(Ljava/lang/String;JJJLjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    invoke-virtual {v2, v14}, Lcom/innioasis/y1/database/Y1Repository;->insertBookmark(Lcom/innioasis/y1/database/Bookmark;)V

    .line 39
    iget-object v0, p0, Lcom/innioasis/y1/activity/AudioPlayerActivity$isAddToBookmarkCallback$1;->this$0:Lcom/innioasis/y1/activity/AudioPlayerActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f110074

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/AudioPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
