.class public Lcom/ibm/icu/impl/number/Modifier$Parameters;
.super Ljava/lang/Object;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field public obj:Lcom/ibm/icu/impl/number/ModifierStore;

.field public plural:Lcom/ibm/icu/impl/StandardPlural;

.field public signum:Lcom/ibm/icu/impl/number/Modifier$Signum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
