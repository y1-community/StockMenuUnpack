.class public final Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;
.super Lcom/innioasis/y1_eBook/ui/main/MainIntent;
.source "MainIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/ui/main/MainIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteBook"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;",
        "Lcom/innioasis/y1_eBook/ui/main/MainIntent;",
        "book",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "canDeleteFile",
        "",
        "canToast",
        "(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)V",
        "getBook",
        "()Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "getCanDeleteFile",
        "()Z",
        "getCanToast",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

.field private final canDeleteFile:Z

.field private final canToast:Z


# direct methods
.method public constructor <init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/innioasis/y1_eBook/ui/main/MainIntent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    iput-boolean p2, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    iput-boolean p3, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZILjava/lang/Object;)Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->copy(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/innioasis/y1_eBook/data/database/entities/Book;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    return v0
.end method

.method public final copy(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    invoke-direct {v0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    iget-boolean v3, p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    iget-boolean p1, p1, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBook()Lcom/innioasis/y1_eBook/data/database/entities/Book;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    return-object v0
.end method

.method public final getCanDeleteFile()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    return v0
.end method

.method public final getCanToast()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-virtual {v0}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteBook(book="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->book:Lcom/innioasis/y1_eBook/data/database/entities/Book;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canDeleteFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canDeleteFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canToast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;->canToast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
