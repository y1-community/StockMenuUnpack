.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;
.super Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;
.source "SearchVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter<",
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;",
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;",
        "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
        "activity",
        "Landroid/app/Activity;",
        "(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Landroid/app/Activity;)V",
        "radius",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "toNext",
        "lv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "refreshTwo",
        "",
        "toPrevious",
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
.field private final radius:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;


# direct methods
.method public constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-direct {p0, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;-><init>(Landroid/app/Activity;)V

    const/16 p1, 0xa

    .line 341
    iput p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->radius:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 340
    check-cast p1, Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->onBindViewHolder(Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder<",
            "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->onBindViewHolder(Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;I)V

    .line 351
    iget p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->radius:I

    sub-int v0, p2, p1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-ltz v0, :cond_2

    .line 353
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_5

    .line 357
    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder<",
            "Lcom/innioasis/y1/activity/video/SearchVideoActivity$Item;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance p2, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 345
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "from(activity).inflate(R\u2026ch_result, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-direct {p2, v0, p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyViewHolder;-><init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;Landroid/view/View;)V

    check-cast p2, Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;

    return-object p2
.end method

.method public toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v0

    .line 387
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->setNowPosition(I)V

    .line 388
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->setNowPosition(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 390
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    .line 391
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyDataSetChanged()V

    .line 393
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getItemCount()I

    move-result p2

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-ge v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 396
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "vb.searchHead"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    const v0, 0x7f080144

    invoke-virtual {p1, p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 397
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->title:Landroid/widget/TextView;

    const-string v0, "vb.title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06026b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 398
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v0, "vb.info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :cond_4
    return-void
.end method

.method public toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->setNowPosition(I)V

    .line 364
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result v1

    const/4 v3, -0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->setNowPosition(I)V

    :cond_0
    if-eqz p2, :cond_2

    if-ltz v0, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p2

    if-ltz p2, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyDataSetChanged()V

    .line 375
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p2

    if-ltz p2, :cond_4

    .line 376
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 377
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getNowPosition()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 378
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "vb.searchHead"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    const v0, 0x7f080146

    invoke-virtual {p1, p2, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 379
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->title:Landroid/widget/TextView;

    const-string v0, "vb.title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 380
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v0, "vb.info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :cond_5
    return-void
.end method
