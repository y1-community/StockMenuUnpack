.class final Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
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
.field final synthetic $selectIndex:I

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method public static synthetic $r8$lambda$h1zQ39RG35Cm5GXQ4W8IPmizcxg(ILcom/innioasis/music/GenresActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->invoke$lambda-0(ILcom/innioasis/music/GenresActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jqklLjzkTuzQhe1Qqria2DtroR4(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->invoke$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsXgl9fCVaHd1wZyTroIGS9mQ-c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->invoke$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/GenresActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    iput p2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->$selectIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(ILcom/innioasis/music/GenresActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter()Lcom/innioasis/music/adapter/GenreListAdapter;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {p0, v3, v0, v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/innioasis/music/adapter/MainAdapter;->allSelect(Z)V

    .line 108
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter2()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {p0, v3, v0, v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_2()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {p0, v3, v0, v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-static {p0, v3, v0, v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final invoke$lambda-1(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 124
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

    .line 128
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

    .line 100
    invoke-virtual {p0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    iget v1, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->$selectIndex:I

    new-instance v2, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1$$ExternalSyntheticLambda0;-><init>(ILcom/innioasis/music/GenresActivity;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-static {v1}, Lcom/innioasis/music/GenresActivity;->access$getPosition(Lcom/innioasis/music/GenresActivity;)I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v2}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v3}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-static {v2}, Lcom/innioasis/music/GenresActivity;->access$isMultiSelect$p(Lcom/innioasis/music/GenresActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 123
    iget-object v2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1;->this$0:Lcom/innioasis/music/GenresActivity;

    new-instance v3, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/innioasis/music/GenresActivity$subMenuDialogCallback$1$select$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/music/GenresActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    xor-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x1f4

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
