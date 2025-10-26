.class public final Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "PlaylistsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->onBack()V
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
        "com/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1",
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
.field final synthetic $playlist:Lcom/innioasis/y1/database/Playlist;

.field final synthetic this$0:Lcom/innioasis/music/PlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Playlist;Lcom/innioasis/music/PlaylistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->$playlist:Lcom/innioasis/y1/database/Playlist;

    iput-object p2, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    .line 103
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-static {v0}, Lcom/innioasis/music/PlaylistsActivity;->access$getOldName$p(Lcom/innioasis/music/PlaylistsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/PlaylistsActivity;->changeSelectedOptionText(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/innioasis/music/PlaylistsActivity;->access$setAllowChangePlaylistName$p(Lcom/innioasis/music/PlaylistsActivity;Z)V

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 105
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->$playlist:Lcom/innioasis/y1/database/Playlist;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->updatePlaylist(Lcom/innioasis/y1/database/Playlist;)V

    .line 106
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/innioasis/music/PlaylistsActivity;->access$setAllowChangePlaylistName$p(Lcom/innioasis/music/PlaylistsActivity;Z)V

    .line 107
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortPlayListIsChange(Z)V

    .line 108
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-static {v0, v1}, Lcom/innioasis/music/PlaylistsActivity;->access$setCanChangePlayList$p(Lcom/innioasis/music/PlaylistsActivity;Z)V

    return-void
.end method
