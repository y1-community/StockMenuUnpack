.class final Lcom/innioasis/y1/view/VideoView$vb$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/view/VideoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/y1/databinding/ViewVideoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/y1/databinding/ViewVideoBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1/view/VideoView;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/view/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/view/VideoView$vb$2;->this$0:Lcom/innioasis/y1/view/VideoView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/y1/databinding/ViewVideoBinding;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/innioasis/y1/view/VideoView$vb$2;->this$0:Lcom/innioasis/y1/view/VideoView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/view/VideoView$vb$2;->this$0:Lcom/innioasis/y1/view/VideoView;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/innioasis/y1/databinding/ViewVideoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/innioasis/y1/view/VideoView$vb$2;->invoke()Lcom/innioasis/y1/databinding/ViewVideoBinding;

    move-result-object v0

    return-object v0
.end method
