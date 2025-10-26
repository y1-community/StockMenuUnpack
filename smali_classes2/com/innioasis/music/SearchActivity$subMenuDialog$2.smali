.class final Lcom/innioasis/music/SearchActivity$subMenuDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity;-><init>()V
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
.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/SearchActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 8

    .line 189
    new-instance v7, Lcom/innioasis/music/util/SubMenuDialog;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/SearchActivity;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList()Ljava/util/List;

    move-result-object v2

    new-instance v0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;

    iget-object v3, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {v0, v3}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$1;-><init>(Lcom/innioasis/music/SearchActivity;)V

    move-object v3, v0

    check-cast v3, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 321
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 322
    invoke-virtual {v7}, Lcom/innioasis/music/util/SubMenuDialog;->addPlaylistsToOptions()V

    .line 323
    new-instance v1, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$2$1;

    invoke-direct {v1, v0}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2$2$1;-><init>(Lcom/innioasis/music/SearchActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v1}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;->invoke()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    return-object v0
.end method
