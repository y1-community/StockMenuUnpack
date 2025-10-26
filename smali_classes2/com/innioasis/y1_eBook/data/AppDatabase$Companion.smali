.class public final Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;
.super Ljava/lang/Object;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/data/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppDatabase.kt\ncom/innioasis/y1_eBook/data/AppDatabase$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/innioasis/y1_eBook/data/AppDatabase;",
        "getDatabase",
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDatabase(Landroid/content/Context;)Lcom/innioasis/y1_eBook/data/AppDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/innioasis/y1_eBook/data/AppDatabase;->access$getInstance$cp()Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/innioasis/y1_eBook/data/AppDatabase;->access$getInstance$cp()Lcom/innioasis/y1_eBook/data/AppDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/innioasis/y1_eBook/data/AppDatabase;

    const-string v1, "book_database.db"

    .line 29
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/innioasis/y1_eBook/data/AppDatabase;

    sget-object v1, Lcom/innioasis/y1_eBook/data/AppDatabase;->Companion:Lcom/innioasis/y1_eBook/data/AppDatabase$Companion;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/data/AppDatabase;->access$setInstance$cp(Lcom/innioasis/y1_eBook/data/AppDatabase;)V

    const-string v0, "databaseBuilder(\n       \u2026  .also { instance = it }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/innioasis/y1_eBook/data/AppDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 28
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
