.class public final Lcom/innioasis/y1_eBook/ui/main/MainActivity$openBook$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/main/MainActivity;->openBook(Lcom/innioasis/y1_eBook/data/database/entities/Book;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1_eBook/ui/main/MainActivity$openBook$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic $book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/main/MainActivity;Lcom/innioasis/y1_eBook/data/database/entities/Book;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$openBook$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$openBook$1;->$book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    .line 225
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$openBook$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    new-instance v1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    iget-object v2, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$openBook$1;->$book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)V

    check-cast v1, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    return-void
.end method
