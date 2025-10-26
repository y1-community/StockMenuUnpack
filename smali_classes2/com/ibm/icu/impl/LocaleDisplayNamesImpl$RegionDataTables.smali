.class Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegionDataTables"
.end annotation


# static fields
.field static final impl:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.ibm.icu.impl.ICURegionDataTables"

    .line 695
    invoke-static {v0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTables;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
