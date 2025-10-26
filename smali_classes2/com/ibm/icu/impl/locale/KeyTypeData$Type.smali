.class Lcom/ibm/icu/impl/locale/KeyTypeData$Type;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Type"
.end annotation


# instance fields
.field bcpId:Ljava/lang/String;

.field legacyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    return-void
.end method
