.class public interface abstract Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;
.super Ljava/lang/Object;
.source "BookMarkDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;",
        "",
        "deleteBookMark",
        "",
        "bookMark",
        "Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;",
        "isAll",
        "",
        "jumpBookMark",
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


# virtual methods
.method public abstract deleteBookMark(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Z)V
.end method

.method public abstract jumpBookMark(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;)V
.end method
