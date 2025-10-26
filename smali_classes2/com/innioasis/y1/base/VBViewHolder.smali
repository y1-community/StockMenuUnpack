.class public final Lcom/innioasis/y1/base/VBViewHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "BaseBindingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0013\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/innioasis/y1/base/VBViewHolder;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "vb",
        "view",
        "Landroid/view/View;",
        "(Landroidx/viewbinding/ViewBinding;Landroid/view/View;)V",
        "getVb",
        "()Landroidx/viewbinding/ViewBinding;",
        "Landroidx/viewbinding/ViewBinding;",
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
.field private final vb:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewbinding/ViewBinding;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "vb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/innioasis/y1/base/VBViewHolder;->vb:Landroidx/viewbinding/ViewBinding;

    return-void
.end method


# virtual methods
.method public final getVb()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/innioasis/y1/base/VBViewHolder;->vb:Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method
