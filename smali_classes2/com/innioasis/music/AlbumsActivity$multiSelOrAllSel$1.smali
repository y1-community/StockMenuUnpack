.class final Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AlbumsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/AlbumsActivity;->multiSelOrAllSel(Z)V
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
.field final synthetic $isAllSel:Z

.field final synthetic this$0:Lcom/innioasis/music/AlbumsActivity;


# direct methods
.method public static synthetic $r8$lambda$3ZPru3hvtHikee6yx1kVulCVgOw(ZLcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->invoke$lambda-0(ZLcom/innioasis/music/AlbumsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8vfcj0K74QLB4AQXoo8YCWvwVU4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->invoke$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9THopU9SxjAErjRru3v5wHDfpL8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->invoke$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/AlbumsActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    iput-boolean p2, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->$isAllSel:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(ZLcom/innioasis/music/AlbumsActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 584
    invoke-virtual {p1}, Lcom/innioasis/music/AlbumsActivity;->isShowAlbums()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 585
    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {p0, v2, v1, v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    goto :goto_0

    .line 586
    :cond_0
    invoke-static {p1}, Lcom/innioasis/music/AlbumsActivity;->access$getSongAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {p0, v2, v1, v0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final invoke$lambda-1(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 596
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f08014a

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private static final invoke$lambda-2(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 600
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    iget-boolean v1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->$isAllSel:Z

    new-instance v2, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;-><init>(ZLcom/innioasis/music/AlbumsActivity;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/music/AlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 591
    :goto_0
    iget-object v1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/AlbumsActivity;->isShowAlbums()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v1}, Lcom/innioasis/music/AlbumsActivity;->access$getAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getPosition()I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v1}, Lcom/innioasis/music/AlbumsActivity;->access$getSongAdapter(Lcom/innioasis/music/AlbumsActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v1

    .line 592
    :goto_1
    iget-object v2, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {v2}, Lcom/innioasis/music/AlbumsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityAlbumsBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityAlbumsBinding;->lv:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-virtual {v3}, Lcom/innioasis/music/AlbumsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityAlbumsBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityAlbumsBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 593
    iget-object v2, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v2}, Lcom/innioasis/music/AlbumsActivity;->access$isMultiSelect$p(Lcom/innioasis/music/AlbumsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 595
    iget-object v2, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    new-instance v3, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/music/AlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 599
    :cond_1
    iget-object v2, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->this$0:Lcom/innioasis/music/AlbumsActivity;

    new-instance v3, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/music/AlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    xor-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x1f4

    .line 604
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    return-void
.end method
