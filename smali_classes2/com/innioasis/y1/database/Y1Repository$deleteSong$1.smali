.class final Lcom/innioasis/y1/database/Y1Repository$deleteSong$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Y1Repository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/innioasis/y1/database/Song;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/innioasis/y1/database/Song;",
        "invoke",
        "(Lcom/innioasis/y1/database/Song;)Ljava/lang/Boolean;"
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
.field final synthetic $song:Lcom/innioasis/y1/database/Song;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Song;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$deleteSong$1;->$song:Lcom/innioasis/y1/database/Song;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/innioasis/y1/database/Song;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$deleteSong$1;->$song:Lcom/innioasis/y1/database/Song;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 528
    check-cast p1, Lcom/innioasis/y1/database/Song;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/database/Y1Repository$deleteSong$1;->invoke(Lcom/innioasis/y1/database/Song;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
