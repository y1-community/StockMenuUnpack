.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "VideoListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2;->invoke()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
        "Lcom/innioasis/y1/databinding/ItemVideoBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1413:1\n1#2:1414\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
        "Lcom/innioasis/y1/databinding/ItemVideoBinding;",
        "init",
        "",
        "binding",
        "bean",
        "pos",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 49
    check-cast p1, Lcom/innioasis/y1/databinding/ItemVideoBinding;

    check-cast p2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemVideoBinding;Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemVideoBinding;Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;I)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const-string v0, "binding"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 53
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoLayout:Landroid/widget/LinearLayout;

    const-string v13, "binding.videoLayout"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const v14, 0x7f080144

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v14, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 59
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileLayout:Landroid/widget/LinearLayout;

    const-string v5, "binding.fileLayout"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, v14, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 60
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileName:Landroid/widget/TextView;

    const-string v4, "binding.fileName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 61
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoName:Landroid/widget/TextView;

    const-string v2, "binding.videoName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v14}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v0, v1, v14, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 64
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoImg:Landroid/widget/ImageView;

    sget-object v1, Lcom/innioasis/y1/activity/video/VideoUtils;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoUtils;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result v0

    const/16 v14, 0x16

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v12, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x15

    if-eq v0, v3, :cond_2

    if-eq v0, v14, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_4

    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_1

    :cond_2
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto/16 :goto_3

    .line 107
    :cond_3
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileName:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileImg:Landroid/widget/ImageView;

    const-string v3, "binding.fileImg"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e0002

    invoke-virtual {v0, v1, v3}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 116
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileImg:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getCoverLoading()Z

    move-result v3

    if-eq v3, v12, :cond_0

    .line 118
    invoke-virtual {v8, v12}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setCoverLoading(Z)V

    .line 119
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/coroutines/CoroutineContext;

    const/16 v19, 0x0

    new-instance v20, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1$init$3$1;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object v3, v2

    move-object/from16 v2, p2

    move-object/from16 v23, v3

    move/from16 v3, p3

    move-object/from16 v24, v4

    move-object/from16 v4, p0

    move-object/from16 v25, v5

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1$init$3$1;-><init>(Ljava/io/File;Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;ILcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;Lkotlin/coroutines/Continuation;)V

    check-cast v20, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x2

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_4

    .line 76
    :goto_1
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoName:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoTime:Landroid/widget/TextView;

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getVideoInfo()Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v3, Lcom/innioasis/y1/activity/video/VideoUtils;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoUtils;

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/activity/video/VideoUtils;->getVideoTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    check-cast v2, Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 83
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoImg:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 86
    :cond_7
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoImg:Landroid/widget/ImageView;

    sget-object v2, Lcom/innioasis/y1/activity/video/VideoUtils;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoUtils;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getCoverLoading()Z

    move-result v0

    if-eq v0, v12, :cond_8

    .line 90
    invoke-virtual {v8, v12}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setCoverLoading(Z)V

    .line 91
    iget-object v0, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/coroutines/CoroutineContext;

    const/16 v18, 0x0

    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1$init$2;

    invoke-direct {v0, v8, v9, v6, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1$init$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;ILcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v0

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x2

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_4

    .line 70
    :goto_3
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileName:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_8
    :goto_4
    iget-object v0, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v0

    if-ne v0, v9, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 134
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v1

    if-nez v0, :cond_d

    if-eqz v1, :cond_a

    goto :goto_8

    .line 151
    :cond_a
    iget-object v0, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result v0

    if-eq v0, v12, :cond_c

    iget-object v0, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result v0

    if-ne v0, v14, :cond_b

    goto :goto_6

    .line 154
    :cond_b
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileLayout:Landroid/widget/LinearLayout;

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const v2, 0x7f080144

    invoke-virtual {v0, v1, v2, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_7

    :cond_c
    :goto_6
    const v2, 0x7f080144

    .line 152
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 156
    :goto_7
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileName:Landroid/widget/TextView;

    move-object/from16 v3, v24

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 157
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoName:Landroid/widget/TextView;

    move-object/from16 v4, v23

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v15}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 158
    iget-object v0, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->ivArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_d
    :goto_8
    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    const/16 v1, 0x8

    const v5, 0x7f08014a

    .line 139
    iget-object v8, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v8}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result v8

    if-eq v8, v12, :cond_f

    iget-object v8, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v8}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result v8

    if-ne v8, v14, :cond_e

    goto :goto_9

    .line 142
    :cond_e
    sget-object v8, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v9, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9, v5, v12}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_a

    .line 140
    :cond_f
    :goto_9
    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v8, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    invoke-virtual {v2, v8, v5, v12}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 144
    :goto_a
    iget-object v2, v6, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f06025c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 145
    sget-object v5, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v8, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->fileName:Landroid/widget/TextView;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v2, v12}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 146
    sget-object v3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v5, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->videoName:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2, v12}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 147
    iget-object v2, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->ivArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    const/4 v12, 0x0

    goto :goto_b

    :cond_10
    const/16 v12, 0x8

    :goto_b
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_11

    .line 148
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, v7, Lcom/innioasis/y1/databinding/ItemVideoBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v2, "binding.ivArrow"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0e002d

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    .line 161
    :cond_11
    :goto_c
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
