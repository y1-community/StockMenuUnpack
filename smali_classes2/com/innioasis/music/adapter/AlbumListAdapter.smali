.class public final Lcom/innioasis/music/adapter/AlbumListAdapter;
.super Lcom/innioasis/music/adapter/MyBaseAdapter;
.source "AlbumListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/MyBaseAdapter<",
        "Lcom/innioasis/music/data/Album;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlbumListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlbumListAdapter.kt\ncom/innioasis/music/adapter/AlbumListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1549#2:101\n1620#2,3:102\n*S KotlinDebug\n*F\n+ 1 AlbumListAdapter.kt\ncom/innioasis/music/adapter/AlbumListAdapter\n*L\n97#1:101\n97#1:102,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0014\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018R#\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/innioasis/music/adapter/AlbumListAdapter;",
        "Lcom/innioasis/music/adapter/MyBaseAdapter;",
        "Lcom/innioasis/music/data/Album;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "defaultBitmap",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "getDefaultBitmap",
        "()Landroid/graphics/Bitmap;",
        "defaultBitmap$delegate",
        "Lkotlin/Lazy;",
        "temp",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "setAlbums",
        "",
        "albumNameList",
        "",
        "",
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
.field private final defaultBitmap$delegate:Lkotlin/Lazy;

.field private final temp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/innioasis/music/adapter/MyBaseAdapter;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter;->temp:I

    .line 31
    new-instance v0, Lcom/innioasis/music/adapter/AlbumListAdapter$defaultBitmap$2;

    invoke-direct {v0, p1}, Lcom/innioasis/music/adapter/AlbumListAdapter$defaultBitmap$2;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/music/adapter/AlbumListAdapter;->defaultBitmap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDefaultBitmap(Lcom/innioasis/music/adapter/AlbumListAdapter;)Landroid/graphics/Bitmap;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTemp$p(Lcom/innioasis/music/adapter/AlbumListAdapter;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter;->temp:I

    return p0
.end method

.method private final getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/innioasis/music/adapter/AlbumListAdapter;->defaultBitmap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p1

    if-nez p2, :cond_0

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0064

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    :goto_0
    const v0, 0x7f0a00b9

    .line 37
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f0a005a

    .line 38
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f0a004e

    .line 39
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0a020f

    .line 40
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/innioasis/music/data/Album;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 42
    new-instance v18, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;

    move-object/from16 v0, v18

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/innioasis/music/adapter/AlbumListAdapter$getView$1;-><init>(Lcom/innioasis/music/data/Album;Lcom/innioasis/music/adapter/AlbumListAdapter;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x1f

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getNowPosition()I

    move-result v0

    const v1, 0x7f08014a

    const-string v2, "albumName"

    const-string v3, "artistName"

    const-string v4, "view"

    const-string v5, "img"

    const v6, 0x7f06025c

    const/4 v13, 0x1

    if-ne v8, v0, :cond_1

    .line 71
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1, v13}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 72
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    .line 73
    sget-object v4, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v14, ""

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v14, 0x7f0e002d

    invoke-virtual {v4, v12, v14}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string v4, "img.apply {\n            \u2026ight_arrow)\n            }"

    .line 72
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v12

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 75
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lcom/innioasis/music/adapter/AlbumListAdapter;->makeItMarquee(Landroid/widget/TextView;)V

    .line 76
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v10, v2, v13}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 77
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v11, v2, v13}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_1

    .line 79
    :cond_1
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v12

    check-cast v14, Landroid/view/View;

    invoke-virtual {v0, v14}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 80
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f080144

    const/4 v14, 0x0

    invoke-virtual {v0, v9, v4, v14}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 81
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06026b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v10, v3, v14}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 82
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v11, v2, v14}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 83
    invoke-virtual {v7, v11}, Lcom/innioasis/music/adapter/AlbumListAdapter;->makeItNormal(Landroid/widget/TextView;)V

    .line 86
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getNowPosition()I

    move-result v0

    if-eq v8, v0, :cond_2

    .line 87
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroid/view/View;

    invoke-virtual {v0, v12}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 88
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, v9, v1, v13}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 89
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v10, v1, v13}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 90
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v11, v1, v13}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :cond_2
    return-object v9
.end method

.method public final setAlbums(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "albumNameList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getMList()Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 103
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 97
    new-instance v2, Lcom/innioasis/music/data/Album;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/data/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 101
    check-cast v1, Ljava/util/Collection;

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->notifyDataSetChanged()V

    return-void
.end method
