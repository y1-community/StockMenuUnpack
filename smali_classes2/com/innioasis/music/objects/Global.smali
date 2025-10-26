.class public final Lcom/innioasis/music/objects/Global;
.super Ljava/lang/Object;
.source "Global.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u00103\u001a\u000204R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u001a\u0010\u0014\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\"\u0004\u0008\u0016\u0010\rR\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000b\"\u0004\u0008\u001f\u0010\rR\u001a\u0010 \u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001a\"\u0004\u0008\"\u0010\u001cR\u001a\u0010#\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001a\"\u0004\u0008%\u0010\u001cR$\u0010\'\u001a\u00020\n2\u0006\u0010&\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000b\"\u0004\u0008)\u0010\rR\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00100\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00188F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u0010\u001a\"\u0004\u00082\u0010\u001c\u00a8\u00065"
    }
    d2 = {
        "Lcom/innioasis/music/objects/Global;",
        "",
        "()V",
        "coverBitmap",
        "Landroid/graphics/Bitmap;",
        "getCoverBitmap",
        "()Landroid/graphics/Bitmap;",
        "setCoverBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "isResetting",
        "",
        "()Z",
        "setResetting",
        "(Z)V",
        "needShowScanDialog",
        "getNeedShowScanDialog",
        "setNeedShowScanDialog",
        "refreshDatabaseState",
        "getRefreshDatabaseState",
        "setRefreshDatabaseState",
        "restoreCompleted",
        "getRestoreCompleted",
        "setRestoreCompleted",
        "scanDeletedCount",
        "",
        "getScanDeletedCount",
        "()I",
        "setScanDeletedCount",
        "(I)V",
        "scanLock",
        "getScanLock",
        "setScanLock",
        "scanNewAddedCount",
        "getScanNewAddedCount",
        "setScanNewAddedCount",
        "scanTotalCount",
        "getScanTotalCount",
        "setScanTotalCount",
        "value",
        "sdcardIsReady",
        "getSdcardIsReady",
        "setSdcardIsReady",
        "searchKey",
        "",
        "getSearchKey",
        "()Ljava/lang/String;",
        "setSearchKey",
        "(Ljava/lang/String;)V",
        "shutdownTime",
        "getShutdownTime",
        "setShutdownTime",
        "initScanState",
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


# static fields
.field public static final INSTANCE:Lcom/innioasis/music/objects/Global;

.field private static coverBitmap:Landroid/graphics/Bitmap;

.field private static isResetting:Z

.field private static needShowScanDialog:Z

.field private static refreshDatabaseState:Z

.field private static restoreCompleted:Z

.field private static scanDeletedCount:I

.field private static scanLock:Z

.field private static scanNewAddedCount:I

.field private static scanTotalCount:I

.field private static sdcardIsReady:Z

.field private static searchKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/music/objects/Global;

    invoke-direct {v0}, Lcom/innioasis/music/objects/Global;-><init>()V

    sput-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/innioasis/music/objects/Global;->sdcardIsReady:Z

    const-string v0, ""

    .line 43
    sput-object v0, Lcom/innioasis/music/objects/Global;->searchKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 17
    sget-object v0, Lcom/innioasis/music/objects/Global;->coverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getNeedShowScanDialog()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/innioasis/music/objects/Global;->needShowScanDialog:Z

    return v0
.end method

.method public final getRefreshDatabaseState()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/innioasis/music/objects/Global;->refreshDatabaseState:Z

    return v0
.end method

.method public final getRestoreCompleted()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/innioasis/music/objects/Global;->restoreCompleted:Z

    return v0
.end method

.method public final getScanDeletedCount()I
    .locals 1

    .line 32
    sget v0, Lcom/innioasis/music/objects/Global;->scanDeletedCount:I

    return v0
.end method

.method public final getScanLock()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/innioasis/music/objects/Global;->scanLock:Z

    return v0
.end method

.method public final getScanNewAddedCount()I
    .locals 1

    .line 33
    sget v0, Lcom/innioasis/music/objects/Global;->scanNewAddedCount:I

    return v0
.end method

.method public final getScanTotalCount()I
    .locals 1

    .line 31
    sget v0, Lcom/innioasis/music/objects/Global;->scanTotalCount:I

    return v0
.end method

.method public final getSdcardIsReady()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/innioasis/music/objects/Global;->sdcardIsReady:Z

    return v0
.end method

.method public final getSearchKey()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/innioasis/music/objects/Global;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getShutdownTime()I
    .locals 3

    .line 13
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "shutdownTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final initScanState()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/innioasis/music/objects/Global;->scanTotalCount:I

    .line 38
    sput v0, Lcom/innioasis/music/objects/Global;->scanDeletedCount:I

    .line 39
    sput v0, Lcom/innioasis/music/objects/Global;->scanNewAddedCount:I

    return-void
.end method

.method public final isResetting()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/innioasis/music/objects/Global;->isResetting:Z

    return v0
.end method

.method public final setCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 17
    sput-object p1, Lcom/innioasis/music/objects/Global;->coverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setNeedShowScanDialog(Z)V
    .locals 0

    .line 28
    sput-boolean p1, Lcom/innioasis/music/objects/Global;->needShowScanDialog:Z

    return-void
.end method

.method public final setRefreshDatabaseState(Z)V
    .locals 0

    .line 25
    sput-boolean p1, Lcom/innioasis/music/objects/Global;->refreshDatabaseState:Z

    return-void
.end method

.method public final setResetting(Z)V
    .locals 0

    .line 46
    sput-boolean p1, Lcom/innioasis/music/objects/Global;->isResetting:Z

    return-void
.end method

.method public final setRestoreCompleted(Z)V
    .locals 0

    .line 44
    sput-boolean p1, Lcom/innioasis/music/objects/Global;->restoreCompleted:Z

    return-void
.end method

.method public final setScanDeletedCount(I)V
    .locals 0

    .line 32
    sput p1, Lcom/innioasis/music/objects/Global;->scanDeletedCount:I

    return-void
.end method

.method public final setScanLock(Z)V
    .locals 0

    .line 45
    sput-boolean p1, Lcom/innioasis/music/objects/Global;->scanLock:Z

    return-void
.end method

.method public final setScanNewAddedCount(I)V
    .locals 0

    .line 33
    sput p1, Lcom/innioasis/music/objects/Global;->scanNewAddedCount:I

    return-void
.end method

.method public final setScanTotalCount(I)V
    .locals 0

    .line 31
    sput p1, Lcom/innioasis/music/objects/Global;->scanTotalCount:I

    return-void
.end method

.method public final setSdcardIsReady(Z)V
    .locals 3

    .line 20
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcardIsReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sput-boolean p1, Lcom/innioasis/music/objects/Global;->sdcardIsReady:Z

    return-void
.end method

.method public final setSearchKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sput-object p1, Lcom/innioasis/music/objects/Global;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public final setShutdownTime(I)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "shutdownTime"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    return-void
.end method
