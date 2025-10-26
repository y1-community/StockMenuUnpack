.class public final Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;
.super Ljava/lang/Object;
.source "AlbumsActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/AlbumsActivity;->sortByFileName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/music/AlbumsActivity$sortByFileName$1",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/music/AlbumsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 1

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object p1

    .line 439
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v0, 0x7f1101a3

    invoke-virtual {p2, v0}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getAlbumName$p(Lcom/innioasis/music/AlbumsActivity;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-static {p1, p2, v0}, Lcom/innioasis/music/AlbumsActivity;->access$switchSongSortType(Lcom/innioasis/music/AlbumsActivity;Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v0, 0x7f1101a9

    invoke-virtual {p2, v0}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getAlbumName$p(Lcom/innioasis/music/AlbumsActivity;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-static {p1, p2, v0}, Lcom/innioasis/music/AlbumsActivity;->access$switchSongSortType(Lcom/innioasis/music/AlbumsActivity;Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v0, 0x7f1101a7

    invoke-virtual {p2, v0}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    .line 442
    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getAlbumName$p(Lcom/innioasis/music/AlbumsActivity;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    .line 441
    invoke-static {p1, p2, v0}, Lcom/innioasis/music/AlbumsActivity;->access$switchSongSortType(Lcom/innioasis/music/AlbumsActivity;Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object p2, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    const v0, 0x7f1101a8

    invoke-virtual {p2, v0}, Lcom/innioasis/music/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    .line 446
    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getAlbumName$p(Lcom/innioasis/music/AlbumsActivity;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    .line 445
    invoke-static {p1, p2, v0}, Lcom/innioasis/music/AlbumsActivity;->access$switchSongSortType(Lcom/innioasis/music/AlbumsActivity;Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    .line 450
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/innioasis/music/AlbumsActivity$sortByFileName$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getSongMenuDialog(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/util/SubMenuDialog;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method
