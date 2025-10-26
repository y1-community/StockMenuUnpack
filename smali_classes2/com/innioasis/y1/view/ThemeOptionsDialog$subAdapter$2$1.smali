.class public final Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;
.super Lcom/innioasis/y1/base/BaseBindingAdapter;
.source "ThemeOptionsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2;->invoke()Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter<",
        "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
        "Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;",
        "Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/innioasis/y1/view/ThemeOptionsDialog;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/view/ThemeOptionsDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->this$0:Lcom/innioasis/y1/view/ThemeOptionsDialog;

    iput-object p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .locals 0

    .line 41
    check-cast p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;

    check-cast p2, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->init(Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;I)V

    return-void
.end method

.method public init(Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;I)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;->getText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->this$0:Lcom/innioasis/y1/view/ThemeOptionsDialog;

    invoke-static {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->access$isFull$p(Lcom/innioasis/y1/view/ThemeOptionsDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;->content:Landroid/widget/TextView;

    const-string v1, "#D3D3D3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->this$0:Lcom/innioasis/y1/view/ThemeOptionsDialog;

    invoke-static {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->access$getNowPosition$p(Lcom/innioasis/y1/view/ThemeOptionsDialog;)I

    move-result v0

    if-ne v0, p3, :cond_2

    .line 51
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;->getResIdSelected()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;->content:Landroid/widget/TextView;

    const-string p2, "#3CFFDE"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object p3, p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/innioasis/y1/view/ThemeOptionsDialog$SubItem;->getResId()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemPhotosSubmenuBinding;->content:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/view/ThemeOptionsDialog$subAdapter$2$1;->$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06026b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
