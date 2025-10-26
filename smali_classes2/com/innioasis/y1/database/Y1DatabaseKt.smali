.class public final Lcom/innioasis/y1/database/Y1DatabaseKt;
.super Ljava/lang/Object;
.source "Y1Database.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "MIGRATION_1_2",
        "Landroidx/room/migration/Migration;",
        "getMIGRATION_1_2",
        "()Landroidx/room/migration/Migration;",
        "MIGRATION_2_3",
        "getMIGRATION_2_3",
        "app_frGeneralRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final MIGRATION_1_2:Landroidx/room/migration/Migration;

.field private static final MIGRATION_2_3:Landroidx/room/migration/Migration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/innioasis/y1/database/Y1DatabaseKt$MIGRATION_1_2$1;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1DatabaseKt$MIGRATION_1_2$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/innioasis/y1/database/Y1DatabaseKt;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    .line 48
    new-instance v0, Lcom/innioasis/y1/database/Y1DatabaseKt$MIGRATION_2_3$1;

    invoke-direct {v0}, Lcom/innioasis/y1/database/Y1DatabaseKt$MIGRATION_2_3$1;-><init>()V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/innioasis/y1/database/Y1DatabaseKt;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    return-void
.end method

.method public static final getMIGRATION_1_2()Landroidx/room/migration/Migration;
    .locals 1

    .line 40
    sget-object v0, Lcom/innioasis/y1/database/Y1DatabaseKt;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final getMIGRATION_2_3()Landroidx/room/migration/Migration;
    .locals 1

    .line 48
    sget-object v0, Lcom/innioasis/y1/database/Y1DatabaseKt;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    return-object v0
.end method
