.class final Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/base/BaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/innioasis/y1_eBook/base/BaseActivity<",
        "****>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0014\u0008\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u0008\"\u0008\u0008\u0003\u0010\u0007*\u00020\t2\u0016\u0010\n\u001a\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000bH\n\u00a2\u0006\u0002\u0008\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "VM",
        "Lcom/innioasis/y1_eBook/base/BaseViewModel;",
        "S",
        "I",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        "it",
        "Lcom/innioasis/y1_eBook/base/BaseActivity;",
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


# static fields
.field public static final INSTANCE:Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;

    invoke-direct {v0}, Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;-><init>()V

    sput-object v0, Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;->INSTANCE:Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, Lcom/innioasis/y1_eBook/base/BaseActivity;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/base/BaseActivity$onDestroyListener$1;->invoke(Lcom/innioasis/y1_eBook/base/BaseActivity;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/innioasis/y1_eBook/base/BaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1_eBook/base/BaseActivity<",
            "****>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
