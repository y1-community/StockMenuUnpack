.class public final Lcom/innioasis/y1/database/Y1Repository$Companion;
.super Ljava/lang/Object;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/database/Y1Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/innioasis/y1/database/Y1Repository$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/innioasis/y1/database/Y1Repository;",
        "get",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1/database/Y1Repository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/innioasis/y1/database/Y1Repository;
    .locals 1

    .line 58
    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository;->access$getINSTANCE$cp()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository;->access$getINSTANCE$cp()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/innioasis/y1/database/Y1Repository;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/innioasis/y1/database/Y1Repository;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$setINSTANCE$cp(Lcom/innioasis/y1/database/Y1Repository;)V

    :cond_0
    return-void
.end method
