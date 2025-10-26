.class public final Lcom/innioasis/music/SearchActivity$MyAdapter;
.super Lcom/innioasis/music/adapter/rv/RVBaseAdapter;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/rv/RVBaseAdapter<",
        "Lcom/innioasis/music/SearchActivity$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/innioasis/music/SearchActivity$MyAdapter;",
        "Lcom/innioasis/music/adapter/rv/RVBaseAdapter;",
        "Lcom/innioasis/music/SearchActivity$Item;",
        "activity",
        "Landroid/app/Activity;",
        "(Lcom/innioasis/music/SearchActivity;Landroid/app/Activity;)V",
        "radius",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;",
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

.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/innioasis/music/SearchActivity;Landroid/app/Activity;)V
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

    .line 425
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;-><init>(Landroid/app/Activity;)V

    const/16 p1, 0xa

    .line 426
    iput p1, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->radius:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 425
    check-cast p1, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->onBindViewHolder(Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
            "Lcom/innioasis/music/SearchActivity$Item;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-super {p0, p1, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->onBindViewHolder(Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;I)V

    .line 436
    iget p1, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->radius:I

    sub-int v0, p2, p1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-ltz v0, :cond_2

    .line 438
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/SearchActivity$Item;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/SearchActivity$Item;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/innioasis/music/SearchActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/SearchActivity$Item;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$Item;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_5

    .line 442
    invoke-virtual {p0, p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/innioasis/music/SearchActivity$Item;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Lcom/innioasis/music/SearchActivity$Item;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
            "Lcom/innioasis/music/SearchActivity$Item;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    new-instance p2, Lcom/innioasis/music/SearchActivity$MyViewHolder;

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    .line 430
    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getActivity()Landroid/app/Activity;

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

    .line 429
    invoke-direct {p2, v0, p1}, Lcom/innioasis/music/SearchActivity$MyViewHolder;-><init>(Lcom/innioasis/music/SearchActivity;Landroid/view/View;)V

    check-cast p2, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;

    return-object p2
.end method

.method public toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v0

    .line 471
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setNowPosition(I)V

    .line 472
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setNowPosition(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyItemChanged(I)V

    .line 475
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyDataSetChanged()V

    .line 477
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result p2

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    if-ge v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 478
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 479
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 480
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "vb.searchHead"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    const v0, 0x7f080144

    invoke-virtual {p1, p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 481
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->title:Landroid/widget/TextView;

    const-string v0, "vb.title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06026b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 482
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v0, "vb.info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

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

    .line 446
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v0

    .line 447
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setNowPosition(I)V

    .line 448
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result v1

    const/4 v3, -0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setNowPosition(I)V

    :cond_0
    if-eqz p2, :cond_2

    if-ltz v0, :cond_1

    .line 452
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyItemChanged(I)V

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p2

    if-ltz p2, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyDataSetChanged()V

    .line 459
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p2

    if-ltz p2, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 461
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getNowPosition()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 462
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchHead:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "vb.searchHead"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    const v0, 0x7f080147

    invoke-virtual {p1, p2, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 463
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->title:Landroid/widget/TextView;

    const-string v0, "vb.title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 464
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p2, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v0, "vb.info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/music/SearchActivity$MyAdapter;->this$0:Lcom/innioasis/music/SearchActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :cond_5
    return-void
.end method
