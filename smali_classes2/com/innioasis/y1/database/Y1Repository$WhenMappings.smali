.class public final synthetic Lcom/innioasis/y1/database/Y1Repository$WhenMappings;
.super Ljava/lang/Object;
.source "Y1Repository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/database/Y1Repository;
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

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

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

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    const/4 v7, 0x7

    aput v7, v0, v1

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->values()[Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortAlbumType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->values()[Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortArtistsType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->values()[Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->values()[Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoListType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->values()[Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->None:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->A_Z:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->Z_A:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->CreateTime_Asc:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->CreateTime_Desc:Lcom/innioasis/y1/database/Y1Repository$SortVideoType;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SortVideoType;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/innioasis/y1/database/Y1Repository$WhenMappings;->$EnumSwitchMapping$5:[I

    return-void
.end method
