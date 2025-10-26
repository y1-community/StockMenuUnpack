.class public abstract Lcom/innioasis/y1_eBook/data/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/data/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "bookDao",
        "Lcom/innioasis/y1_eBook/data/database/daos/BookDao;",
        "eBookmarkDao",
        "Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;",
        "Companion",
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
.field public static final Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

.field private static volatile instance:Lcom/innioasis/y1_eBook/data/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/innioasis/y1_eBook/data/AppDatabase;
    .locals 1

    .line 12
    sget-object v0, Lcom/innioasis/y1_eBook/data/AppDatabase;->instance:Lcom/innioasis/y1_eBook/data/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/innioasis/y1_eBook/data/AppDatabase;)V
    .locals 0

    .line 12
    sput-object p0, Lcom/innioasis/y1_eBook/data/AppDatabase;->instance:Lcom/innioasis/y1_eBook/data/AppDatabase;

    return-void
.end method


# virtual methods
.method public abstract bookDao()Lcom/innioasis/y1_eBook/data/database/daos/BookDao;
.end method

.method public abstract eBookmarkDao()Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao;
.end method
