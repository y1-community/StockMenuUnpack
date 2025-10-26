.class final Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChapterDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/y1/databinding/DialogBookContentsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/y1/databinding/DialogBookContentsBinding;",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$binding$2;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/y1/databinding/DialogBookContentsBinding;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$binding$2;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/DialogBookContentsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/DialogBookContentsBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ChapterDialog$binding$2;->invoke()Lcom/innioasis/y1/databinding/DialogBookContentsBinding;

    move-result-object v0

    return-object v0
.end method
