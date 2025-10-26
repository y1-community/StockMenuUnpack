.class public final Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;
.super Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;
.source "InputMethodDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/utils/InputMethodDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;",
        "",
        "view",
        "Landroid/view/View;",
        "(Lcom/innioasis/y1/utils/InputMethodDialog;Landroid/view/View;)V",
        "binding",
        "Lcom/innioasis/y1/databinding/ItemInputMethodBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/ItemInputMethodBinding;",
        "setBinding",
        "(Lcom/innioasis/y1/databinding/ItemInputMethodBinding;)V",
        "bind",
        "",
        "item",
        "isSelected",
        "",
        "isMultiSelect",
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
.field private binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

.field final synthetic this$0:Lcom/innioasis/y1/utils/InputMethodDialog;


# direct methods
.method public constructor <init>(Lcom/innioasis/y1/utils/InputMethodDialog;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->this$0:Lcom/innioasis/y1/utils/InputMethodDialog;

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/innioasis/y1/databinding/ItemInputMethodBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    move-result-object p1

    const-string p2, "bind(itemView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;ZZ)V
    .locals 0

    .line 86
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->bind(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public bind(Ljava/lang/String;ZZ)V
    .locals 0

    const-string p3, "item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p3, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    iget-object p3, p3, Lcom/innioasis/y1/databinding/ItemInputMethodBinding;->content:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 91
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemInputMethodBinding;->content:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemInputMethodBinding;->content:Landroid/widget/TextView;

    const p2, 0x7f08006a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemInputMethodBinding;->content:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ItemInputMethodBinding;->content:Landroid/widget/TextView;

    const p2, 0x7f080144

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public final getBinding()Lcom/innioasis/y1/databinding/ItemInputMethodBinding;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    return-object v0
.end method

.method public final setBinding(Lcom/innioasis/y1/databinding/ItemInputMethodBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;->binding:Lcom/innioasis/y1/databinding/ItemInputMethodBinding;

    return-void
.end method
