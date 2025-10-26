.class final Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemeListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    .line 127
    new-instance v1, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    .line 128
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f110151

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.photos_delete)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0800db

    const v4, 0x7f0800dc

    .line 127
    invoke-direct {v1, v2, v3, v4}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 131
    new-instance v1, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    .line 132
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f110155

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.photos_multi_select)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0800dd

    const v4, 0x7f0800de

    .line 131
    invoke-direct {v1, v2, v3, v4}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 135
    new-instance v1, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    .line 136
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f11014f

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.photos_all_select)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0800d9

    const v4, 0x7f0800da

    .line 135
    invoke-direct {v1, v2, v3, v4}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 139
    new-instance v1, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    .line 140
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f110157

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.photos_rename)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0800df

    const v4, 0x7f0800e0

    .line 139
    invoke-direct {v1, v2, v3, v4}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 143
    new-instance v1, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    .line 144
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$subs$2;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f1101b1

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.theme_as_theme)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0800b6

    const v4, 0x7f0800b7

    .line 143
    invoke-direct {v1, v2, v3, v4}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 126
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
