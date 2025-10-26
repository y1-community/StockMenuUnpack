.class final Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchVideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;
    .locals 8

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 148
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const v2, 0x7f11012a

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.music_multi_select)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const v5, 0x7f110028

    invoke-virtual {v1, v5}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.all_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    const v5, 0x7f110127

    invoke-virtual {v1, v5}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.music_delete_file)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    new-instance v1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;

    iget-object v4, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-direct {v1, v4}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 250
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 251
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->addPlaylistsToOptions()V

    .line 252
    new-instance v2, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$2$1;

    invoke-direct {v2, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2$2$1;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$subMenuDialog$2;->invoke()Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-result-object v0

    return-object v0
.end method
