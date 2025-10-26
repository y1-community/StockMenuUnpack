.class public final Lcom/innioasis/y1_eBook/ui/text/TextAdapter;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "TextAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1_eBook/ui/text/TextItem;",
        "Lcom/innioasis/y1/databinding/ItemBookTextBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\u0006J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0006R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextAdapter;",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1_eBook/ui/text/TextItem;",
        "Lcom/innioasis/y1/databinding/ItemBookTextBinding;",
        "()V",
        "textColor",
        "",
        "getTextColor",
        "()I",
        "setTextColor",
        "(I)V",
        "textSize",
        "getTextSize",
        "init",
        "",
        "binding",
        "item",
        "position",
        "setTextSize",
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
.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, v0, v1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v0, -0x1000000

    .line 11
    iput v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textColor:I

    const/16 v0, 0x12

    .line 21
    iput v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textSize:I

    return-void
.end method


# virtual methods
.method public final getTextColor()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textColor:I

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textSize:I

    return v0
.end method

.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/innioasis/y1/databinding/ItemBookTextBinding;

    check-cast p2, Lcom/innioasis/y1_eBook/ui/text/TextItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->init(Lcom/innioasis/y1/databinding/ItemBookTextBinding;Lcom/innioasis/y1_eBook/ui/text/TextItem;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemBookTextBinding;Lcom/innioasis/y1_eBook/ui/text/TextItem;I)V
    .locals 0

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemBookTextBinding;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1_eBook/ui/text/TextItem;->getContent()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p1, Lcom/innioasis/y1/databinding/ItemBookTextBinding;->content:Landroid/widget/TextView;

    iget p3, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textSize:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemBookTextBinding;->content:Landroid/widget/TextView;

    iget p2, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textColor:I

    return-void
.end method

.method public final setTextSize(I)V
    .locals 1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ge p1, v0, :cond_1

    return-void

    .line 30
    :cond_1
    iput p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->textSize:I

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/text/TextAdapter;->notifyDataSetChanged()V

    return-void
.end method
