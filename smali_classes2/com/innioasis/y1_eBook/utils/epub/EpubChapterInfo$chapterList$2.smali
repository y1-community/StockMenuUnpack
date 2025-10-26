.class final Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$chapterList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EpubChapterInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;-><init>(Ljava/lang/String;)V
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
        "+",
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$chapterList$2;->this$0:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$chapterList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$ChapterInfo;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo$chapterList$2;->this$0:Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;->access$parseEpubChapters(Lcom/innioasis/y1_eBook/utils/epub/EpubChapterInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
