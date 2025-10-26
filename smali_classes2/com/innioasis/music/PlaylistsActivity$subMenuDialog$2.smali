.class final Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlaylistsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/PlaylistsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/music/util/SubMenuDialog;",
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
.field final synthetic this$0:Lcom/innioasis/music/PlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/PlaylistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 8

    .line 49
    new-instance v7, Lcom/innioasis/music/util/SubMenuDialog;

    .line 50
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f11019f

    .line 51
    invoke-virtual {v0, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.song_menu_sort_by)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 52
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const v3, 0x7f11012a

    invoke-virtual {v0, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.music_multi_select)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 53
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const v3, 0x7f110028

    invoke-virtual {v0, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.all_select)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 54
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const v3, 0x7f110134

    invoke-virtual {v0, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.new_playlist)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 55
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const v3, 0x7f110078

    invoke-virtual {v0, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.delete_playlist)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 56
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const v3, 0x7f110169

    invoke-virtual {v0, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(R.string.rename)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 50
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    move-object v3, v0

    check-cast v3, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    .line 59
    new-instance v1, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2$1$1;

    invoke-direct {v1, v0}, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2$1$1;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v1}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;->invoke()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    return-object v0
.end method
