.class public final Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2;->invoke()Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Ljava/io/File;",
        "Lcom/innioasis/y1/databinding/ItemBookSearchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0017\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Ljava/io/File;",
        "Lcom/innioasis/y1/databinding/ItemBookSearchBinding;",
        "init",
        "",
        "binding",
        "item",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/search/SearchActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/search/SearchActivity;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Ljava/io/File;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Ljava/io/File;I)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->size:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/search/SearchActivity;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemBookSearchBinding;->time:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p2, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/search/SearchActivity;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->getMark()I

    move-result p2

    if-ne p2, p3, :cond_0

    .line 36
    iget-object p2, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/search/SearchActivity;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->access$selItem(Lcom/innioasis/y1_eBook/ui/search/SearchActivity;Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Z)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/innioasis/y1_eBook/ui/search/SearchActivity$adapter$2$1;->this$0:Lcom/innioasis/y1_eBook/ui/search/SearchActivity;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/innioasis/y1_eBook/ui/search/SearchActivity;->access$selItem(Lcom/innioasis/y1_eBook/ui/search/SearchActivity;Lcom/innioasis/y1/databinding/ItemBookSearchBinding;Z)V

    :goto_0
    return-void
.end method
