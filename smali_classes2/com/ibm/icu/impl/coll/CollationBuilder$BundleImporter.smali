.class final Lcom/ibm/icu/impl/coll/CollationBuilder$BundleImporter;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BundleImporter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/ibm/icu/impl/coll/CollationLoader;->loadRules(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
