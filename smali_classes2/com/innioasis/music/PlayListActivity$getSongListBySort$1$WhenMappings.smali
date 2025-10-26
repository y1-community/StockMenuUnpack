.class public final synthetic Lcom/innioasis/music/PlayListActivity$getSongListBySort$1$WhenMappings;
.super Ljava/lang/Object;
.source "PlayListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/PlayListActivity$getSongListBySort$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->values()[Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/innioasis/music/PlayListActivity$getSongListBySort$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
