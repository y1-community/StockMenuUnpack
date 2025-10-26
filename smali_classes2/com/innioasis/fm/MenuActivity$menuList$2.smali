.class final Lcom/innioasis/fm/MenuActivity$menuList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MenuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/MenuActivity;-><init>()V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
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
.field final synthetic this$0:Lcom/innioasis/fm/MenuActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/MenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/innioasis/fm/MenuActivity$menuList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 44
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 46
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$menuList$2;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
