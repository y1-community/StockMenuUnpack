.class final Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ArtistsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/ArtistsActivity;-><init>()V
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
.field final synthetic this$0:Lcom/innioasis/music/ArtistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/ArtistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v2, 0x7f1101a0

    invoke-virtual {v1, v2}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 389
    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v2, 0x7f1101a2

    invoke-virtual {v1, v2}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 390
    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const v2, 0x7f1101a1

    invoke-virtual {v1, v2}, Lcom/innioasis/music/ArtistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 387
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 392
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/ArtistsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {v1}, Lcom/innioasis/music/ArtistsActivity;->access$getSongMenuDialogCallback$p(Lcom/innioasis/music/ArtistsActivity;)Lcom/innioasis/music/ArtistsActivity$songMenuDialogCallback$1;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    .line 394
    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->addPlaylistsToOptions()V

    .line 395
    new-instance v2, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2$1$1;

    invoke-direct {v2, v1}, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2$1$1;-><init>(Lcom/innioasis/music/ArtistsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/innioasis/music/ArtistsActivity$songMenuDialog$2;->invoke()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    return-object v0
.end method
