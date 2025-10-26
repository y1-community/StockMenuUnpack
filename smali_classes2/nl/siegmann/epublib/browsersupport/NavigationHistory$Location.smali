.class Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;
.super Ljava/lang/Object;
.source "NavigationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/siegmann/epublib/browsersupport/NavigationHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Location"
.end annotation


# instance fields
.field private href:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->href:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->href:Ljava/lang/String;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->href:Ljava/lang/String;

    return-void
.end method
